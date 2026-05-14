# ARCF-Prover v0.8 Failure and Near-Miss Report

Inputs:
- `pipeline/results/arcf_sample200_v08.json`
- `pipeline/results/arcf_sample200_v07.json`
- `examples/problems/sample_200.json`
- `submissions/arcf_prover/solver.py`

No solver changes, Lean judge calls, or finite-model probes were performed for this report.

## Summary

- Remaining unsolved/no-judge-attempt cases: **28**
- True-labeled unsolved: **27**
- False-labeled unsolved: **1**
- Newly solved vs v0.7: **2**
- Regressions vs v0.7: **0**

### v0.7 → v0.8 Comparison

| case | expected | eq1_id | eq2_id | route | verdict |
|---|---:|---:|---:|---|---|
| `true_3291_3304` | True | 3291 | 3304 | `derived_rewrite_edge` | `true` |
| `true_4561_4566` | True | 4561 | 4566 | `derived_rewrite_edge` | `true` |

Regressions: **0**

## Remaining Cases

| id | expected | eq1_id | eq2_id | cluster | next likely fix | hypothesis | goal |
|---|---:|---:|---:|---|---|---|---|
| `true_2942_5` | True | 2942 | 5 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = ((y ◇ (y ◇ x)) ◇ z) ◇ x | x = y ◇ x |
| `true_3108_4642` | True | 3108 | 4642 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = (((y ◇ x) ◇ x) ◇ z) ◇ x | (x ◇ y) ◇ x = (z ◇ x) ◇ x |
| `true_1167_2000` | True | 1167 | 2000 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = y ◇ ((z ◇ (y ◇ y)) ◇ x) | x = (y ◇ (z ◇ z)) ◇ (z ◇ x) |
| `true_1698_555` | True | 1698 | 555 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = (y ◇ x) ◇ ((y ◇ z) ◇ y) | x = y ◇ (z ◇ (y ◇ (x ◇ y))) |
| `true_1604_1822` | True | 1604 | 1822 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = (y ◇ z) ◇ (w ◇ (x ◇ y)) | x = (y ◇ z) ◇ ((w ◇ w) ◇ y) |
| `true_2111_1755` | True | 2111 | 1755 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = ((y ◇ x) ◇ z) ◇ (y ◇ x) | x = (y ◇ z) ◇ ((x ◇ x) ◇ x) |
| `true_3083_3094` | True | 3083 | 3094 | `likely_projection_or_absorption` | `missing_rotation/context-shift` | x = (((x ◇ y) ◇ y) ◇ z) ◇ z | x = (((x ◇ y) ◇ z) ◇ z) ◇ y |
| `true_1022_99` | True | 1022 | 99 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = x ◇ ((x ◇ (x ◇ y)) ◇ x) | x = x ◇ ((x ◇ x) ◇ x) |
| `true_425_1630` | True | 425 | 1630 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = x ◇ (x ◇ (y ◇ (z ◇ w))) | x = (x ◇ x) ◇ ((x ◇ x) ◇ y) |
| `true_2860_3458` | True | 2860 | 3458 | `likely_projection_or_absorption` | `missing_rotation/context-shift` | x = ((x ◇ (x ◇ y)) ◇ z) ◇ z | x ◇ x = x ◇ ((x ◇ y) ◇ x) |
| `true_130_1759` | True | 130 | 1759 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = y ◇ ((y ◇ z) ◇ x) | x = (y ◇ z) ◇ ((x ◇ y) ◇ x) |
| `true_2061_307` | True | 2061 | 307 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = ((x ◇ y) ◇ y) ◇ (x ◇ y) | x ◇ x = x ◇ (x ◇ x) |
| `true_1738_1258` | True | 1738 | 1258 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = (y ◇ y) ◇ ((z ◇ x) ◇ x) | x = x ◇ (((y ◇ z) ◇ x) ◇ x) |
| `true_2654_2864` | True | 2654 | 2864 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = ((x ◇ x) ◇ (y ◇ y)) ◇ z | x = ((x ◇ (y ◇ x)) ◇ x) ◇ z |
| `true_2789_898` | True | 2789 | 898 | `likely_projection_or_absorption` | `missing_rotation/context-shift` | x = ((y ◇ z) ◇ (y ◇ x)) ◇ z | x = y ◇ ((x ◇ z) ◇ (z ◇ y)) |
| `true_2135_2128` | True | 2135 | 2128 | `likely_projection_or_absorption` | `missing_rotation/context-shift` | x = ((y ◇ y) ◇ y) ◇ (x ◇ y) | x = ((y ◇ y) ◇ x) ◇ (y ◇ y) |
| `true_428_3725` | True | 428 | 3725 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = x ◇ (y ◇ (x ◇ (x ◇ z))) | x ◇ y = (x ◇ y) ◇ (y ◇ y) |
| `true_1500_498` | True | 1500 | 498 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = (y ◇ x) ◇ (z ◇ (x ◇ z)) | x = y ◇ (x ◇ (z ◇ (w ◇ w))) |
| `true_691_1976` | True | 691 | 1976 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = y ◇ (x ◇ ((z ◇ y) ◇ y)) | x = (y ◇ (z ◇ y)) ◇ (x ◇ y) |
| `true_2074_2082` | True | 2074 | 2082 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = ((x ◇ y) ◇ z) ◇ (y ◇ x) | x = ((x ◇ y) ◇ z) ◇ (w ◇ x) |
| `true_4082_4109` | True | 4082 | 4109 | `likely_congruence_context_gap` | `missing_context_bridge` | x ◇ x = ((y ◇ x) ◇ x) ◇ z | x ◇ x = ((y ◇ z) ◇ z) ◇ y |
| `true_2771_2775` | True | 2771 | 2775 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = ((y ◇ z) ◇ (x ◇ x)) ◇ y | x = ((y ◇ z) ◇ (x ◇ y)) ◇ y |
| `false_1682_411` | False | 1682 | 411 | `likely_false_missing_countermodel` | `likely_false_missing_countermodel` | x = (y ◇ x) ◇ ((x ◇ x) ◇ y) | x = x ◇ (x ◇ (x ◇ (x ◇ x))) |
| `true_1874_4357` | True | 1874 | 4357 | `likely_congruence_context_gap` | `missing_context_bridge` | x = (x ◇ (y ◇ z)) ◇ (y ◇ w) | x ◇ (y ◇ z) = x ◇ (y ◇ w) |
| `true_2055_2656` | True | 2055 | 2656 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = ((x ◇ y) ◇ x) ◇ (y ◇ z) | x = ((x ◇ x) ◇ (y ◇ z)) ◇ y |
| `true_689_1350` | True | 689 | 1350 | `likely_projection_or_absorption` | `missing_rotation/context-shift` | x = y ◇ (x ◇ ((z ◇ x) ◇ w)) | x = y ◇ (((z ◇ x) ◇ x) ◇ y) |
| `true_674_668` | True | 674 | 668 | `likely_projection_or_absorption` | `missing_rotation/context-shift` | x = y ◇ (x ◇ ((x ◇ z) ◇ z)) | x = y ◇ (x ◇ ((x ◇ x) ◇ z)) |
| `true_1636_1839` | True | 1636 | 1839 | `likely_projection_or_absorption` | `missing_nested_absorption_edge` | x = (x ◇ x) ◇ ((y ◇ x) ◇ z) | x = (x ◇ (x ◇ y)) ◇ (x ◇ z) |

