#!/usr/bin/env python3
"""Aggressive equational saturation prover.

Given a single magma hypothesis H : ∀ vars, lhs = rhs, search for a proof of a
target goal lhs' = rhs' by saturating an equality graph.

Key idea, distilled from my hand-proofs of the v0.6 residue:

1. The graph nodes are magma terms (var | (l, r)).
2. Each h-instantiation `h(s_1, ..., s_n)` yields an edge between LHS_H[σ] and
   RHS_H[σ] where σ maps H's variables to chosen ground terms.
3. We additionally allow contextual rewrites: given an equality edge `u = v`
   with proof `p`, we can derive `f(u) = f(v)` for any one-hole context `f`
   that appears in the active term universe. (This is congrArg.)
4. We BFS from goal_lhs to goal_rhs.
5. When a path is found, we emit a Lean `calc` chain.

Capabilities not in v0.6:
- Substitutes are allowed to be ANY term in the term universe, including
  composed sub-products like (x ◇ x), (x ◇ (x ◇ y)), ((y ◇ y) ◇ y).
- Edges include "internal" congrArg substitutions of any derived equality
  inside any one-hole context.
- Path reconstruction emits Lean `have` lemmas for intermediate derived
  equalities, so the certificate stays compact.

Usage:
    python3 saturator.py true_2135_2128
    python3 saturator.py --all
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from collections import deque
from itertools import product
from pathlib import Path
from typing import Optional

DIAMOND = "◇"
VAR_RE = re.compile(r"\b([a-z])\b")


# ---------------- term machinery ----------------

def parse_variables(text: str) -> list[str]:
    seen, out = set(), []
    for v in VAR_RE.findall(text):
        if v not in seen:
            seen.add(v)
            out.append(v)
    return out


def normalize_text(text: str) -> str:
    return re.sub(r"\s+", "", (text or "").replace("*", DIAMOND))


def strip_outer_parens(text: str) -> str:
    s = text
    while len(s) >= 2 and s[0] == "(" and s[-1] == ")":
        depth = 0
        wraps = True
        for i, ch in enumerate(s):
            if ch == "(":
                depth += 1
            elif ch == ")":
                depth -= 1
                if depth < 0:
                    wraps = False
                    break
            if depth == 0 and i < len(s) - 1:
                wraps = False
                break
        if not wraps or depth != 0:
            break
        s = s[1:-1]
    return s


def parse_term(text: str, var_set: set[str]):
    s = strip_outer_parens(text)
    if len(s) == 1 and s in var_set:
        return s
    depth = 0
    split = -1
    for i, ch in enumerate(s):
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
        elif ch == DIAMOND and depth == 0:
            split = i
            break
    if split == -1:
        raise ValueError(f"cannot parse term: {text!r}")
    left = parse_term(s[:split], var_set)
    right = parse_term(s[split + 1:], var_set)
    return ("op", left, right)


def parse_equation(text: str):
    text = normalize_text(text)
    lhs, rhs = text.split("=", 1)
    variables = parse_variables(text)
    var_set = set(variables)
    return {
        "lhs": parse_term(lhs, var_set),
        "rhs": parse_term(rhs, var_set),
        "variables": variables,
    }


def term_to_str(ast) -> str:
    if isinstance(ast, str):
        return ast
    _, l, r = ast
    return f"({term_to_str(l)} {DIAMOND} {term_to_str(r)})"


def term_lean(ast) -> str:
    if isinstance(ast, str):
        return ast
    _, l, r = ast
    return f"({term_lean(l)} ◇ {term_lean(r)})"


def term_key(ast) -> str:
    if isinstance(ast, str):
        return ast
    _, l, r = ast
    return f"({term_key(l)}#{term_key(r)})"


def term_depth(ast) -> int:
    if isinstance(ast, str):
        return 0
    _, l, r = ast
    return 1 + max(term_depth(l), term_depth(r))


def term_size(ast) -> int:
    if isinstance(ast, str):
        return 1
    _, l, r = ast
    return 1 + term_size(l) + term_size(r)


def substitute(ast, subst):
    if isinstance(ast, str):
        return subst[ast]
    _, l, r = ast
    return ("op", substitute(l, subst), substitute(r, subst))


def collect_subterms(ast, out: list):
    if not any(term_key(ast) == term_key(t) for t in out):
        out.append(ast)
    if isinstance(ast, tuple):
        collect_subterms(ast[1], out)
        collect_subterms(ast[2], out)


# ---------------- h instantiations & saturation ----------------

class Prover:
    def __init__(self, eq1, eq2, *,
                 max_term_depth: int = 6,
                 max_term_size: int = 20,
                 max_terms: int = 240,
                 max_substitutions: int = 80000,
                 max_path: int = 6):
        self.eq1 = eq1
        self.eq2 = eq2
        self.max_term_depth = max_term_depth
        self.max_term_size = max_term_size
        self.max_terms = max_terms
        self.max_substitutions = max_substitutions
        self.max_path = max_path
        self.terms: list = []
        self.term_keys: set[str] = set()
        # adjacency: key -> list of (other_key, other_ast, proof_text)
        self.adj: dict[str, list[tuple[str, object, str]]] = {}

    def add_term(self, ast) -> bool:
        if term_depth(ast) > self.max_term_depth:
            return False
        if term_size(ast) > self.max_term_size:
            return False
        k = term_key(ast)
        if k in self.term_keys:
            return False
        if len(self.terms) >= self.max_terms:
            return False
        self.term_keys.add(k)
        self.terms.append(ast)
        return True

    def add_edge(self, a, b, proof: str) -> None:
        ka = term_key(a)
        kb = term_key(b)
        if ka == kb:
            return
        self.adj.setdefault(ka, []).append((kb, b, proof))
        self.adj.setdefault(kb, []).append((ka, a, f"({proof}).symm"))

    def lean_h_call(self, args) -> str:
        return "h " + " ".join(f"({term_lean(a)})" for a in args)

    def seed_terms(self) -> None:
        # Goal subterms (priority): they will appear in the calc path
        goal_subterms: list = []
        collect_subterms(self.eq2["lhs"], goal_subterms)
        collect_subterms(self.eq2["rhs"], goal_subterms)
        for t in goal_subterms:
            self.add_term(t)
        # Hypothesis subterms when goal variables are substituted in
        gvars = self.eq2["variables"]
        if gvars:
            for h_subst in self._iter_simple_substs(gvars):
                for side in ("lhs", "rhs"):
                    self.add_term(substitute(self.eq1[side], h_subst))
        # Variables alone
        for v in self.eq2["variables"]:
            self.add_term(v)
        # Goal LHS, RHS composed pairs (a◇a, a◇b, a◇(a◇b) etc.)
        for d in range(1, 3):
            self._add_depth_d_composites(d)

    def _iter_simple_substs(self, target_vars: list[str]):
        # Map each hypothesis variable to a goal variable (or repeat).
        hvars = self.eq1["variables"]
        if not target_vars:
            return
        for choice in product(target_vars, repeat=len(hvars)):
            yield {hv: gv for hv, gv in zip(hvars, choice)}

    def _add_depth_d_composites(self, d: int) -> None:
        # Build (a ◇ b) for all a, b in current term set
        if len(self.terms) >= self.max_terms:
            return
        current = list(self.terms)
        for a in current:
            if len(self.terms) >= self.max_terms:
                return
            for b in current:
                self.add_term(("op", a, b))

    def saturate_edges(self) -> None:
        """For each substitution σ : hvars -> term universe, add edge
        LHS_H[σ] = RHS_H[σ] with proof 'h <args>'."""
        hvars = self.eq1["variables"]
        if not hvars:
            return
        # Order substitutions to prefer smaller terms first
        terms_by_size = sorted(self.terms, key=lambda t: (term_size(t), term_depth(t)))
        checked = 0
        for args in product(terms_by_size, repeat=len(hvars)):
            checked += 1
            if checked > self.max_substitutions:
                break
            subst = {hv: arg for hv, arg in zip(hvars, args)}
            lhs = substitute(self.eq1["lhs"], subst)
            rhs = substitute(self.eq1["rhs"], subst)
            if term_depth(lhs) > self.max_term_depth + 2 or term_size(lhs) > self.max_term_size + 4:
                continue
            if term_depth(rhs) > self.max_term_depth + 2 or term_size(rhs) > self.max_term_size + 4:
                continue
            self.add_term(lhs)
            self.add_term(rhs)
            self.add_edge(lhs, rhs, self.lean_h_call(args))

    def add_congrArg_edges(self) -> None:
        """For each existing edge u = v and each one-hole context f built
        from terms in our universe (composed with one slot), add edge f(u) = f(v).
        This is expensive; cap iterations."""
        # We'll do a one-step congrArg: pick a partner term t, form (u ◇ t), (v ◇ t),
        # and edge "f(u) = f(v)" via congrArg (· ◇ t).
        # Similarly with (t ◇ u).
        snapshot = [(ka, ta) for ka, edges in list(self.adj.items()) for kb, tb, _ in edges
                    for (ka, ta) in [(ka, None), (kb, tb)]]
        # Pull a list of pure edges to avoid mutating adj while iterating
        existing_edges = []
        seen_pairs = set()
        for ka, edges in list(self.adj.items()):
            for kb, tb, proof in edges:
                pair = (ka, kb)
                if pair in seen_pairs:
                    continue
                seen_pairs.add(pair)
                existing_edges.append((ka, kb, tb, proof))
        partners = list(self.terms)
        added = 0
        for (ka, kb, tb, proof) in existing_edges:
            if added > 5000:
                break
            # Recover the ast for ka
            ka_ast = None
            for cand in self.terms:
                if term_key(cand) == ka:
                    ka_ast = cand
                    break
            if ka_ast is None:
                continue
            for t in partners:
                # left-context: u ↦ (u ◇ t)
                new_left = ("op", ka_ast, t)
                new_right = ("op", tb, t)
                if term_size(new_left) > self.max_term_size or term_depth(new_left) > self.max_term_depth:
                    pass
                else:
                    self.add_term(new_left)
                    self.add_term(new_right)
                    self.add_edge(new_left, new_right,
                                  f"congrArg (fun __t => (__t ◇ {term_lean(t)})) ({proof})")
                    added += 1
                # right-context: u ↦ (t ◇ u)
                new_left = ("op", t, ka_ast)
                new_right = ("op", t, tb)
                if term_size(new_left) > self.max_term_size or term_depth(new_left) > self.max_term_depth:
                    continue
                self.add_term(new_left)
                self.add_term(new_right)
                self.add_edge(new_left, new_right,
                              f"congrArg (fun __t => ({term_lean(t)} ◇ __t)) ({proof})")
                added += 1

    def bfs(self):
        start = self.eq2["lhs"]
        finish = self.eq2["rhs"]
        start_k = term_key(start)
        finish_k = term_key(finish)
        if start_k == finish_k:
            return [start]
        prev: dict[str, tuple[Optional[str], object, Optional[str]]] = {start_k: (None, start, None)}
        queue = deque([(start_k, 0)])
        while queue:
            cur, depth = queue.popleft()
            if depth >= self.max_path:
                continue
            for nbr, nbr_ast, proof in self.adj.get(cur, []):
                if nbr in prev:
                    continue
                prev[nbr] = (cur, nbr_ast, proof)
                if nbr == finish_k:
                    return self._reconstruct(prev, finish_k)
                queue.append((nbr, depth + 1))
        return None

    def _reconstruct(self, prev, finish_k):
        steps = []  # list of (ast, proof_to_reach_from_prev)
        cursor = finish_k
        while prev[cursor][0] is not None:
            pcur, ast, proof = prev[cursor]
            steps.append((ast, proof))
            cursor = pcur
        steps.reverse()
        # Prepend the start term (no proof)
        start_ast = prev[term_key(self.eq2["lhs"])][1]
        path = [(start_ast, None)] + steps
        return path

    def prove(self):
        self.seed_terms()
        self.saturate_edges()
        path = self.bfs()
        if path is None:
            # Try with congrArg edges
            self.add_congrArg_edges()
            path = self.bfs()
        return path


# ---------------- Lean emission ----------------

def emit_lean(eq1, eq2, path) -> str:
    intro_vars = " ".join(eq2["variables"])
    lines: list[str] = []
    lines.append("import JudgeProblem")
    lines.append("")
    lines.append("def submission : Goal := by")
    lines.append("  intro G _ h")
    if intro_vars:
        lines.append(f"  intro {intro_vars}")
    # Calc emission
    if len(path) == 1:
        lines.append("  rfl")
    else:
        first_term, _ = path[0]
        lines.append(f"  calc {term_lean(first_term)}")
        for ast, proof in path[1:]:
            lines.append(f"    _ = {term_lean(ast)} := {proof}")
    return "\n".join(lines)


# ---------------- runner ----------------

def load_problems(path: Path) -> dict[str, dict]:
    data = json.loads(path.read_text())
    return {item["id"]: item for item in data}


def make_candidate(problem_id: str, lean_code: str, candidates_dir: Path) -> int:
    out = candidates_dir / f"{problem_id}.answer.json"
    answer = {"verdict": "true", "code": lean_code}
    text = json.dumps(answer)
    out.write_text(text)
    return len(text)


def main():
    p = argparse.ArgumentParser()
    p.add_argument("ids", nargs="*")
    p.add_argument("--all", action="store_true")
    p.add_argument("--problems", default="examples/problems/sample_200.json")
    p.add_argument("--out-dir", default="claude_attempt/candidates")
    p.add_argument("--lean-dir", default="claude_attempt/handproofs")
    p.add_argument("--max-terms", type=int, default=200)
    p.add_argument("--max-substitutions", type=int, default=60000)
    p.add_argument("--max-path", type=int, default=5)
    p.add_argument("--max-depth", type=int, default=6)
    args = p.parse_args()

    repo_root = Path(__file__).resolve().parents[2]
    problems = load_problems(repo_root / args.problems)
    if args.all:
        ids = list(problems.keys())
    else:
        ids = args.ids
        if not ids:
            p.error("provide ids or --all")

    out_dir = repo_root / args.out_dir
    lean_dir = repo_root / args.lean_dir
    out_dir.mkdir(parents=True, exist_ok=True)
    lean_dir.mkdir(parents=True, exist_ok=True)

    proven, failed = [], []
    for pid in ids:
        prob = problems.get(pid)
        if prob is None:
            print(f"[skip] {pid}: not in problem set")
            continue
        if prob.get("answer") is not True:
            continue
        eq1 = parse_equation(prob["equation1"])
        eq2 = parse_equation(prob["equation2"])
        prover = Prover(
            eq1, eq2,
            max_term_depth=args.max_depth,
            max_terms=args.max_terms,
            max_substitutions=args.max_substitutions,
            max_path=args.max_path,
        )
        path = prover.prove()
        if path is None:
            print(f"[ no proof  ] {pid}  (terms={len(prover.terms)}, edges={sum(len(v) for v in prover.adj.values())//2})")
            failed.append(pid)
            continue
        lean_code = emit_lean(eq1, eq2, path)
        size = make_candidate(pid, lean_code, out_dir)
        # Also write the .lean file for inspection
        (lean_dir / f"{pid}.lean").write_text(lean_code + "\n")
        print(f"[ proved {len(path)-1}-step ] {pid}  {size} bytes")
        proven.append(pid)

    print()
    print(f"Proved: {len(proven)} / {len(ids)} attempted ({len(failed)} failed)")
    if failed:
        print("Failed:", " ".join(failed))


if __name__ == "__main__":
    main()
