# ARCF-Prover v0.9.8 Recursive Seed-Collapse Transfer Report

## Inputs
- `v098_results`: `pipeline/results/arcf_sample200_v098.json`
- `v097_results`: `pipeline/results/arcf_sample200_v097.json`
- `sample_200`: `examples/problems/sample_200.json`
- `solver`: `submissions/arcf_prover/solver.py`
- `prior_seed_collapse_report`: `analysis/v097_seed_collapse_motif_transfer_report.json`

## v0.9.7 → v0.9.8 Delta

| version | accepted | true proofs | false countermodels | no_judge_attempt | judge_errors | harness_errors |
|---|---:|---:|---:|---:|---:|---:|
| v097 | 181 | 82 | 99 | 19 | 0 | 0 |
| v098 | 182 | 83 | 99 | 18 | 0 | 0 |

- Newly solved cases: `true_1167_2000`
- Regressions: none
- Judge errors: none observed in v0.9.8.

## Newly Solved Motif: `true_1167_2000`

- Hypothesis: `x = y ◇ ((z ◇ (y ◇ y)) ◇ x)`
- Goal: `x = (y ◇ (z ◇ z)) ◇ (z ◇ x)`
- Motif: recursive seed-collapse erasure under exact contexts.

| component | detail |
|---|---|
| outer seed expansion | `x = (y ◇ (z ◇ z)) ◇ ((x ◇ ((y ◇ (z ◇ z)) ◇ (y ◇ (z ◇ z)))) ◇ x)` |
| outer seed proof | `h x (y ◇ (z ◇ z)) x` |
| inner target edge | `((x ◇ ((y ◇ (z ◇ z)) ◇ (y ◇ (z ◇ z)))) ◇ x) = z ◇ x` |
| inner seed expansion | `((x ◇ ((y ◇ (z ◇ z)) ◇ (y ◇ (z ◇ z)))) ◇ x) = z ◇ ((y ◇ (z ◇ z)) ◇ ((x ◇ ((y ◇ (z ◇ z)) ◇ (y ◇ (z ◇ z)))) ◇ x))` |
| inner seed proof | `h ((x ◇ ((y ◇ (z ◇ z)) ◇ (y ◇ (z ◇ z)))) ◇ x) z y` |
| symmetric collapse | `((y ◇ (z ◇ z)) ◇ ((x ◇ ((y ◇ (z ◇ z)) ◇ (y ◇ (z ◇ z)))) ◇ x)) = x` |
| symmetric collapse proof | `(h x (y ◇ (z ◇ z)) x).symm` |
| inner congrArg context | `fun q => z ◇ q` |
| outer congrArg context | `fun q => (y ◇ (z ◇ z)) ◇ q` |
| inner trans closure | `seed2.trans (congrArg (fun q => (z ◇ q)) collapse2)` |
| outer trans closure | `seed1.trans (congrArg (fun q => ((y ◇ (z ◇ z)) ◇ q)) edge1)` |

Generated proof core:

```lean
  intro x y z
  have seed1 : x = ((y ◇ (z ◇ z)) ◇ ((x ◇ ((y ◇ (z ◇ z)) ◇ (y ◇ (z ◇ z)))) ◇ x)) := h x (y ◇ (z ◇ z)) x
  have edge1 : ((x ◇ ((y ◇ (z ◇ z)) ◇ (y ◇ (z ◇ z)))) ◇ x) = (z ◇ x) := (by
    have seed2 : ((x ◇ ((y ◇ (z ◇ z)) ◇ (y ◇ (z ◇ z)))) ◇ x) = (z ◇ ((y ◇ (z ◇ z)) ◇ ((x ◇ ((y ◇ (z ◇ z)) ◇ (y ◇ (z ◇ z)))) ◇ x))) := h ((x ◇ ((y ◇ (z ◇ z)) ◇ (y ◇ (z ◇ z)))) ◇ x) z y
    have collapse2 : ((y ◇ (z ◇ z)) ◇ ((x ◇ ((y ◇ (z ◇ z)) ◇ (y ◇ (z ◇ z)))) ◇ x)) = x := (h x (y ◇ (z ◇ z)) x).symm
    exact seed2.trans (congrArg (fun q => (z ◇ q)) collapse2)
  )
  have bridge : x = ((y ◇ (z ◇ z)) ◇ (z ◇ x)) := by
    exact seed1.trans (congrArg (fun q => ((y ◇ (z ◇ z)) ◇ q)) edge1)
  exact bridge
```

## Remaining Unsolved Cases

- Total remaining: 18
- True-labeled remaining: 17
- False-labeled remaining: 1