## Grouped By Next Likely Fix

| next likely fix | count | cases |
|---|---:|---|
| `missing_nested_absorption_edge` | 19 | `true_2942_5`, `true_3108_4642`, `true_1167_2000`, `true_1698_555`, `true_1604_1822`, `true_2111_1755`, `true_1022_99`, `true_425_1630`, `true_130_1759`, `true_2061_307`, `true_1738_1258`, `true_2654_2864`, … |
| `missing_rotation/context-shift` | 6 | `true_3083_3094`, `true_2860_3458`, `true_2789_898`, `true_2135_2128`, `true_689_1350`, `true_674_668` |
| `missing_context_bridge` | 2 | `true_4082_4109`, `true_1874_4357` |
| `likely_false_missing_countermodel` | 1 | `false_1682_411` |

## Derived Rewrite Edge Diagnostics

| id | targets | partial path? | failure mode | target stop reasons | graph lhs/rhs | graph edges | disconnected at cap? |
|---|---:|---:|---|---|---|---:|---:|
| `true_2942_5` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_3108_4642` | 2 | True | `cap_gate_failed_no_meet` | node_cap_400:2 | True/True | 10000 | True |
| `true_1167_2000` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_1698_555` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_1604_1822` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_2111_1755` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_3083_3094` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_1022_99` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 1312 | False |
| `true_425_1630` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_2860_3458` | 2 | True | `cap_gate_failed_no_meet` | node_cap_400:2 | True/True | 10000 | True |
| `true_130_1759` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_2061_307` | 2 | True | `cap_gate_failed_no_meet` | node_cap_400:2 | True/True | 450 | False |
| `true_1738_1258` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_2654_2864` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_2789_898` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_2135_2128` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 6272 | False |
| `true_428_3725` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_1500_498` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_691_1976` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_2074_2082` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_4082_4109` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_2771_2775` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `false_1682_411` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 2450 | False |
| `true_1874_4357` | 3 | True | `cap_gate_failed_no_meet` | node_cap_400:3 | True/True | 10000 | True |
| `true_2055_2656` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_689_1350` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_674_668` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |
| `true_1636_1839` | 1 | True | `cap_gate_failed_no_meet` | node_cap_400:1 | True/True | 10000 | True |

