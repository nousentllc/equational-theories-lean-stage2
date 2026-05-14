#!/usr/bin/env python3
"""Aggressive search for false_1682_411.

Hypothesis (Eq 1682): forall x,y. (y * x) * ((x * x) * y) == x
Goal       (Eq 411):  forall x.   x * (x * (x * (x * x))) == x
"""
from __future__ import annotations

import itertools
import random
import sys
import time


def hyp_violates(table, n):
    for x in range(n):
        for y in range(n):
            yx = table[y * n + x]
            xx = table[x * n + x]
            xxy = table[xx * n + y]
            if table[yx * n + xxy] != x:
                return (x, y)
    return None


def hyp_holds(table, n):
    return hyp_violates(table, n) is None


def goal_holds(table, n):
    for x in range(n):
        xx = table[x * n + x]
        a1 = table[x * n + xx]
        a2 = table[x * n + a1]
        a3 = table[x * n + a2]
        if a3 != x:
            return False
    return True


def goal_violator(table, n):
    for x in range(n):
        xx = table[x * n + x]
        a1 = table[x * n + xx]
        a2 = table[x * n + a1]
        a3 = table[x * n + a2]
        if a3 != x:
            return x
    return None


def fmt(table, n):
    rows = [str(table[i * n:(i + 1) * n]).replace(" ", "") for i in range(n)]
    return "[" + ",".join(rows) + "]"


def backtrack_fin4(time_budget=180.0):
    n = 4
    cells = n * n
    table = [-1] * cells
    start = time.time()
    deadline = start + time_budget
    counter = [0]
    found = [None]

    all_pairs = [(x, y) for x in range(n) for y in range(n)]

    def check_after_fill(pos):
        # For speed, only check constraints whose all 4 cells are now filled.
        # Constraint (x,y) involves cells: (y,x), (x,x), (x*x, y), (y*x, x*x*y)
        for x, y in all_pairs:
            xx_i = x * n + x
            yx_i = y * n + x
            if table[xx_i] == -1 or table[yx_i] == -1:
                continue
            xx = table[xx_i]
            yx = table[yx_i]
            xxy_i = xx * n + y
            if table[xxy_i] == -1:
                continue
            xxy = table[xxy_i]
            final_i = yx * n + xxy
            if table[final_i] == -1:
                continue
            if table[final_i] != x:
                return False
        return True

    def recurse(pos):
        if found[0] is not None:
            return
        counter[0] += 1
        if counter[0] & 0xFFFFF == 0 and time.time() > deadline:
            return
        if pos == cells:
            if not goal_holds(table, n):
                found[0] = table[:]
            return
        for v in range(n):
            table[pos] = v
            if check_after_fill(pos):
                recurse(pos + 1)
                if found[0] is not None:
                    return
        table[pos] = -1

    recurse(0)
    return found[0], counter[0], time.time() - start


def randomized_fin5_long(seed, time_budget, log=False):
    n = 5
    cells = n * n
    rng = random.Random(seed)
    start = time.time()
    hyp_sat_count = 0
    while time.time() - start < time_budget:
        table = [rng.randrange(n) for _ in range(cells)]
        def score():
            s = 0
            for x in range(n):
                for y in range(n):
                    yx = table[y * n + x]
                    xx = table[x * n + x]
                    xxy = table[xx * n + y]
                    if table[yx * n + xxy] == x:
                        s += 1
            return s
        cur = score()
        improved = True
        while improved and time.time() - start < time_budget:
            improved = False
            for cell in rng.sample(range(cells), cells):
                old = table[cell]
                best_v = old
                best_s = cur
                for v in range(n):
                    if v == old:
                        continue
                    table[cell] = v
                    s = score()
                    if s > best_s:
                        best_s = s
                        best_v = v
                table[cell] = best_v
                if best_v != old:
                    cur = best_s
                    improved = True
            if cur == n * n:
                hyp_sat_count += 1
                if not goal_holds(table, n):
                    return table, n, hyp_sat_count
                # Perturb-restart
                for kick in range(30):
                    saved = table[:]
                    for _ in range(rng.randint(1, 3)):
                        c = rng.randrange(cells)
                        table[c] = rng.randrange(n)
                    if hyp_holds(table, n) and not goal_holds(table, n):
                        return table, n, hyp_sat_count
                    table = saved
                break
    if log:
        print(f"  fin5 hill-climb: hyp-sat seen={hyp_sat_count}")
    return None


def main():
    t0 = time.time()
    print("Phase A: Fin 4 BACKTRACK with constraint propagation...")
    res, cnt, dt = backtrack_fin4(time_budget=170.0)
    print(f"  backtrack examined {cnt:,} nodes in {dt:.1f}s")
    if res:
        print(f"FOUND Fin 4 via backtrack: {fmt(res, 4)}")
        assert hyp_holds(res, 4)
        assert not goal_holds(res, 4)
        x = goal_violator(res, 4)
        print(f"  violates goal at x={x}")
        with open("/tmp/false_1682_411_table.txt", "w") as f:
            f.write(f"n=4\n{fmt(res,4)}\n")
        return

    print("Phase C: randomized Fin 5 hill-climb (180s)...")
    res = randomized_fin5_long(seed=int(time.time()) % 100000, time_budget=180.0, log=True)
    if res:
        table, n, hc = res
        print(f"FOUND Fin 5 hill-climb: {fmt(table, n)}")
        x = goal_violator(table, n)
        print(f"  violates goal at x={x}")
        with open("/tmp/false_1682_411_table.txt", "w") as f:
            f.write(f"n={n}\n{fmt(table,n)}\n")
        return

    print("no hit total time", time.time() - t0)


if __name__ == "__main__":
    main()
