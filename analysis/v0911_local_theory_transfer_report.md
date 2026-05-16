# v0.9.11 Local-Theory Transfer Report

## Inputs
- current: `pipeline/results/arcf_sample200_v0911.json`
- prior: `pipeline/results/arcf_sample200_v0910.json`
- problems: `examples/problems/sample_200.json`
- solver: `submissions/arcf_prover/solver.py`
- square_anchor_transfer_report: `analysis/v0910_square_anchor_transfer_report.json`

## Summary
| run | accepted | true | false | no_judge_attempt | judge_errors |
|---|---:|---:|---:|---:|---:|
| v0.9.10 | 183 | 84 | 99 | 17 | 0 |
| v0.9.11 | 184 | 85 | 99 | 16 | 0 |

- Newly solved: `true_3108_4642`
- Regressions: `none`
- `false_1682_411` remains separate; no targeted countermodel search was run.

## true_3108_4642 Proof Motif
Hypothesis: `x = ((((y ◇ x) ◇ x) ◇ z) ◇ x)`

Goal: `(x ◇ y) ◇ x = (z ◇ x) ◇ x`

| local item | statement | role |
|---|---|---|
| `idem` | `∀ (a : G), a ◇ a = a` | normalizes the anchor before deriving projection-like collapses. |
| `absorbL` | `∀ (a b : G), (a ◇ b) ◇ a = a` | collapses the left side of the anchored-right target. |
| `absorbR` | `∀ (a b : G), (a ◇ b) ◇ b = b` | collapses the right side of the anchored-right target in reverse. |
| `anchoredRightErase` | `∀ (a b c : G), (a ◇ b) ◇ a = (c ◇ a) ◇ a` | composes absorbL with absorbR.symm to prove right-anchor constancy. |

Final closure:
```lean
have anchoredRightErase : ∀ (a b c : G), (a ◇ b) ◇ a = (c ◇ a) ◇ a := by
  intro a b c
  calc
    (a ◇ b) ◇ a = a := absorbL a b
    _ = (c ◇ a) ◇ a := (absorbR c a).symm
exact anchoredRightErase x y z
```

## Remaining Unsolved
- Total unsolved: 16
- True failures: 15
- False failures: `false_1682_411`

| id | closest family | idem | absorbL | absorbR | square-tail | anchored-right | extension | arg erasure | goal |
|---|---|---|---|---|---|---|---|---|---|
| `true_1698_555` | extension/local collapse | no | yes | yes | no | no | yes | no | `x = y ◇ (z ◇ (y ◇ (x ◇ y)))` |
| `true_2111_1755` | idempotence/absorption/extension local theory | yes | yes | no | no | no | yes | no | `x = (y ◇ z) ◇ ((x ◇ x) ◇ x)` |
| `true_2860_3458` | argument erasure/context invariance | yes | yes | yes | no | no | no | yes | `x ◇ x = x ◇ ((x ◇ y) ◇ x)` |
| `true_1738_1258` | idempotence/absorption/extension local theory | yes | no | yes | no | no | yes | no | `x = x ◇ (((y ◇ z) ◇ x) ◇ x)` |
| `true_2789_898` | extension/local collapse | no | yes | no | no | no | yes | no | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` |
| `true_2135_2128` | anchored-right erasure | yes | yes | no | no | yes | yes | yes | `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)` |
| `true_1500_498` | anchored-right erasure | yes | no | yes | no | yes | yes | no | `x = y ◇ (x ◇ (z ◇ (w ◇ w)))` |
| `true_691_1976` | anchored-right erasure | no | no | yes | no | yes | yes | no | `x = (y ◇ (z ◇ y)) ◇ (x ◇ y)` |
| `true_2074_2082` | anchored-right erasure | no | no | no | no | yes | yes | no | `x = ((x ◇ y) ◇ z) ◇ (w ◇ x)` |
| `true_4082_4109` | anchored-right erasure | yes | no | no | no | yes | no | no | `x ◇ x = ((y ◇ z) ◇ z) ◇ y` |
| `true_2771_2775` | anchored-right erasure | yes | no | no | no | yes | yes | no | `x = ((y ◇ z) ◇ (x ◇ y)) ◇ y` |
| `true_2055_2656` | anchored-right erasure | yes | yes | no | no | yes | yes | no | `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y` |
| `true_689_1350` | extension/local collapse | no | yes | yes | no | no | yes | no | `x = y ◇ (((z ◇ x) ◇ x) ◇ y)` |
| `true_674_668` | anchored-right erasure | yes | no | no | no | yes | yes | no | `x = y ◇ (x ◇ ((x ◇ x) ◇ z))` |
| `true_1636_1839` | extension/local collapse | yes | no | no | no | no | yes | no | `x = (x ◇ (x ◇ y)) ◇ (x ◇ z)` |

## Clusters
| family | count | cases |
|---|---:|---|
| anchored-right erasure | 8 | `true_2135_2128`, `true_1500_498`, `true_691_1976`, `true_2074_2082`, `true_4082_4109`, `true_2771_2775`, `true_2055_2656`, `true_674_668` |
| extension/local collapse | 4 | `true_1698_555`, `true_2789_898`, `true_689_1350`, `true_1636_1839` |
| idempotence/absorption/extension local theory | 2 | `true_2111_1755`, `true_1738_1258` |
| argument erasure/context invariance | 1 | `true_2860_3458` |

## Top 5 Targets
| rank | id | family | score |
|---:|---|---|---:|
| 1 | `true_2135_2128` | anchored-right erasure | 14 |
| 2 | `true_1500_498` | anchored-right erasure | 11 |
| 3 | `true_2055_2656` | anchored-right erasure | 11 |
| 4 | `true_2860_3458` | argument erasure/context invariance | 10 |
| 5 | `true_2771_2775` | anchored-right erasure | 9 |

## Recommendation for v0.9.12
Recommended target: **idempotence/absorption/extension local-theory normalizer**.

The two narrowly gated routes solved the only direct square-tail and direct anchored-right cases. Remaining high-signal cases mostly need the same local facts but under extension/local-collapse contexts rather than direct goal equality.

First cases: `true_2055_2656`, `true_2135_2128`, `true_2111_1755`, `true_1636_1839`, `true_1738_1258`.

Implementation shape: derive idem plus absorbL/absorbR when available, then try one exact context or extension closure; do not add broad graph expansion.

false_1682_411 remains separate; this report does not run targeted countermodel search.
