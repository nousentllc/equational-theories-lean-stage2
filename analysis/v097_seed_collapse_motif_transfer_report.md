# ARCF-Prover v0.9.7 Seed-Collapse Motif Transfer Report

## Inputs
- `v097_results`: `pipeline/results/arcf_sample200_v097.json`
- `v096_results`: `pipeline/results/arcf_sample200_v096.json`
- `sample_200`: `examples/problems/sample_200.json`
- `solver`: `submissions/arcf_prover/solver.py`
- `v096_route_audit`: `analysis/v096_route_audit.json`
- `v095_route_transfer_report`: `analysis/v095_residue_route_transfer_report.json`
- `true_1874_motif_analysis`: `analysis/true_1874_4357_motif_analysis.md`

## v0.9.6 → v0.9.7 Delta

| version | accepted | true proofs | false countermodels | no_judge_attempt | judge_errors | harness_errors |
|---|---:|---:|---:|---:|---:|---:|
| v096 | 180 | 81 | 99 | 20 | 0 | 0 |
| v097 | 181 | 82 | 99 | 19 | 0 | 0 |

- Newly solved cases: `true_1874_4357`
- Regressions: none
- Judge errors: none observed in v0.9.7.

## Newly Solved Motif: `true_1874_4357`

- Hypothesis: `x = (x ◇ (y ◇ z)) ◇ (y ◇ w)`
- Goal: `x ◇ (y ◇ z) = x ◇ (y ◇ w)`
- Motif: direct `h` seed expansion plus direct/symmetric `h` local collapse, lifted through one exact `congrArg` context.

| component | detail |
|---|---|
| seed expansion | `(x ◇ (y ◇ z)) = (((x ◇ (y ◇ z)) ◇ (y ◇ x)) ◇ (y ◇ w))` via `h (x ◇ (y ◇ z)) y x w` |
| local collapse edge | `((x ◇ (y ◇ z)) ◇ (y ◇ x)) = x` via `(h x y z x).symm` |
| congrArg context | `fun q => (q ◇ (y ◇ w))` |
| final closure | `seed1.trans (congrArg (fun q => (q ◇ (y ◇ w))) edge1)` |

Generated proof core:

```lean
  intro x y z w
  have seed1 : (x ◇ (y ◇ z)) = (((x ◇ (y ◇ z)) ◇ (y ◇ x)) ◇ (y ◇ w)) := h (x ◇ (y ◇ z)) y x w
  have edge1 : ((x ◇ (y ◇ z)) ◇ (y ◇ x)) = x := (h x y z x).symm
  have bridge : (x ◇ (y ◇ z)) = (x ◇ (y ◇ w)) := by
    exact seed1.trans (congrArg (fun q => (q ◇ (y ◇ w))) edge1)
  exact bridge
```

## Remaining Unsolved Cases

- Total remaining: 19
- True-labeled remaining: 18
- False-labeled remaining: 1

