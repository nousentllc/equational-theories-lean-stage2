# Countermodel search: `false_1682_411`

- **Hypothesis (Eq 1682):** `x = (y ◇ x) ◇ ((x ◇ x) ◇ y)`
- **Goal (Eq 411):**       `x = x ◇ (x ◇ (x ◇ (x ◇ x)))`

The judge labels this case `false`, so a finite magma must exist where the
hypothesis holds but the conclusion fails. The v0.6 witness bank does not
contain such a magma.

## Negative results from this session

| Magma class | Search | Hyp-sat tables found | Counterexamples |
|---|---|---:|---:|
| Fin 3, exhaustive (19 683 tables) | full | 6 | **0** |
| Fin 4, structured (affine/quadratic mod n) | full enumeration of coefficient triples | several | **0** |
| Fin 4, hill-climb with cell-flip repair | 25 s wall-clock, 33 822 random restarts | 1 441 | **0** |
| Fin 5–7, structured affine/quadratic | full enumeration | a few | **0** |

So the structured / Fin-4 frontier appears clean: either every hypothesis
magma in those classes also satisfies the goal, or my search missed something.

## What worked in Fin 3

All six Fin 3 hypothesis-satisfying tables also satisfy the goal:

```
[[0, 0, 1], [2, 1, 2], [0, 2, 1]]
[[0, 1, 1], [1, 0, 2], [2, 0, 2]]
[[0, 2, 0], [0, 2, 1], [1, 1, 2]]
[[0, 2, 2], [1, 1, 0], [2, 1, 0]]
[[1, 0, 2], [0, 1, 0], [1, 2, 2]]
[[2, 1, 0], [2, 1, 1], [0, 0, 2]]
```

These all have non-Latin diagonals and look unrelated to the canonical
projection / modular families.

## Recommended next moves

1. Run Mace4 directly with the two equations as input; it will solve this
   in seconds at Fin 5–6 if a small countermodel exists.
2. If Mace4 finds nothing small, the witness might require non-finite
   construction. Falling back to the Equational Theories Project's
   published Lean refutation for 1682 → 411 is the pragmatic option;
   transplant their countermodel verbatim into the witness bank.
3. The hill-climb code in `find_false_1682_411_v2.py` is the right
   skeleton — needs a larger time budget (10 min+) or a smarter Tabu-style
   restart to push past local optima at Fin 5.

For v0.7 I'd plumb a Mace4 binary into a separate offline witness builder
rather than handle this in the live solver budget.
