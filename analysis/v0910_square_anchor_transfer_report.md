# v0.9.10 Square-Anchor Transfer Report

## Inputs
- current: `pipeline/results/arcf_sample200_v0910.json`
- prior_best: `pipeline/results/arcf_sample200_v099.json`
- problems: `examples/problems/sample_200.json`
- solver: `submissions/arcf_prover/solver.py`
- prior_residue_study: `analysis/local_theory_residue_study_v099.json`

## Summary
| run | accepted | true | false | no_judge_attempt | judge_errors |
|---|---:|---:|---:|---:|---:|
| prior best v0.9.9 | 182 | 83 | 99 | 18 | 0 |
| v0.9.10 | 183 | 84 | 99 | 17 | 0 |

- Newly solved: `true_1604_1822`
- Regressions: `none`
- `false_1682_411` remains separate; no targeted countermodel search was run for this report.

## true_1604_1822 Proof Motif
Hypothesis: `x = (y ◇ z) ◇ (w ◇ (x ◇ y))`

Goal: `x = (y ◇ z) ◇ ((w ◇ w) ◇ y)`

| local item | statement | role |
|---|---|---|
| `idem` | `∀ (a : G), a ◇ a = a` | normalizes square anchors and supplies a tail replacement inside squareTailErase. |
| `absorbL` | `∀ (a b : G), (a ◇ b) ◇ a = a` | collapses ((w ◇ (x ◇ y)) ◇ w) to w and collapses the lemma-internal tail. |
| `squareTailErase` | `∀ (a b : G), (a ◇ a) ◇ (b ◇ a) = (a ◇ a) ◇ b` | removes the trailing repeated square anchor after the seed expansion. |

Proof flow:
1. Derive idem with a bounded two-edge h/congrArg/trans bridge.
2. Derive absorbL with a bounded two-edge bridge.
3. Prove squareTailErase by expanding (a◇a)◇b with h ((a◇a)◇b) a a b, collapsing (((a◇a)◇b)◇a) to a via idem+absorbL, then taking symmetry.
4. Seed-expand w◇(x◇y) using h (w◇(x◇y)) w w y.
5. Use absorbL to prove collapseTail : ((w◇(x◇y))◇w) = w.
6. Lift collapseTail through congrArg (fun q => (w◇w)◇(y◇q)).
7. Apply squareTailErase w y to remove y◇w under the square anchor w◇w.
8. Lift the inner equality through the outer context (y◇z)◇_.

Compact skeleton:
```lean
have idem : ∀ (a : G), a ◇ a = a := ...
have absorbL : ∀ (a b : G), (a ◇ b) ◇ a = a := ...
have squareTailErase : ∀ (a b : G), (a ◇ a) ◇ (b ◇ a) = (a ◇ a) ◇ b := by
  intro a b
  have tail : (((a ◇ a) ◇ b) ◇ a) = a := ...
  have seed : (a ◇ a) ◇ b = (a ◇ a) ◇ (b ◇ (((a ◇ a) ◇ b) ◇ a)) := h ((a ◇ a) ◇ b) a a b
  exact (seed.trans (congrArg (fun t => (a ◇ a) ◇ (b ◇ t)) tail)).symm
have seed : w ◇ (x ◇ y) = (w ◇ w) ◇ (y ◇ ((w ◇ (x ◇ y)) ◇ w)) := h (w ◇ (x ◇ y)) w w y
have collapseTail : ((w ◇ (x ◇ y)) ◇ w) = w := absorbL w (x ◇ y)
have inner : w ◇ (x ◇ y) = (w ◇ w) ◇ y := ...
exact (h x y z w).trans (congrArg (fun q => (y ◇ z) ◇ q) inner)
```

## Remaining Unsolved
- Total unsolved: 17
- True failures: 16
- False failures: `false_1682_411`

