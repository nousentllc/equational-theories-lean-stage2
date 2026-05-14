# Agent briefing: hand-prove ARCF-Prover v0.9.2 residue cases

You are a sub-agent helping derive Lean 4 proofs for SAIR equational theory
residue cases. The local Lean judge is set up and verified working in this
sandbox.

## What "the problem" looks like

Each case has:
- `Hypothesis`: an equation `x = ... ◇ ...` with universally quantified
  magma variables. Available in your Lean context as `h : ∀ vars, eq`.
- `Goal`: another equation, which you must prove follows from h.
- `Answer`: `True` (you produce a proof) or `False` (you produce a
  finite-magma countermodel).

## Lean wrapper

Every proof file has this shape:

```lean
import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro <goal vars>
  <your proof here>
```

The judge bans `sorry`, `admit`, `dbg_trace`, `unsafe`, `#eval`, etc.
Allowed: `exact`, `have`, `congrArg`, `.symm`, `.trans`, `calc`, `rw`.

## Worked example: `true_2061_307`

- Hypothesis (Eq 2061): `x = ((x ◇ y) ◇ y) ◇ (x ◇ y)`
- Goal (Eq 307):       `x ◇ x = x ◇ (x ◇ x)`

The proof — note the structure of how `h` is applied with **composed
substitution terms**, and the two-hole `congrArg` to substitute one
derived lemma into multiple positions simultaneously:

```lean
import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x
  have A : x = ((x ◇ x) ◇ x) ◇ (x ◇ x) := h x x
  have L1_raw : (x ◇ x) ◇ x =
      ((((x ◇ x) ◇ x) ◇ (x ◇ x)) ◇ (x ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (x ◇ x)) :=
    h ((x ◇ x) ◇ x) (x ◇ x)
  have L1 : (x ◇ x) ◇ x = (x ◇ (x ◇ x)) ◇ x :=
    L1_raw.trans (congrArg (fun t => (t ◇ (x ◇ x)) ◇ t) A.symm)
  have C : x ◇ x = (((x ◇ x) ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x) := h (x ◇ x) x
  have E : x ◇ (x ◇ x) =
      (((x ◇ (x ◇ x)) ◇ x) ◇ x) ◇ ((x ◇ (x ◇ x)) ◇ x) :=
    h (x ◇ (x ◇ x)) x
  calc x ◇ x
      = (((x ◇ x) ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x) := C
    _ = (((x ◇ (x ◇ x)) ◇ x) ◇ x) ◇ ((x ◇ (x ◇ x)) ◇ x) :=
        congrArg (fun t => (t ◇ x) ◇ t) L1
    _ = x ◇ (x ◇ x) := E.symm
```

Key patterns:
1. `h s t` applies the hypothesis with `x := s`, `y := t`. Both `s` and
   `t` can be ARBITRARY composed terms, not just variables — this is
   what v0.6 misses.
2. To derive an intermediate lemma like L1, you apply h on a composed
   term then use `.symm` of another instance to collapse a subterm.
3. To substitute one derived equality at multiple positions
   simultaneously, use `congrArg (fun t => f(t, t, ...)) eq`.

## Workflow

1. Read `/sessions/jolly-upbeat-lamport/mnt/equational-theories-lean-stage2/claude_attempt/handproofs/true_2061_307.lean`
   for the example.
2. For your assigned case, derive the proof by analytical reasoning:
   - Try direct: does `h a b ...` match the goal for some substitution?
   - Try one-step rewrite: can you rewrite `goal.LHS` to `goal.RHS` via
     one h-instance + congrArg?
   - Try two-step: derive an intermediate lemma `L : s = t` from h,
     then use congrArg with L to close.
   - Look for "absorbing" identities: if h says `x = ... ◇ x`, then
     `... ◇ x = x` (the prefix is "left-absorbing" for x).
3. Write the proof to:
   `/sessions/jolly-upbeat-lamport/mnt/equational-theories-lean-stage2/claude_attempt/handproofs/<id>.lean`
4. Build the candidate JSON:
   ```bash
   cd /sessions/jolly-upbeat-lamport/mnt/equational-theories-lean-stage2
   python3 claude_attempt/verify/make_candidates.py
   ```
5. Verify with the local judge:
   ```bash
   export PATH="$HOME/.elan/bin:$PATH"
   export LEAN_BIN="$HOME/.elan/bin/lean"
   export LAKE_BIN="$HOME/.elan/bin/lake"
   python3 claude_attempt/verify/run_local.py <id>
   ```
6. The judge prints `[accepted]` on success. If it prints `incorrect` or
   `incomplete_proof`, iterate.
7. Report the final status of each case to the main agent.

## Time budget

You have ~5-15 minutes per case. If a case won't yield after that, mark
it as "not solved" with a brief note on what you tried, and move on.

## Strategic hints from prior solved cases

- `true_2942_5`: Goal `x = y ◇ x` (right projection). Trick: derive
  `(y ◇ (y ◇ x)) ◇ y = y` via `h y y y` then use `h y Byyy (y◇x)` to
  collapse.
- `true_1022_99`: Goal had structure `x = x ◇ ((x ◇ x) ◇ x)` while h
  said `x = x ◇ M(x, y)`. Trick: pick `y := M(x, x)` so `x ◇ y = x`
  collapses cleanly.
- `true_130_1759`: Goal `x = (y ◇ z) ◇ ((x ◇ y) ◇ x)`. Trick: use
  `h x (y ◇ z) w` for cleverly-chosen `w`, then use a second h-instance
  to supply the rewrite `(y ◇ z) ◇ w = x ◇ y`.

The common thread: the hypothesis has more "give" than v0.6 explores
because v0.6 only substitutes variables and `var ◇ var` terms. Allow
yourself substitutions like `h ((x ◇ y) ◇ x) y` or
`h x ((x ◇ (x ◇ x)) ◇ x)` — anything with depth ≤ 3.

## File locations

- handproofs (output): `/sessions/.../equational-theories-lean-stage2/claude_attempt/handproofs/<id>.lean`
- judge runner: `/sessions/.../equational-theories-lean-stage2/claude_attempt/verify/run_local.py`
- problem set: `/sessions/.../equational-theories-lean-stage2/examples/problems/sample_200.json`
- example proofs: `claude_attempt/handproofs/true_2061_307.lean`,
  `true_2942_5.lean`, `true_1022_99.lean`, `true_130_1759.lean`