| id | expected | eq1 | eq2 | hypothesis | goal |
|---|---:|---:|---:|---|---|
| `true_3108_4642` | True | 3108 | 4642 | `x = (((y ◇ x) ◇ x) ◇ z) ◇ x` | `(x ◇ y) ◇ x = (z ◇ x) ◇ x` |
| `true_1167_2000` | True | 1167 | 2000 | `x = y ◇ ((z ◇ (y ◇ y)) ◇ x)` | `x = (y ◇ (z ◇ z)) ◇ (z ◇ x)` |
| `true_1698_555` | True | 1698 | 555 | `x = (y ◇ x) ◇ ((y ◇ z) ◇ y)` | `x = y ◇ (z ◇ (y ◇ (x ◇ y)))` |
| `true_1604_1822` | True | 1604 | 1822 | `x = (y ◇ z) ◇ (w ◇ (x ◇ y))` | `x = (y ◇ z) ◇ ((w ◇ w) ◇ y)` |
| `true_2111_1755` | True | 2111 | 1755 | `x = ((y ◇ x) ◇ z) ◇ (y ◇ x)` | `x = (y ◇ z) ◇ ((x ◇ x) ◇ x)` |
| `true_2860_3458` | True | 2860 | 3458 | `x = ((x ◇ (x ◇ y)) ◇ z) ◇ z` | `x ◇ x = x ◇ ((x ◇ y) ◇ x)` |
| `true_1738_1258` | True | 1738 | 1258 | `x = (y ◇ y) ◇ ((z ◇ x) ◇ x)` | `x = x ◇ (((y ◇ z) ◇ x) ◇ x)` |
| `true_2789_898` | True | 2789 | 898 | `x = ((y ◇ z) ◇ (y ◇ x)) ◇ z` | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` |
| `true_2135_2128` | True | 2135 | 2128 | `x = ((y ◇ y) ◇ y) ◇ (x ◇ y)` | `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)` |
| `true_1500_498` | True | 1500 | 498 | `x = (y ◇ x) ◇ (z ◇ (x ◇ z))` | `x = y ◇ (x ◇ (z ◇ (w ◇ w)))` |
| `true_691_1976` | True | 691 | 1976 | `x = y ◇ (x ◇ ((z ◇ y) ◇ y))` | `x = (y ◇ (z ◇ y)) ◇ (x ◇ y)` |
| `true_2074_2082` | True | 2074 | 2082 | `x = ((x ◇ y) ◇ z) ◇ (y ◇ x)` | `x = ((x ◇ y) ◇ z) ◇ (w ◇ x)` |
| `true_4082_4109` | True | 4082 | 4109 | `x ◇ x = ((y ◇ x) ◇ x) ◇ z` | `x ◇ x = ((y ◇ z) ◇ z) ◇ y` |
| `true_2771_2775` | True | 2771 | 2775 | `x = ((y ◇ z) ◇ (x ◇ x)) ◇ y` | `x = ((y ◇ z) ◇ (x ◇ y)) ◇ y` |
| `false_1682_411` | False | 1682 | 411 | `x = (y ◇ x) ◇ ((x ◇ x) ◇ y)` | `x = x ◇ (x ◇ (x ◇ (x ◇ x)))` |
| `true_2055_2656` | True | 2055 | 2656 | `x = ((x ◇ y) ◇ x) ◇ (y ◇ z)` | `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y` |
| `true_689_1350` | True | 689 | 1350 | `x = y ◇ (x ◇ ((z ◇ x) ◇ w))` | `x = y ◇ (((z ◇ x) ◇ x) ◇ y)` |
| `true_674_668` | True | 674 | 668 | `x = y ◇ (x ◇ ((x ◇ z) ◇ z))` | `x = y ◇ (x ◇ ((x ◇ x) ◇ z))` |
| `true_1636_1839` | True | 1636 | 1839 | `x = (x ◇ x) ◇ ((y ◇ x) ◇ z)` | `x = (x ◇ (x ◇ y)) ◇ (x ◇ z)` |

## Seed-Collapse Motif Comparison

| rank | case | score | direct h seed? | compact context? | direct h collapse? | supported erasure edge? | motif closeness | best inner edge |
|---:|---|---:|---:|---:|---:|---:|---|---|
| 1 | `true_1167_2000` | 79 | 120 | 8 | 0 | 4 | near miss: seed plus context, but inner edge needs erasure lemma | `((x ◇ ((y ◇ (z ◇ z)) ◇ (y ◇ (z ◇ z)))) ◇ x) = (z ◇ x)` under `((y ◇ (z ◇ z)) ◇ q)` |
| 2 | `true_691_1976` | 79 | 120 | 8 | 0 | 4 | near miss: seed plus context, but inner edge needs erasure lemma | `(x ◇ ((x ◇ (y ◇ (z ◇ y))) ◇ (y ◇ (z ◇ y)))) = (x ◇ y)` under `((y ◇ (z ◇ y)) ◇ q)` |
| 3 | `true_2074_2082` | 79 | 120 | 10 | 0 | 3 | near miss: seed plus context, but inner edge needs erasure lemma | `(y ◇ x) = (w ◇ x)` under `(((x ◇ y) ◇ z) ◇ q)` |
| 4 | `true_2771_2775` | 79 | 120 | 16 | 0 | 2 | near miss: seed plus context, but inner edge needs erasure lemma | `((y ◇ z) ◇ (x ◇ x)) = ((y ◇ z) ◇ (x ◇ y))` under `(q ◇ y)` |
| 5 | `true_674_668` | 79 | 120 | 33 | 0 | 18 | near miss: seed plus context, but inner edge needs erasure lemma | `(x ◇ ((x ◇ x) ◇ x)) = (x ◇ ((x ◇ x) ◇ z))` under `(y ◇ q)` |
| 6 | `true_1604_1822` | 55 | 120 | 4 | 0 | 0 | partial: seed plus context, unsupported inner edge | `(x ◇ (x ◇ y)) = ((w ◇ w) ◇ y)` under `((y ◇ z) ◇ q)` |
| 7 | `true_2860_3458` | 55 | 120 | 15 | 0 | 0 | partial: seed plus context, unsupported inner edge | `(((x ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ y) ◇ x)) = x` under `(q ◇ ((x ◇ y) ◇ x))` |
| 8 | `true_1738_1258` | 55 | 120 | 4 | 0 | 0 | partial: seed plus context, unsupported inner edge | `(x ◇ x) = x` under `(q ◇ (((y ◇ z) ◇ x) ◇ x))` |
| 9 | `true_2789_898` | 55 | 120 | 4 | 0 | 0 | partial: seed plus context, unsupported inner edge | `((x ◇ ((x ◇ z) ◇ (z ◇ y))) ◇ (x ◇ x)) = y` under `(q ◇ ((x ◇ z) ◇ (z ◇ y)))` |
| 10 | `true_689_1350` | 55 | 120 | 9 | 0 | 0 | partial: seed plus context, unsupported inner edge | `(x ◇ ((x ◇ x) ◇ z)) = (((z ◇ x) ◇ x) ◇ y)` under `(y ◇ q)` |
| 11 | `true_4082_4109` | 53 | 61 | 5 | 0 | 0 | partial: seed plus context, unsupported inner edge | `(((((y ◇ z) ◇ z) ◇ y) ◇ x) ◇ x) = ((y ◇ z) ◇ z)` under `(q ◇ y)` |
| 12 | `true_3108_4642` | 20 | 120 | 0 | 0 | 0 | partial: direct h seed only, no compact context | none |
| 13 | `true_1698_555` | 20 | 120 | 0 | 0 | 0 | partial: direct h seed only, no compact context | none |
| 14 | `true_2111_1755` | 20 | 120 | 0 | 0 | 0 | partial: direct h seed only, no compact context | none |
| 15 | `true_1500_498` | 20 | 120 | 0 | 0 | 0 | partial: direct h seed only, no compact context | none |
| 16 | `true_2055_2656` | 20 | 120 | 0 | 0 | 0 | partial: direct h seed only, no compact context | none |
| 17 | `true_1636_1839` | 20 | 120 | 0 | 0 | 0 | partial: direct h seed only, no compact context | none |
| 18 | `true_2135_2128` | 15 | 16 | 0 | 0 | 0 | partial: direct h seed only, no compact context | none |

## Cluster Counts

| motif comparison cluster | count |
|---|---:|
| partial: direct h seed only, no compact context | 7 |
| partial: seed plus context, unsupported inner edge | 6 |
| near miss: seed plus context, but inner edge needs erasure lemma | 5 |

## Closest Remaining Cases

### 1. `true_1167_2000`
- Prior likely proof object: `idempotence/absorption/extension local theory`
- v0.9.6 first failure point: `no exact context extracted`
- Direct seed expansions found: 120
- Compact contexts found: 8
- Direct/symmetric h collapse edges found: 0
- Supported erasure inner edges found: 4
- Best midpoint: `((y ◇ (z ◇ z)) ◇ ((x ◇ ((y ◇ (z ◇ z)) ◇ (y ◇ (z ◇ z)))) ◇ x))`
- Best inner edge: `((x ◇ ((y ◇ (z ◇ z)) ◇ (y ◇ (z ◇ z)))) ◇ x) = (z ◇ x)`
- Best context: `fun q => ((y ◇ (z ◇ z)) ◇ q)`
- Supported family: `eraseL`

### 2. `true_691_1976`
- Prior likely proof object: `two-lemma contextual lift`
- v0.9.6 first failure point: `no exact context extracted`
- Direct seed expansions found: 120
- Compact contexts found: 8
- Direct/symmetric h collapse edges found: 0
- Supported erasure inner edges found: 4
- Best midpoint: `((y ◇ (z ◇ y)) ◇ (x ◇ ((x ◇ (y ◇ (z ◇ y))) ◇ (y ◇ (z ◇ y)))))`
- Best inner edge: `(x ◇ ((x ◇ (y ◇ (z ◇ y))) ◇ (y ◇ (z ◇ y)))) = (x ◇ y)`
- Best context: `fun q => ((y ◇ (z ◇ y)) ◇ q)`
- Supported family: `eraseR`

### 3. `true_2074_2082`
- Prior likely proof object: `argument erasure`
- v0.9.6 first failure point: `candidate lemma generated but proof failed`
- Direct seed expansions found: 120
- Compact contexts found: 10
- Direct/symmetric h collapse edges found: 0
- Supported erasure inner edges found: 3
- Best midpoint: `(((x ◇ y) ◇ z) ◇ (y ◇ x))`
- Best inner edge: `(y ◇ x) = (w ◇ x)`
- Best context: `fun q => (((x ◇ y) ◇ z) ◇ q)`
- Supported family: `eraseL`

### 4. `true_2771_2775`
- Prior likely proof object: `argument erasure`
- v0.9.6 first failure point: `candidate lemma generated but proof failed`
- Direct seed expansions found: 120
- Compact contexts found: 16
- Direct/symmetric h collapse edges found: 0
- Supported erasure inner edges found: 2
- Best midpoint: `(((y ◇ z) ◇ (x ◇ x)) ◇ y)`
- Best inner edge: `((y ◇ z) ◇ (x ◇ x)) = ((y ◇ z) ◇ (x ◇ y))`
- Best context: `fun q => (q ◇ y)`
- Supported family: `eraseR`

### 5. `true_674_668`
- Prior likely proof object: `argument erasure`
- v0.9.6 first failure point: `candidate lemma generated but proof failed`
- Direct seed expansions found: 120
- Compact contexts found: 33
- Direct/symmetric h collapse edges found: 0
- Supported erasure inner edges found: 18
- Best midpoint: `(y ◇ (x ◇ ((x ◇ x) ◇ x)))`
- Best inner edge: `(x ◇ ((x ◇ x) ◇ x)) = (x ◇ ((x ◇ x) ◇ z))`
- Best context: `fun q => (y ◇ q)`
- Supported family: `eraseR`

## Interpretation

The exact v0.9.7 motif is now consumed: no remaining true failure shows a compact context whose inner edge is directly closed by `h` or `(h ...).symm` under the current capped search. The closest residue has the same first half of the proof: a direct `h` seed expansion and an exact context. The second half changes from direct collapse to a local erasure edge such as `eraseR` or `eraseL`.

This explains why simply adding more direct seed-collapse candidates is unlikely to move many additional cases. The next useful step is to prove the extracted erasure edge with the same seed-collapse idea, but one level inward and only after an exact context is already known.

## Recommended v0.9.8 Target

Smallest safe target: **recursive local seed-collapse erasure under exact contexts**.

Rationale:
- v0.9.7 solved the only remaining case where the extracted inner edge was a direct/symmetric h collapse.
- The closest remaining cases still have direct h seed expansions and compact contexts, but their inner edges are supported eraseR/eraseL-style edges rather than direct h collapses.
- The smallest safe extension is to reuse the v0.9.7 seed-collapse bridge recursively on the extracted inner edge before falling back to broad erasure schemas.
- false_1682_411 remains a separate countermodel-search target and should not be mixed into this proof-side route.

First structural targets: `true_1167_2000`, `true_691_1976`, `true_2074_2082`, `true_2771_2775`, `true_674_668`

Safety gates:
- activate only after direct h seed expansion plus exact compact context
- support only one recursive inner seed-collapse attempt
- emit at most two local lemmas plus one congrArg lift
- do not raise global proof graph caps
- abstain unless every edge is direct h/symm h or already supported erasure shape

`false_1682_411` remains separate. This report does not run or recommend mixing targeted finite countermodel search into the proof-side motif route.