## Near-Miss Notes

- Cases with at least one derived-edge partial path: **28**
- Cases hitting the v0.8 derived-edge node cap without a meet: **28**
- Cases whose cached proof graph still had LHS/RHS present but disconnected at the 10k edge cap: **24**
- Interpretation: the cap is being reached because the missing edge families are still too unstructured; the next fix should add semantic nested-absorption/context-bridge edges before raising caps.

## Per-Case Details

### `true_2942_5`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = ((y ◇ (y ◇ x)) ◇ z) ◇ x
- goal: x = y ◇ x
- candidate missing schemas: a ◇ b = b, a = b ◇ a
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = (y ◇ x)`; stop=`node_cap_400`; expanded=400

### `true_3108_4642`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = (((y ◇ x) ◇ x) ◇ z) ◇ x
- goal: (x ◇ y) ◇ x = (z ◇ x) ◇ x
- candidate missing schemas: a ◇ b = b
- derived edge targets: 2; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `((x ◇ y) ◇ x) = ((z ◇ x) ◇ x)`; stop=`node_cap_400`; expanded=400
  - `L`: `(x ◇ y) = (z ◇ x)`; stop=`node_cap_400`; expanded=400

### `true_1167_2000`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = y ◇ ((z ◇ (y ◇ y)) ◇ x)
- goal: x = (y ◇ (z ◇ z)) ◇ (z ◇ x)
- candidate missing schemas: a = b ◇ (... ◇ a) depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = ((y ◇ (z ◇ z)) ◇ (z ◇ x))`; stop=`node_cap_400`; expanded=400

### `true_1698_555`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = (y ◇ x) ◇ ((y ◇ z) ◇ y)
- goal: x = y ◇ (z ◇ (y ◇ (x ◇ y)))
- candidate missing schemas: a = (... ◇ a) ◇ b depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = (y ◇ (z ◇ (y ◇ (x ◇ y))))`; stop=`node_cap_400`; expanded=400

### `true_1604_1822`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = (y ◇ z) ◇ (w ◇ (x ◇ y))
- goal: x = (y ◇ z) ◇ ((w ◇ w) ◇ y)
- candidate missing schemas: a = b ◇ (... ◇ a) depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = ((y ◇ z) ◇ ((w ◇ w) ◇ y))`; stop=`node_cap_400`; expanded=400

### `true_2111_1755`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = ((y ◇ x) ◇ z) ◇ (y ◇ x)
- goal: x = (y ◇ z) ◇ ((x ◇ x) ◇ x)
- candidate missing schemas: a = b ◇ (... ◇ a) depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = ((y ◇ z) ◇ ((x ◇ x) ◇ x))`; stop=`node_cap_400`; expanded=400

### `true_3083_3094`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_rotation/context-shift`
- hypothesis: x = (((x ◇ y) ◇ y) ◇ z) ◇ z
- goal: x = (((x ◇ y) ◇ z) ◇ z) ◇ y
- candidate missing schemas: a = b ◇ a, a = a ◇ b, nested absorption depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = ((((x ◇ y) ◇ z) ◇ z) ◇ y)`; stop=`node_cap_400`; expanded=400

### `true_1022_99`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = x ◇ ((x ◇ (x ◇ y)) ◇ x)
- goal: x = x ◇ ((x ◇ x) ◇ x)
- candidate missing schemas: a ◇ b = a, a = b ◇ (... ◇ a) depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=1312, disconnected_at_edge_cap=False
- extracted target sample:
  - `root`: `x = (x ◇ ((x ◇ x) ◇ x))`; stop=`node_cap_400`; expanded=400

### `true_425_1630`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = x ◇ (x ◇ (y ◇ (z ◇ w)))
- goal: x = (x ◇ x) ◇ ((x ◇ x) ◇ y)
- candidate missing schemas: a ◇ b = a, a = b ◇ (... ◇ a) depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = ((x ◇ x) ◇ ((x ◇ x) ◇ y))`; stop=`node_cap_400`; expanded=400