| id | expected | eq1 | eq2 | likely next proof object | hypothesis | goal |
|---|---:|---:|---:|---|---|---|
| `true_3108_4642` | True | 3108 | 4642 | local-theory/idempotence/extension | `x = (((y ◇ x) ◇ x) ◇ z) ◇ x` | `(x ◇ y) ◇ x = (z ◇ x) ◇ x` |
| `true_1698_555` | True | 1698 | 555 | local-theory/idempotence/extension | `x = (y ◇ x) ◇ ((y ◇ z) ◇ y)` | `x = y ◇ (z ◇ (y ◇ (x ◇ y)))` |
| `true_1604_1822` | True | 1604 | 1822 | two-h contextual lift | `x = (y ◇ z) ◇ (w ◇ (x ◇ y))` | `x = (y ◇ z) ◇ ((w ◇ w) ◇ y)` |
| `true_2111_1755` | True | 2111 | 1755 | local-theory/idempotence/extension | `x = ((y ◇ x) ◇ z) ◇ (y ◇ x)` | `x = (y ◇ z) ◇ ((x ◇ x) ◇ x)` |
| `true_2860_3458` | True | 2860 | 3458 | two-h contextual lift | `x = ((x ◇ (x ◇ y)) ◇ z) ◇ z` | `x ◇ x = x ◇ ((x ◇ y) ◇ x)` |
| `true_1738_1258` | True | 1738 | 1258 | two-h contextual lift | `x = (y ◇ y) ◇ ((z ◇ x) ◇ x)` | `x = x ◇ (((y ◇ z) ◇ x) ◇ x)` |
| `true_2789_898` | True | 2789 | 898 | two-h contextual lift | `x = ((y ◇ z) ◇ (y ◇ x)) ◇ z` | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` |
| `true_2135_2128` | True | 2135 | 2128 | local-theory/idempotence/extension | `x = ((y ◇ y) ◇ y) ◇ (x ◇ y)` | `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)` |
| `true_1500_498` | True | 1500 | 498 | local-theory/idempotence/extension | `x = (y ◇ x) ◇ (z ◇ (x ◇ z))` | `x = y ◇ (x ◇ (z ◇ (w ◇ w)))` |
| `true_691_1976` | True | 691 | 1976 | recursive seed-collapse depth 2 | `x = y ◇ (x ◇ ((z ◇ y) ◇ y))` | `x = (y ◇ (z ◇ y)) ◇ (x ◇ y)` |
| `true_2074_2082` | True | 2074 | 2082 | recursive seed-collapse depth 2 | `x = ((x ◇ y) ◇ z) ◇ (y ◇ x)` | `x = ((x ◇ y) ◇ z) ◇ (w ◇ x)` |
| `true_4082_4109` | True | 4082 | 4109 | two-h contextual lift | `x ◇ x = ((y ◇ x) ◇ x) ◇ z` | `x ◇ x = ((y ◇ z) ◇ z) ◇ y` |
| `true_2771_2775` | True | 2771 | 2775 | recursive seed-collapse depth 2 | `x = ((y ◇ z) ◇ (x ◇ x)) ◇ y` | `x = ((y ◇ z) ◇ (x ◇ y)) ◇ y` |
| `false_1682_411` | False | 1682 | 411 | false case - separate countermodel search | `x = (y ◇ x) ◇ ((x ◇ x) ◇ y)` | `x = x ◇ (x ◇ (x ◇ (x ◇ x)))` |
| `true_2055_2656` | True | 2055 | 2656 | local-theory/idempotence/extension | `x = ((x ◇ y) ◇ x) ◇ (y ◇ z)` | `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y` |
| `true_689_1350` | True | 689 | 1350 | two-h contextual lift | `x = y ◇ (x ◇ ((z ◇ x) ◇ w))` | `x = y ◇ (((z ◇ x) ◇ x) ◇ y)` |
| `true_674_668` | True | 674 | 668 | recursive seed-collapse depth 2 | `x = y ◇ (x ◇ ((x ◇ z) ◇ z))` | `x = y ◇ (x ◇ ((x ◇ x) ◇ z))` |
| `true_1636_1839` | True | 1636 | 1839 | local-theory/idempotence/extension | `x = (x ◇ x) ◇ ((y ◇ x) ◇ z)` | `x = (x ◇ (x ◇ y)) ◇ (x ◇ z)` |

## Recursive Seed-Collapse Comparison

| rank | case | score | seeds | contexts | erasure edges | depth-1 bridges | likely next proof object | best candidate |
|---:|---|---:|---:|---:|---:|---:|---|---|
| 1 | `true_691_1976` | 54 | 120 | 8 | 4 | 0 | recursive seed-collapse depth 2 | `(x ◇ ((x ◇ (y ◇ (z ◇ y))) ◇ (y ◇ (z ◇ y)))) = (x ◇ y)` under `fun q => ((y ◇ (z ◇ y)) ◇ q)` |
| 2 | `true_2074_2082` | 54 | 120 | 10 | 3 | 0 | recursive seed-collapse depth 2 | `(y ◇ x) = (w ◇ x)` under `fun q => (((x ◇ y) ◇ z) ◇ q)` |
| 3 | `true_2771_2775` | 54 | 120 | 16 | 2 | 0 | recursive seed-collapse depth 2 | `((y ◇ z) ◇ (x ◇ x)) = ((y ◇ z) ◇ (x ◇ y))` under `fun q => (q ◇ y)` |
| 4 | `true_674_668` | 54 | 120 | 33 | 18 | 0 | recursive seed-collapse depth 2 | `(x ◇ ((x ◇ x) ◇ x)) = (x ◇ ((x ◇ x) ◇ z))` under `fun q => (y ◇ q)` |
| 5 | `true_1604_1822` | 32 | 120 | 4 | 0 | 0 | two-h contextual lift | `(x ◇ (x ◇ y)) = ((w ◇ w) ◇ y)` under `fun q => ((y ◇ z) ◇ q)` |
| 6 | `true_2860_3458` | 32 | 120 | 15 | 0 | 0 | two-h contextual lift | `(((x ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ y) ◇ x)) = x` under `fun q => (q ◇ ((x ◇ y) ◇ x))` |
| 7 | `true_1738_1258` | 32 | 120 | 4 | 0 | 0 | two-h contextual lift | `(x ◇ x) = x` under `fun q => (q ◇ (((y ◇ z) ◇ x) ◇ x))` |
| 8 | `true_2789_898` | 32 | 120 | 4 | 0 | 0 | two-h contextual lift | `((x ◇ ((x ◇ z) ◇ (z ◇ y))) ◇ (x ◇ x)) = y` under `fun q => (q ◇ ((x ◇ z) ◇ (z ◇ y)))` |
| 9 | `true_4082_4109` | 32 | 61 | 5 | 0 | 0 | two-h contextual lift | `(((((y ◇ z) ◇ z) ◇ y) ◇ x) ◇ x) = ((y ◇ z) ◇ z)` under `fun q => (q ◇ y)` |
| 10 | `true_689_1350` | 32 | 120 | 9 | 0 | 0 | two-h contextual lift | `(x ◇ ((x ◇ x) ◇ z)) = (((z ◇ x) ◇ x) ◇ y)` under `fun q => (y ◇ q)` |
| 11 | `true_3108_4642` | 10 | 120 | 0 | 0 | 0 | local-theory/idempotence/extension | none |
| 12 | `true_1698_555` | 10 | 120 | 0 | 0 | 0 | local-theory/idempotence/extension | none |
| 13 | `true_2111_1755` | 10 | 120 | 0 | 0 | 0 | local-theory/idempotence/extension | none |
| 14 | `true_2135_2128` | 10 | 16 | 0 | 0 | 0 | local-theory/idempotence/extension | none |
| 15 | `true_1500_498` | 10 | 120 | 0 | 0 | 0 | local-theory/idempotence/extension | none |
| 16 | `true_2055_2656` | 10 | 120 | 0 | 0 | 0 | local-theory/idempotence/extension | none |
| 17 | `true_1636_1839` | 10 | 120 | 0 | 0 | 0 | local-theory/idempotence/extension | none |

## Grouping

| likely next proof object | count | cases |
|---|---:|---|
| local-theory/idempotence/extension | 7 | `true_3108_4642`, `true_1698_555`, `true_2111_1755`, `true_2135_2128`, `true_1500_498`, `true_2055_2656`, `true_1636_1839` |
| two-h contextual lift | 6 | `true_1604_1822`, `true_2860_3458`, `true_1738_1258`, `true_2789_898`, `true_4082_4109`, `true_689_1350` |
| recursive seed-collapse depth 2 | 4 | `true_691_1976`, `true_2074_2082`, `true_2771_2775`, `true_674_668` |
| false case - separate countermodel search | 1 | `false_1682_411` |

## Interpretation

v0.9.8 proves the first recursive seed-collapse case: the outer direct `h` expansion exposes an erasure-shaped inner edge, and that inner edge is itself closed by a second direct `h` expansion plus a symmetric `h` collapse under an exact context.

For the remaining true failures, the closest cases still expose seed/context structure, but the current depth-1 recursive bridge does not find a direct inner collapse. They appear to need either one more local erasure seed layer, a small idempotence/extension theory, or a different contextual-lift motif. Cases with no compact context should remain gated off.

## Recommended v0.9.9 Target

Smallest safe target: **depth-2 erasure-seed composer for supported eraseR/eraseL inner edges**.

Rationale:
- v0.9.8 solved the single case where a supported erasure inner edge itself had a direct seed-collapse bridge at depth 1.
- The remaining closest cases still expose eraseR/eraseL-shaped inner edges, but the next inner bridge is not direct h-collapse under the current caps.
- A safe v0.9.9 should not increase global graph caps; it should add one more narrowly typed local seed layer or a small universal seed lemma only after an exact outer context and supported erasure family are already known.
- Cases with no compact context or unsupported inner edges should remain abstentions.

First structural targets: `true_691_1976`, `true_2074_2082`, `true_2771_2775`, `true_674_668`, `true_1604_1822`

Safety gates:
- activate only after direct h seed expansion plus exact compact context
- require supported eraseR/eraseL family at the extracted inner edge
- allow at most one additional typed local lemma beyond v0.9.8
- no broad h-instantiation search for hypotheses with more than three variables
- keep false_1682_411 in a separate countermodel workflow

`false_1682_411` remains separate. This report does not run a targeted countermodel search.
