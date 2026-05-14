# ARCF-Prover v0.9.5 Residue and Route-Transfer Report

## Inputs
- `v095_results`: `pipeline/results/arcf_sample200_v095.json`
- `v094_results`: `pipeline/results/arcf_sample200_v094.json`
- `sample_200`: `examples/problems/sample_200.json`
- `solver`: `submissions/arcf_prover/solver.py`
- `local_theory_report`: `analysis/v094_local_theory_transfer_report.json`
- `motif_transfer_report`: `analysis/v093_residue_motif_transfer_report.json`

## v0.9.4 → v0.9.5 Delta

| version | accepted | true proofs | false countermodels | no_judge_attempt | judge_errors |
|---|---:|---:|---:|---:|---:|
| v0.9.4 | 179 | 80 | 99 | 21 | 0 |
| v0.9.5 | 180 | 81 | 99 | 20 | 0 |

- Newly solved cases: `true_425_1630`
- Regressions: none
- Judge errors: none in either v0.9.4 or v0.9.5 result file.

## Newly Solved: `true_425_1630`

- Route used: `anchored_projection_argument_erasure` (inferred; route labels are internal and not printed to stdout).
- Hypothesis: `x = x ◇ (x ◇ (y ◇ (z ◇ w)))`
- Goal: `x = (x ◇ x) ◇ ((x ◇ x) ◇ y)`
- Motif: anchored projection / argument-erasure local-theory transfer.

| local lemma | statement | role |
|---|---|---|
| `idem` | `x = x ◇ x` | anchored self-square expansion derived from two h-instantiations and congrArg |
| `anchor_expand` | `y = y ◇ (y ◇ (y ◇ (y ◇ y)))` | reusable repeated-anchor expansion used as the erased tail |
| `extend` | `(x ◇ x) = (x ◇ x) ◇ ((x ◇ x) ◇ (y ◇ (y ◇ (y ◇ (y ◇ y)))))` | local extension step from h at the self-square anchor |
| `step` | `(x ◇ x) = (x ◇ x) ◇ ((x ◇ x) ◇ y)` | argument-erases the expanded y-tail under an exact context via congrArg |

The proof derives `x = x ◇ x`, expands the `y` anchor, applies one h-instantiated extension at `x ◇ x`, then erases the expanded `y` tail under an exact `congrArg` context.

## Remaining Unsolved Cases

Total remaining: 20 cases, with 19 true-labeled failures and 1 false-labeled failure.

