#!/usr/bin/env python3
"""Faster countermodel search for false_1682_411.

Hypothesis: x = (y ◇ x) ◇ ((x ◇ x) ◇ y)
Goal:       x = x ◇ (x ◇ (x ◇ (x ◇ x)))

Strategy:
1. Exhaustive Fin 2, Fin 3 (fast).
2. Aggressive structured-table search for Fin 4..6 (affine, polynomial, ad hoc).
3. Random Fin 4 with fast early-reject.
4. Random Fin 5 with hypothesis-aware repair.

The key trick for hypothesis satisfaction: for a magma to satisfy
    (y ◇ x) ◇ ((x ◇ x) ◇ y) = x
for all x, y, the diagonal (x ◇ x) and the column-x function y ↦ y ◇ x
must conspire to recover x. This rules out most random magmas quickly.
"""
from __future__ import annotations

import itertools
import random
import sys
import time


def hyp_holds(table, n):
    op = table.__getitem__
    for x in range(n):
        for y in range(n):
            yx = op(y * n + x)
            xx = op(x * n + x)
            xxy = op(xx * n + y)
            if op(yx * n + xxy) != x:
                return False
    return True


def goal_holds(table, n):
    op = table.__getitem__
    for x in range(n):
        xx = op(x * n + x)
        a1 = op(x * n + xx)
        a2 = op(x * n + a1)
        a3 = op(x * n + a2)
        if a3 != x:
            return False
    return True


def fmt(table, n):
    rows = [str(table[i * n:(i + 1) * n]).replace(" ", "") for i in range(n)]
    return "[" + ",".join(rows) + "]"


def exhaustive(n, limit_seconds=60.0):
    """Enumerate every Fin n table."""
    start = time.time()
    for idx, cells in enumerate(itertools.product(range(n), repeat=n * n)):
        if idx % 1_000_000 == 0 and time.time() - start > limit_seconds:
            return None, idx
        table = list(cells)
        if hyp_holds(table, n) and not goal_holds(table, n):
            return (n, table), idx
    return None, None


def structured_search(max_n=8):
    """Try modular/affine/polynomial tables and report hits."""
    for n in range(2, max_n + 1):
        candidates = []
        # affine ax+by+c mod n
        for a in range(n):
            for b in range(n):
                for c in range(n):
                    table = [(a * i + b * j + c) % n for i in range(n) for j in range(n)]
                    candidates.append((f"affine[{a},{b},{c}]", table))
        # quadratic
        for a in range(n):
            for b in range(n):
                for c in range(n):
                    for d in range(n):
                        if a == 0 and b == 0 and c == 0 and d == 0:
                            continue
                        table = [(a * i + b * j + c * i * j + d) % n for i in range(n) for j in range(n)]
                        candidates.append((f"quad[{a},{b},{c},{d}]", table))
        for name, table in candidates:
            if hyp_holds(table, n) and not goal_holds(table, n):
                return n, name, table
    return None


def random_search(n, seed=2026, iters=1_000_000, limit_seconds=120.0):
    rng = random.Random(seed)
    cells = n * n
    start = time.time()
    for it in range(iters):
        if it % 10000 == 0 and time.time() - start > limit_seconds:
            return None
        table = [rng.randrange(n) for _ in range(cells)]
        if not hyp_holds(table, n):
            # Quick repair: try changing one diagonal entry
            continue
        if not goal_holds(table, n):
            return (n, table)
    return None


def random_repair_search(n, seed=2026, iters=200, limit_seconds=120.0):
    """Random restart + local search."""
    rng = random.Random(seed)
    cells = n * n
    start = time.time()
    for trial in range(iters):
        if time.time() - start > limit_seconds:
            return None
        table = [rng.randrange(n) for _ in range(cells)]
        improved = True
        while improved:
            improved = False
            # Try toggling each cell
            for cell in rng.sample(range(cells), cells):
                old = table[cell]
                best_v = old
                best_score = -1
                for v in range(n):
                    table[cell] = v
                    # Count satisfied hypothesis constraints
                    sat = 0
                    for x in range(n):
                        for y in range(n):
                            yx = table[y * n + x]
                            xx = table[x * n + x]
                            xxy = table[xx * n + y]
                            if table[yx * n + xxy] == x:
                                sat += 1
                    if sat > best_score:
                        best_score = sat
                        best_v = v
                table[cell] = best_v
                if best_v != old:
                    improved = True
            if best_score == n * n:
                # Hyp satisfied
                if not goal_holds(table, n):
                    return (n, table)
                else:
                    # break and try another random init
                    break
    return None


def main():
    print("Phase A: structured search...")
    res = structured_search(max_n=8)
    if res:
        n, name, table = res
        print(f"FOUND structured n={n} ({name}): {fmt(table, n)}")
        return

    print("Phase B: exhaustive Fin 3 (19683 tables)...")
    res, idx = exhaustive(3, limit_seconds=15)
    if res:
        n, table = res
        print(f"FOUND Fin 3: {fmt(table, n)}")
        return
    print("  done, no Fin 3 countermodel.")

    print("Phase C: randomized Fin 4 repair search (60s)...")
    res = random_repair_search(4, seed=2026, iters=400, limit_seconds=60)
    if res:
        n, table = res
        print(f"FOUND Fin 4 (repair): {fmt(table, n)}")
        return

    print("Phase D: exhaustive Fin 4 (4 billion tables) -- partial, 60s slice...")
    res, idx = exhaustive(4, limit_seconds=60)
    if res:
        n, table = res
        print(f"FOUND Fin 4: {fmt(table, n)}")
        return
    print(f"  Fin 4 partial scan: examined ~{idx:,} tables, no hit.")

    print("Phase E: randomized Fin 5 repair (60s)...")
    res = random_repair_search(5, seed=2026, iters=200, limit_seconds=60)
    if res:
        n, table = res
        print(f"FOUND Fin 5 (repair): {fmt(table, n)}")
        return

    print("no countermodel found in budget")


if __name__ == "__main__":
    main()