| id | likely route | idem | absorbL | absorbR | square-tail | outer context | anchored-right | goal |
|---|---|---|---|---|---|---|---|---|
| `true_3108_4642` | anchored-right erasure | yes | yes | no | no | yes | yes | `(x ◇ y) ◇ x = (z ◇ x) ◇ x` |
| `true_1698_555` | different route | no | yes | yes | no | no | no | `x = y ◇ (z ◇ (y ◇ (x ◇ y)))` |
| `true_2111_1755` | local-theory normalization | yes | yes | no | no | no | no | `x = (y ◇ z) ◇ ((x ◇ x) ◇ x)` |
| `true_2860_3458` | different route | yes | yes | yes | no | yes | no | `x ◇ x = x ◇ ((x ◇ y) ◇ x)` |
| `true_1738_1258` | local-theory normalization | yes | no | yes | no | no | no | `x = x ◇ (((y ◇ z) ◇ x) ◇ x)` |
| `true_2789_898` | different route | no | yes | no | no | no | no | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` |
| `true_2135_2128` | anchored-right erasure | yes | yes | no | no | no | yes | `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)` |
| `true_1500_498` | anchored-right erasure | yes | no | yes | no | no | yes | `x = y ◇ (x ◇ (z ◇ (w ◇ w)))` |
| `true_691_1976` | anchored-right erasure | no | yes | yes | no | no | yes | `x = (y ◇ (z ◇ y)) ◇ (x ◇ y)` |
| `true_2074_2082` | anchored-right erasure | no | no | no | no | no | yes | `x = ((x ◇ y) ◇ z) ◇ (w ◇ x)` |
| `true_4082_4109` | anchored-right erasure | yes | no | no | no | no | yes | `x ◇ x = ((y ◇ z) ◇ z) ◇ y` |
| `true_2771_2775` | anchored-right erasure | yes | no | no | no | no | yes | `x = ((y ◇ z) ◇ (x ◇ y)) ◇ y` |
| `true_2055_2656` | anchored-right erasure | yes | yes | no | no | no | yes | `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y` |
| `true_689_1350` | different route | no | yes | yes | no | no | no | `x = y ◇ (((z ◇ x) ◇ x) ◇ y)` |
| `true_674_668` | anchored-right erasure | yes | no | no | no | no | yes | `x = y ◇ (x ◇ ((x ◇ x) ◇ z))` |
| `true_1636_1839` | local-theory normalization | yes | yes | no | no | no | no | `x = (x ◇ (x ◇ y)) ◇ (x ◇ z)` |

## Top 5 Transfer Targets
| rank | id | likely route | score | why |
|---:|---|---|---:|---|
| 1 | `true_3108_4642` | anchored-right erasure | 16 | anchored erasure, idempotence, absorption, outer context |
| 2 | `true_2055_2656` | anchored-right erasure | 10 | anchored erasure, idempotence, absorption |
| 3 | `true_2135_2128` | anchored-right erasure | 10 | anchored erasure, idempotence, absorption |
| 4 | `true_1500_498` | anchored-right erasure | 9 | anchored erasure, idempotence, absorption |
| 5 | `true_4082_4109` | anchored-right erasure | 8 | anchored erasure, idempotence |

## Recommendation for v0.9.11
Recommended target: **anchored-right erasure for true_3108_4642**.

v0.9.10 exhausted the immediately visible square-anchor tail case. The highest-scoring remaining case is true_3108_4642, whose goal is direct right-anchor constancy: (x◇y)◇x = (z◇x)◇x.

Candidate lemma: `∀ (a b c : G), (a ◇ b) ◇ a = (c ◇ a) ◇ a`

Safety gates:
- derive/use idempotence only if locally proved by the existing bounded bridge
- activate only when the goal or extracted edge exactly has the right-anchor constancy shape
- emit at most one anchored-erasure local lemma and one calc closure
- abstain if no compact proof is found under <=3 h uses plus congrArg/trans

false_1682_411 remains separate; this report does not run targeted countermodel search.
