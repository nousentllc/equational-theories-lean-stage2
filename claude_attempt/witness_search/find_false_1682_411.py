#!/usr/bin/env python3
"""Search for a finite-magma countermodel to false_1682_411.

Problem:
  Hypothesis: x = (y ◇ x) ◇ ((x ◇ x) ◇ y)
  Goal:       x = x ◇ (x ◇ (x ◇ (x ◇ x)))

We want a magma M such that M satisfies hypothesis but violates goal.

The v0.6 candidate engine missed this case. The hypothesis has 5 variable
occurrences and a strict shape — random small magmas typically violate it.
We do exhaustive search for n in {3, 4, 5} and report any candidate that
satisfies the hypothesis and violates the goal.

Note: full n=5 search has 5^25 = 2.98e17 tables, infeasible. We instead use a
structured search: try left projections, right projections, modular adds,
Boolean-like ops, and bounded random tables. If those fail we fall back to
DPLL-style search with hypothesis-driven constraint propagation.
"""
from __future__ import annotations

import itertools
import random
import sys
from typing import Iterable


# ---------- term evaluators (specialized) ----------

def hyp_holds(table, n):
    """Check ∀ x y, x == (y ◇ x) ◇ ((x ◇ x) ◇ y)."""
    op = lambda a, b: table[a * n + b]
    for x in range(n):
        for y in range(n):
            yx = op(y, x)
            xx = op(x, x)
            xxy = op(xx, y)
            rhs = op(yx, xxy)
            if x != rhs:
                return False
    return True


def goal_violated(table, n):
    """Does ∃ x such that x != x ◇ (x ◇ (x ◇ (x ◇ x)))?"""
    op = lambda a, b: table[a * n + b]
    for x in range(n):
        xx = op(x, x)
        xxx = op(x, xx)
        xxxx = op(x, xxx)
        rhs = op(x, xxxx)
        if x != rhs:
            return True
    return False


def goal_holds(table, n):
    return not goal_violated(table, n)


# ---------- structured candidates ----------

def structured_tables(n: int):
    """Yield structured tables to try first."""
    # Right projection (y◇x = x): table[i*n+j] = j
    yield [j for i in range(n) for j in range(n)]
    # Left projection (y◇x = y): table[i*n+j] = i
    yield [i for i in range(n) for j in range(n)]
    # Constant 0
    yield [0] * (n * n)
    # Mod-add
    yield [(i + j) % n for i in range(n) for j in range(n)]
    # Mod-add+1
    yield [(i + j + 1) % n for i in range(n) for j in range(n)]
    # Mod-sub
    yield [(i - j) % n for i in range(n) for j in range(n)]
    # Mod-mult
    yield [(i * j) % n for i in range(n) for j in range(n)]
    # j-mod
    yield [(j) % n for i in range(n) for j in range(n)]
    # XOR-like
    yield [(i ^ j) % n for i in range(n) for j in range(n)]
    # Bool-AND
    yield [(i & j) % n for i in range(n) for j in range(n)]
    # Affine ax+by
    for a, b in itertools.product(range(n), repeat=2):
        yield [(a * i + b * j) % n for i in range(n) for j in range(n)]
    # Affine ax+by+c
    for a, b, c in itertools.product(range(n), repeat=3):
        yield [(a * i + b * j + c) % n for i in range(n) for j in range(n)]
    # Polynomial in (i + j) mod n
    for cs in itertools.product(range(n), repeat=3):
        yield [(cs[0] + cs[1] * (i + j) + cs[2] * (i * j)) % n for i in range(n) for j in range(n)]


def table_str(table, n):
    return str([table[i * n:(i + 1) * n] for i in range(n)]).replace(" ", "")


def search_structured(max_n: int = 6):
    seen = set()
    for n in range(2, max_n + 1):
        for table in structured_tables(n):
            key = (n, tuple(table))
            if key in seen:
                continue
            seen.add(key)
            if hyp_holds(table, n) and goal_violated(table, n):
                return n, table
    return None


# ---------- exhaustive search for small n ----------

def exhaustive(n: int, max_tables: int = 0):
    """Enumerate every Fin n table. Only feasible for n <= 4."""
    count = 0
    for cells in itertools.product(range(n), repeat=n * n):
        count += 1
        if max_tables and count > max_tables:
            return None
        table = list(cells)
        if hyp_holds(table, n) and goal_violated(table, n):
            return n, table
    return None


# ---------- DPLL-style constraint solver ----------

def solve_constrained(n: int, time_budget_iters: int = 5_000_000):
    """Greedy/random search with constraint propagation.

    The hypothesis gives n^2 equations of the form
        x = (y ◇ x) ◇ ((x ◇ x) ◇ y)
    over n^2 unknowns table[i*n+j]. We do random restarts and follow
    hypothesis-driven inferences when possible.
    """
    cells = n * n
    rng = random.Random(2026)
    iters = 0
    while iters < time_budget_iters:
        iters += 1
        table = [rng.randrange(n) for _ in range(cells)]
        # Local repair: for each (x, y) where hypothesis fails, attempt to
        # change a single cell to fix it. Up to 200 repairs per random init.
        repairs = 0
        while repairs < 200:
            bad = None
            op = lambda a, b: table[a * n + b]
            for x in range(n):
                for y in range(n):
                    rhs = op(op(y, x), op(op(x, x), y))
                    if rhs != x:
                        bad = (x, y, rhs)
                        break
                if bad:
                    break
            if not bad:
                break
            x, y, _ = bad
            # Try changing each cell that participates in this constraint
            participants = {y * n + x, x * n + x, x * n + y}
            yx = op(y, x)
            xx = op(x, x)
            xxy = op(xx, y)
            participants.add(yx * n + xxy)
            cell_choice = rng.choice(list(participants))
            old = table[cell_choice]
            for v in rng.sample(range(n), n):
                if v == old:
                    continue
                table[cell_choice] = v
                # Quick: did we break some prior constraint? Just continue, full loop will check
                break
            repairs += 1
        if hyp_holds(table, n) and goal_violated(table, n):
            return n, table
    return None


# ---------- main ----------

def main():
    args = sys.argv[1:]
    if args and args[0] == "--exhaustive":
        n = int(args[1]) if len(args) > 1 else 3
        print(f"Exhaustive Fin {n} ({n**(n*n):,} tables)...")
        res = exhaustive(n)
        if res:
            print(f"FOUND n={res[0]}: {table_str(res[1], res[0])}")
        else:
            print("no solution found")
        return

    print("Phase 1: structured candidates up to n=6...")
    res = search_structured(max_n=6)
    if res:
        n, table = res
        print(f"FOUND structured n={n}: {table_str(table, n)}")
        return

    print("Phase 2: exhaustive n=3...")
    res = exhaustive(3)
    if res:
        n, table = res
        print(f"FOUND n=3: {table_str(table, n)}")
        return

    print("Phase 3: exhaustive n=4 (this may take a few minutes)...")
    res = exhaustive(4)
    if res:
        n, table = res
        print(f"FOUND n=4: {table_str(table, n)}")
        return

    print("Phase 4: randomized n=5...")
    res = solve_constrained(5, time_budget_iters=200_000)
    if res:
        n, table = res
        print(f"FOUND n=5: {table_str(table, n)}")
        return

    print("no countermodel found in budget")


if __name__ == "__main__":
    main()