### `true_2860_3458`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_rotation/context-shift`
- hypothesis: x = ((x ◇ (x ◇ y)) ◇ z) ◇ z
- goal: x ◇ x = x ◇ ((x ◇ y) ◇ x)
- candidate missing schemas: a = b ◇ a, a = a ◇ b, nested absorption depth<=3
- derived edge targets: 2; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `(x ◇ x) = (x ◇ ((x ◇ y) ◇ x))`; stop=`node_cap_400`; expanded=400
  - `R`: `x = ((x ◇ y) ◇ x)`; stop=`node_cap_400`; expanded=400

### `true_130_1759`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = y ◇ ((y ◇ z) ◇ x)
- goal: x = (y ◇ z) ◇ ((x ◇ y) ◇ x)
- candidate missing schemas: a = b ◇ (... ◇ a) depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = ((y ◇ z) ◇ ((x ◇ y) ◇ x))`; stop=`node_cap_400`; expanded=400

### `true_2061_307`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = ((x ◇ y) ◇ y) ◇ (x ◇ y)
- goal: x ◇ x = x ◇ (x ◇ x)
- candidate missing schemas: a = b ◇ (... ◇ a) depth<=3
- derived edge targets: 2; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=450, disconnected_at_edge_cap=False
- extracted target sample:
  - `root`: `(x ◇ x) = (x ◇ (x ◇ x))`; stop=`node_cap_400`; expanded=400
  - `R`: `x = (x ◇ x)`; stop=`node_cap_400`; expanded=400

### `true_1738_1258`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = (y ◇ y) ◇ ((z ◇ x) ◇ x)
- goal: x = x ◇ (((y ◇ z) ◇ x) ◇ x)
- candidate missing schemas: a = b ◇ (... ◇ a) depth<=3, a ◇ b = a
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = (x ◇ (((y ◇ z) ◇ x) ◇ x))`; stop=`node_cap_400`; expanded=400

### `true_2654_2864`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = ((x ◇ x) ◇ (y ◇ y)) ◇ z
- goal: x = ((x ◇ (y ◇ x)) ◇ x) ◇ z
- candidate missing schemas: a = (... ◇ a) ◇ b depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = (((x ◇ (y ◇ x)) ◇ x) ◇ z)`; stop=`node_cap_400`; expanded=400

### `true_2789_898`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_rotation/context-shift`
- hypothesis: x = ((y ◇ z) ◇ (y ◇ x)) ◇ z
- goal: x = y ◇ ((x ◇ z) ◇ (z ◇ y))
- candidate missing schemas: a = (... ◇ a) ◇ b depth<=3, a = b ◇ (... ◇ a) depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = (y ◇ ((x ◇ z) ◇ (z ◇ y)))`; stop=`node_cap_400`; expanded=400

### `true_2135_2128`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_rotation/context-shift`
- hypothesis: x = ((y ◇ y) ◇ y) ◇ (x ◇ y)
- goal: x = ((y ◇ y) ◇ x) ◇ (y ◇ y)
- candidate missing schemas: a = b ◇ (... ◇ a) depth<=3, a = (... ◇ a) ◇ b depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=6272, disconnected_at_edge_cap=False
- extracted target sample:
  - `root`: `x = (((y ◇ y) ◇ x) ◇ (y ◇ y))`; stop=`node_cap_400`; expanded=400

### `true_428_3725`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = x ◇ (y ◇ (x ◇ (x ◇ z)))
- goal: x ◇ y = (x ◇ y) ◇ (y ◇ y)
- candidate missing schemas: a ◇ b = a
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `(x ◇ y) = ((x ◇ y) ◇ (y ◇ y))`; stop=`node_cap_400`; expanded=400

### `true_1500_498`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = (y ◇ x) ◇ (z ◇ (x ◇ z))
- goal: x = y ◇ (x ◇ (z ◇ (w ◇ w)))
- candidate missing schemas: a = b ◇ (... ◇ a) depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = (y ◇ (x ◇ (z ◇ (w ◇ w))))`; stop=`node_cap_400`; expanded=400

### `true_691_1976`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = y ◇ (x ◇ ((z ◇ y) ◇ y))
- goal: x = (y ◇ (z ◇ y)) ◇ (x ◇ y)
- candidate missing schemas: a = b ◇ (... ◇ a) depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = ((y ◇ (z ◇ y)) ◇ (x ◇ y))`; stop=`node_cap_400`; expanded=400