| id | expected | eq1 | eq2 | likely next proof object | closest v0.9.3 motif | local-theory score | anchored v0.9.5 similarity | goal |
|---|---|---:|---:|---|---|---:|---|---|
| `true_3108_4642` | True | 3108 | 4642 | argument erasure | true_2061_307 style multi-local-edge calc composition | 38 | low (3) | `(x ◇ y) ◇ x = (z ◇ x) ◇ x` |
| `true_1167_2000` | True | 1167 | 2000 | idempotence/absorption/extension local theory | true_2942_5 style repeated-anchor collapse | 26 | medium (4) | `x = (y ◇ (z ◇ z)) ◇ (z ◇ x)` |
| `true_1698_555` | True | 1698 | 555 | two-lemma contextual lift | true_130_1759 style two-h expansion + contextual lift | 17 | low (1) | `x = y ◇ (z ◇ (y ◇ (x ◇ y)))` |
| `true_1604_1822` | True | 1604 | 1822 | idempotence/absorption/extension local theory | true_2942_5 style repeated-anchor collapse | 21 | medium (4) | `x = (y ◇ z) ◇ ((w ◇ w) ◇ y)` |
| `true_2111_1755` | True | 2111 | 1755 | idempotence/absorption/extension local theory | true_2942_5 style repeated-anchor collapse | 26 | medium (6) | `x = (y ◇ z) ◇ ((x ◇ x) ◇ x)` |
| `true_2860_3458` | True | 2860 | 3458 | argument erasure | true_2061_307 style multi-local-edge calc composition | 48 | high (7) | `x ◇ x = x ◇ ((x ◇ y) ◇ x)` |
| `true_1738_1258` | True | 1738 | 1258 | idempotence/absorption/extension local theory | true_2942_5 style repeated-anchor collapse | 40 | high (9) | `x = x ◇ (((y ◇ z) ◇ x) ◇ x)` |
| `true_2789_898` | True | 2789 | 898 | rotation/context shift | true_130_1759 style two-h expansion + contextual lift | 27 | low (1) | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` |
| `true_2135_2128` | True | 2135 | 2128 | two-lemma contextual lift | true_130_1759 style two-h expansion + contextual lift | 27 | medium (4) | `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)` |
| `true_1500_498` | True | 1500 | 498 | two-lemma contextual lift | true_130_1759 style two-h expansion + contextual lift | 27 | medium (4) | `x = y ◇ (x ◇ (z ◇ (w ◇ w)))` |
| `true_691_1976` | True | 691 | 1976 | two-lemma contextual lift | true_130_1759 style two-h expansion + contextual lift | 17 | low (1) | `x = (y ◇ (z ◇ y)) ◇ (x ◇ y)` |
| `true_2074_2082` | True | 2074 | 2082 | argument erasure | true_130_1759 style two-h expansion + contextual lift | 29 | low (3) | `x = ((x ◇ y) ◇ z) ◇ (w ◇ x)` |
| `true_4082_4109` | True | 4082 | 4109 | multi-local-edge calc | true_2061_307 style multi-local-edge calc composition | 23 | medium (5) | `x ◇ x = ((y ◇ z) ◇ z) ◇ y` |
| `true_2771_2775` | True | 2771 | 2775 | argument erasure | true_130_1759 style two-h expansion + contextual lift | 39 | medium (5) | `x = ((y ◇ z) ◇ (x ◇ y)) ◇ y` |
| `false_1682_411` | False | 1682 | 411 | false case - separate countermodel work | n/a | n/a | n/a | `x = x ◇ (x ◇ (x ◇ (x ◇ x)))` |
| `true_1874_4357` | True | 1874 | 4357 | argument erasure | true_2061_307 style multi-local-edge calc composition | 23 | low (2) | `x ◇ (y ◇ z) = x ◇ (y ◇ w)` |
| `true_2055_2656` | True | 2055 | 2656 | two-lemma contextual lift | true_130_1759 style two-h expansion + contextual lift | 27 | medium (5) | `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y` |
| `true_689_1350` | True | 689 | 1350 | idempotence/absorption/extension local theory | true_2942_5 style repeated-anchor collapse | 16 | low (1) | `x = y ◇ (((z ◇ x) ◇ x) ◇ y)` |
| `true_674_668` | True | 674 | 668 | argument erasure | true_130_1759 style two-h expansion + contextual lift | 39 | high (7) | `x = y ◇ (x ◇ ((x ◇ x) ◇ z))` |
| `true_1636_1839` | True | 1636 | 1839 | two-lemma contextual lift | true_130_1759 style two-h expansion + contextual lift | 32 | low (3) | `x = (x ◇ (x ◇ y)) ◇ (x ◇ z)` |

## Cluster Summary

| cluster | count | cases |
|---|---:|---|
| argument erasure | 6 | `true_3108_4642`, `true_2860_3458`, `true_2074_2082`, `true_2771_2775`, `true_1874_4357`, `true_674_668` |
| idempotence/absorption/extension local theory | 5 | `true_1167_2000`, `true_1604_1822`, `true_2111_1755`, `true_1738_1258`, `true_689_1350` |
| multi-local-edge calc | 1 | `true_4082_4109` |
| rotation/context shift | 1 | `true_2789_898` |
| two-lemma contextual lift | 6 | `true_1698_555`, `true_2135_2128`, `true_1500_498`, `true_691_1976`, `true_2055_2656`, `true_1636_1839` |
| false case - separate countermodel work | 1 | `false_1682_411` |

## Route-Transfer Notes

- v0.9.3 repeated-anchor collapse still best describes `true_1738_1258`, `true_1167_2000`, `true_2111_1755`, `true_1604_1822`, and `true_689_1350`, but v0.9.5 only handled the narrower self-square extension target represented by `true_425_1630`.
- v0.9.3 two-h contextual lift remains the closest route family for `true_2771_2775`, `true_674_668`, `true_1636_1839`, `true_1500_498`, `true_2055_2656`, `true_2135_2128`, `true_2789_898`, `true_1698_555`, and `true_691_1976`.
- v0.9.3 multi-local-edge calc composition remains relevant for `true_2860_3458`, `true_3108_4642`, `true_1874_4357`, and `true_4082_4109`.
- v0.9.4 local-theory transfer still points to idempotence/absorption/extension for several cases, but the next proof object with the strongest direct evidence is a compact argument-erasure inner edge under an exact context.
- `false_1682_411` remains separate. Targeted countermodel search is still not part of this proof-side route.

## Recommended v0.9.6 Target

Smallest safe target: **argument-erasure inner-edge prover under exact extracted contexts**.

v0.9.5 consumed the exact anchored self-square extension case. The highest-scoring remaining proof-side cases now share exact-context near misses where the missing inner edge is an argument-erasure/projection equality, e.g. a◇a = a◇b, a◇b = a◇c, or (a◇b)◇c = (a◇d)◇c.

First structural tests: `true_2771_2775`, `true_674_668`, `true_2860_3458`, `true_3108_4642`, `true_2074_2082`.

Safety gates:
- only activate after an exact outer context is extracted
- prove one local erasure lemma at a time
- at most two h instances plus one congrArg
- no global proof graph cap increase
- leave false_1682_411 to a separate targeted countermodel workflow