### `true_2074_2082`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = ((x ◇ y) ◇ z) ◇ (y ◇ x)
- goal: x = ((x ◇ y) ◇ z) ◇ (w ◇ x)
- candidate missing schemas: a = b ◇ (... ◇ a) depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = (((x ◇ y) ◇ z) ◇ (w ◇ x))`; stop=`node_cap_400`; expanded=400

### `true_4082_4109`

- expected: `True`; cluster: `likely_congruence_context_gap`; next fix: `missing_context_bridge`
- hypothesis: x ◇ x = ((y ◇ x) ◇ x) ◇ z
- goal: x ◇ x = ((y ◇ z) ◇ z) ◇ y
- candidate missing schemas: a = b ◇ a, a = a ◇ b, nested absorption depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `(x ◇ x) = (((y ◇ z) ◇ z) ◇ y)`; stop=`node_cap_400`; expanded=400

### `true_2771_2775`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = ((y ◇ z) ◇ (x ◇ x)) ◇ y
- goal: x = ((y ◇ z) ◇ (x ◇ y)) ◇ y
- candidate missing schemas: a = (... ◇ a) ◇ b depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = (((y ◇ z) ◇ (x ◇ y)) ◇ y)`; stop=`node_cap_400`; expanded=400

### `false_1682_411`

- expected: `False`; cluster: `likely_false_missing_countermodel`; next fix: `likely_false_missing_countermodel`
- hypothesis: x = (y ◇ x) ◇ ((x ◇ x) ◇ y)
- goal: x = x ◇ (x ◇ (x ◇ (x ◇ x)))
- candidate missing schemas: -
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=2450, disconnected_at_edge_cap=False
- extracted target sample:
  - `root`: `x = (x ◇ (x ◇ (x ◇ (x ◇ x))))`; stop=`node_cap_400`; expanded=400

### `true_1874_4357`

- expected: `True`; cluster: `likely_congruence_context_gap`; next fix: `missing_context_bridge`
- hypothesis: x = (x ◇ (y ◇ z)) ◇ (y ◇ w)
- goal: x ◇ (y ◇ z) = x ◇ (y ◇ w)
- candidate missing schemas: a = (... ◇ a) ◇ b depth<=3
- derived edge targets: 3; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `(x ◇ (y ◇ z)) = (x ◇ (y ◇ w))`; stop=`node_cap_400`; expanded=400
  - `R`: `(y ◇ z) = (y ◇ w)`; stop=`node_cap_400`; expanded=400
  - `RR`: `z = w`; stop=`node_cap_400`; expanded=400

### `true_2055_2656`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = ((x ◇ y) ◇ x) ◇ (y ◇ z)
- goal: x = ((x ◇ x) ◇ (y ◇ z)) ◇ y
- candidate missing schemas: a = (... ◇ a) ◇ b depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = (((x ◇ x) ◇ (y ◇ z)) ◇ y)`; stop=`node_cap_400`; expanded=400

### `true_689_1350`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_rotation/context-shift`
- hypothesis: x = y ◇ (x ◇ ((z ◇ x) ◇ w))
- goal: x = y ◇ (((z ◇ x) ◇ x) ◇ y)
- candidate missing schemas: a = b ◇ a, a = a ◇ b, nested absorption depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = (y ◇ (((z ◇ x) ◇ x) ◇ y))`; stop=`node_cap_400`; expanded=400

### `true_674_668`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_rotation/context-shift`
- hypothesis: x = y ◇ (x ◇ ((x ◇ z) ◇ z))
- goal: x = y ◇ (x ◇ ((x ◇ x) ◇ z))
- candidate missing schemas: a = b ◇ a, a = a ◇ b, nested absorption depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = (y ◇ (x ◇ ((x ◇ x) ◇ z)))`; stop=`node_cap_400`; expanded=400

### `true_1636_1839`

- expected: `True`; cluster: `likely_projection_or_absorption`; next fix: `missing_nested_absorption_edge`
- hypothesis: x = (x ◇ x) ◇ ((y ◇ x) ◇ z)
- goal: x = (x ◇ (x ◇ y)) ◇ (x ◇ z)
- candidate missing schemas: a = b ◇ (... ◇ a) depth<=3
- derived edge targets: 1; partial path: `True`; failure mode: `cap_gate_failed_no_meet`
- proof graph: lhs=True, rhs=True, edges=10000, disconnected_at_edge_cap=True
- extracted target sample:
  - `root`: `x = ((x ◇ (x ◇ y)) ◇ (x ◇ z))`; stop=`node_cap_400`; expanded=400

## Recommended v0.8.1 / v0.9 Targets

1. Add a nested-absorption schema prover for a = b ◇ (... ◇ a) and a = (... ◇ a) ◇ b, then expose those as derived rewrite edges before bidirectional endpoint search.
2. Add a second context-bridge pass for two-level/mixed contexts, reusing the v0.8 bidirectional edge search on inner pairs and allowing one explicit common-midpoint lemma.
