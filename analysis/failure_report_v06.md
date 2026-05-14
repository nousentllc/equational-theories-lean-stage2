# ARCF-Prover v0.6 Failure Report

- v0.6 results: `pipeline/results/arcf_sample200_v06.json`
- v0.5 results: `pipeline/results/arcf_sample200_v05.json`
- Problems: `examples/problems/sample_200.json`
- Solver: `submissions/arcf_prover/solver.py`

## Summary

- Total failures: **31**
- True-labeled failures: **30**
- False-labeled failures: **1**

| Cluster | Count |
|---|---:|
| `likely_congruence_context_gap` | 3 |
| `likely_false_missing_countermodel` | 1 |
| `likely_projection_or_absorption` | 27 |

## v0.5 → v0.6 Comparison

| Case | Expected | Verdict | Route |
|---|---:|---|---|
| `true_1120_714` | True | `true` | `projection_absorption_rewrite` |
| `true_2137_1325` | True | `true` | `projection_absorption_rewrite` |
| `true_4616_4623` | True | `true` | `projection_absorption_rewrite` |

- Regressions: **0**

## Remaining Failures

| id | expected | eq1_id | eq2_id | cluster | hypothesis | goal |
|---|---:|---:|---:|---|---|---|
| `true_2942_5` | True | 2942 | 5 | `likely_projection_or_absorption` | x = ((y ◇ (y ◇ x)) ◇ z) ◇ x | x = y ◇ x |
| `true_3108_4642` | True | 3108 | 4642 | `likely_projection_or_absorption` | x = (((y ◇ x) ◇ x) ◇ z) ◇ x | (x ◇ y) ◇ x = (z ◇ x) ◇ x |
| `true_1167_2000` | True | 1167 | 2000 | `likely_projection_or_absorption` | x = y ◇ ((z ◇ (y ◇ y)) ◇ x) | x = (y ◇ (z ◇ z)) ◇ (z ◇ x) |
| `true_3291_3304` | True | 3291 | 3304 | `likely_congruence_context_gap` | x ◇ x = y ◇ (z ◇ (x ◇ w)) | x ◇ x = y ◇ (z ◇ (w ◇ u)) |
| `true_1698_555` | True | 1698 | 555 | `likely_projection_or_absorption` | x = (y ◇ x) ◇ ((y ◇ z) ◇ y) | x = y ◇ (z ◇ (y ◇ (x ◇ y))) |
| `true_1604_1822` | True | 1604 | 1822 | `likely_projection_or_absorption` | x = (y ◇ z) ◇ (w ◇ (x ◇ y)) | x = (y ◇ z) ◇ ((w ◇ w) ◇ y) |
| `true_2111_1755` | True | 2111 | 1755 | `likely_projection_or_absorption` | x = ((y ◇ x) ◇ z) ◇ (y ◇ x) | x = (y ◇ z) ◇ ((x ◇ x) ◇ x) |
| `true_3083_3094` | True | 3083 | 3094 | `likely_projection_or_absorption` | x = (((x ◇ y) ◇ y) ◇ z) ◇ z | x = (((x ◇ y) ◇ z) ◇ z) ◇ y |
| `true_1022_99` | True | 1022 | 99 | `likely_projection_or_absorption` | x = x ◇ ((x ◇ (x ◇ y)) ◇ x) | x = x ◇ ((x ◇ x) ◇ x) |
| `true_425_1630` | True | 425 | 1630 | `likely_projection_or_absorption` | x = x ◇ (x ◇ (y ◇ (z ◇ w))) | x = (x ◇ x) ◇ ((x ◇ x) ◇ y) |
| `true_2860_3458` | True | 2860 | 3458 | `likely_projection_or_absorption` | x = ((x ◇ (x ◇ y)) ◇ z) ◇ z | x ◇ x = x ◇ ((x ◇ y) ◇ x) |
| `true_130_1759` | True | 130 | 1759 | `likely_projection_or_absorption` | x = y ◇ ((y ◇ z) ◇ x) | x = (y ◇ z) ◇ ((x ◇ y) ◇ x) |
| `true_2061_307` | True | 2061 | 307 | `likely_projection_or_absorption` | x = ((x ◇ y) ◇ y) ◇ (x ◇ y) | x ◇ x = x ◇ (x ◇ x) |
| `true_1738_1258` | True | 1738 | 1258 | `likely_projection_or_absorption` | x = (y ◇ y) ◇ ((z ◇ x) ◇ x) | x = x ◇ (((y ◇ z) ◇ x) ◇ x) |
| `true_2654_2864` | True | 2654 | 2864 | `likely_projection_or_absorption` | x = ((x ◇ x) ◇ (y ◇ y)) ◇ z | x = ((x ◇ (y ◇ x)) ◇ x) ◇ z |
| `true_2789_898` | True | 2789 | 898 | `likely_projection_or_absorption` | x = ((y ◇ z) ◇ (y ◇ x)) ◇ z | x = y ◇ ((x ◇ z) ◇ (z ◇ y)) |
| `true_2935_3138` | True | 2935 | 3138 | `likely_projection_or_absorption` | x = ((y ◇ (x ◇ z)) ◇ w) ◇ u | x = (((y ◇ x) ◇ z) ◇ w) ◇ u |
| `true_2135_2128` | True | 2135 | 2128 | `likely_projection_or_absorption` | x = ((y ◇ y) ◇ y) ◇ (x ◇ y) | x = ((y ◇ y) ◇ x) ◇ (y ◇ y) |
| `true_428_3725` | True | 428 | 3725 | `likely_projection_or_absorption` | x = x ◇ (y ◇ (x ◇ (x ◇ z))) | x ◇ y = (x ◇ y) ◇ (y ◇ y) |
| `true_1500_498` | True | 1500 | 498 | `likely_projection_or_absorption` | x = (y ◇ x) ◇ (z ◇ (x ◇ z)) | x = y ◇ (x ◇ (z ◇ (w ◇ w))) |
| `true_691_1976` | True | 691 | 1976 | `likely_projection_or_absorption` | x = y ◇ (x ◇ ((z ◇ y) ◇ y)) | x = (y ◇ (z ◇ y)) ◇ (x ◇ y) |
| `true_2074_2082` | True | 2074 | 2082 | `likely_projection_or_absorption` | x = ((x ◇ y) ◇ z) ◇ (y ◇ x) | x = ((x ◇ y) ◇ z) ◇ (w ◇ x) |
| `true_4082_4109` | True | 4082 | 4109 | `likely_congruence_context_gap` | x ◇ x = ((y ◇ x) ◇ x) ◇ z | x ◇ x = ((y ◇ z) ◇ z) ◇ y |
| `true_2771_2775` | True | 2771 | 2775 | `likely_projection_or_absorption` | x = ((y ◇ z) ◇ (x ◇ x)) ◇ y | x = ((y ◇ z) ◇ (x ◇ y)) ◇ y |
| `true_4561_4566` | True | 4561 | 4566 | `likely_congruence_context_gap` | x ◇ (y ◇ z) = (w ◇ x) ◇ u | x ◇ (y ◇ z) = (w ◇ y) ◇ u |
| `false_1682_411` | False | 1682 | 411 | `likely_false_missing_countermodel` | x = (y ◇ x) ◇ ((x ◇ x) ◇ y) | x = x ◇ (x ◇ (x ◇ (x ◇ x))) |
| `true_1874_4357` | True | 1874 | 4357 | `likely_projection_or_absorption` | x = (x ◇ (y ◇ z)) ◇ (y ◇ w) | x ◇ (y ◇ z) = x ◇ (y ◇ w) |
| `true_2055_2656` | True | 2055 | 2656 | `likely_projection_or_absorption` | x = ((x ◇ y) ◇ x) ◇ (y ◇ z) | x = ((x ◇ x) ◇ (y ◇ z)) ◇ y |
| `true_689_1350` | True | 689 | 1350 | `likely_projection_or_absorption` | x = y ◇ (x ◇ ((z ◇ x) ◇ w)) | x = y ◇ (((z ◇ x) ◇ x) ◇ y) |
| `true_674_668` | True | 674 | 668 | `likely_projection_or_absorption` | x = y ◇ (x ◇ ((x ◇ z) ◇ z)) | x = y ◇ (x ◇ ((x ◇ x) ◇ z)) |
| `true_1636_1839` | True | 1636 | 1839 | `likely_projection_or_absorption` | x = (x ◇ x) ◇ ((y ◇ x) ◇ z) | x = (x ◇ (x ◇ y)) ◇ (x ◇ z) |

## Easiest Looking Remaining Targets

| id | cluster | score |
|---|---|---:|
| `true_2061_307` | `likely_projection_or_absorption` | 32 |
| `true_2942_5` | `likely_projection_or_absorption` | 33 |
| `true_1022_99` | `likely_projection_or_absorption` | 35 |
| `true_130_1759` | `likely_projection_or_absorption` | 35 |
| `true_2135_2128` | `likely_projection_or_absorption` | 35 |
| `true_1636_1839` | `likely_projection_or_absorption` | 37 |
| `true_2055_2656` | `likely_projection_or_absorption` | 37 |
| `true_2111_1755` | `likely_projection_or_absorption` | 37 |
| `true_2771_2775` | `likely_projection_or_absorption` | 37 |
| `true_2789_898` | `likely_projection_or_absorption` | 37 |

## Recommended v0.7 Targets

- Add a second-pass absorption rewrite route that reuses derived local rewrites across equivalent subterms instead of only the current term frontier.
- Add two-level congrArg path search with context normalization and a stricter code-size gate.
- Build an offline witness-bank entry for `false_1682_411`; avoid solver-side exhaustive Fin 4 enumeration.

## Projection/Absorption Missing Schemas

| id | schemas |
|---|---|
| `true_2942_5` | a ◇ b = b, a = b ◇ a |
| `true_3108_4642` | a ◇ b = b |
| `true_1167_2000` | a = b ◇ (... ◇ a) depth<=3 |
| `true_1698_555` | a = (... ◇ a) ◇ b depth<=3 |
| `true_1604_1822` | a = b ◇ (... ◇ a) depth<=3 |
| `true_2111_1755` | a = b ◇ (... ◇ a) depth<=3 |
| `true_3083_3094` | a = b ◇ a, a = a ◇ b, nested absorption depth<=3 |
| `true_1022_99` | a ◇ b = a, a = b ◇ (... ◇ a) depth<=3 |
| `true_425_1630` | a ◇ b = a, a = b ◇ (... ◇ a) depth<=3 |
| `true_2860_3458` | a = b ◇ a, a = a ◇ b, nested absorption depth<=3 |
| `true_130_1759` | a = b ◇ (... ◇ a) depth<=3 |
| `true_2061_307` | a = b ◇ (... ◇ a) depth<=3 |
| `true_1738_1258` | a = b ◇ (... ◇ a) depth<=3, a ◇ b = a |
| `true_2654_2864` | a = (... ◇ a) ◇ b depth<=3 |
| `true_2789_898` | a = (... ◇ a) ◇ b depth<=3, a = b ◇ (... ◇ a) depth<=3 |
| `true_2935_3138` | a = b ◇ a, a = a ◇ b, nested absorption depth<=3 |
| `true_2135_2128` | a = b ◇ (... ◇ a) depth<=3, a = (... ◇ a) ◇ b depth<=3 |
| `true_428_3725` | a ◇ b = a |
| `true_1500_498` | a = b ◇ (... ◇ a) depth<=3 |
| `true_691_1976` | a = b ◇ (... ◇ a) depth<=3 |
| `true_2074_2082` | a = b ◇ (... ◇ a) depth<=3 |
| `true_2771_2775` | a = (... ◇ a) ◇ b depth<=3 |
| `true_1874_4357` | a = (... ◇ a) ◇ b depth<=3 |
| `true_2055_2656` | a = (... ◇ a) ◇ b depth<=3 |
| `true_689_1350` | a = b ◇ a, a = a ◇ b, nested absorption depth<=3 |
| `true_674_668` | a = b ◇ a, a = a ◇ b, nested absorption depth<=3 |
| `true_1636_1839` | a = b ◇ (... ◇ a) depth<=3 |

## Congruence Context Diagnostics

| id | context | candidates | paths |
|---|---|---:|---|
| `true_3291_3304` | mixed | 0 |  |
| `true_4082_4109` | mixed | 0 |  |
| `true_4561_4566` | mixed | 0 |  |

## Proof Graph Snapshot

| id | terms | edges | lhs? | rhs? | disconnected? | near miss |
|---|---:|---:|---:|---:|---:|---|
| `true_2942_5` | 64 | 10000 | True | True | True | - |
| `true_3108_4642` | 64 | 10000 | True | True | True | - |
| `true_1167_2000` | 64 | 10000 | True | True | True | - |
| `true_3291_3304` | 64 | 10000 | True | True | True | - |
| `true_1698_555` | 64 | 10000 | True | True | True | - |
| `true_1604_1822` | 64 | 10000 | True | True | True | - |
| `true_2111_1755` | 64 | 10000 | True | True | True | - |
| `true_3083_3094` | 64 | 10000 | True | True | True | - |
| `true_1022_99` | 20 | 1312 | True | True | True | - |
| `true_425_1630` | 64 | 10000 | True | True | True | - |
| `true_2860_3458` | 64 | 10000 | True | True | True | - |
| `true_130_1759` | 64 | 10000 | True | True | True | - |
| `true_2061_307` | 12 | 450 | True | True | True | - |
| `true_1738_1258` | 64 | 10000 | True | True | True | - |
| `true_2654_2864` | 64 | 10000 | True | True | True | - |
| `true_2789_898` | 64 | 10000 | True | True | True | - |
| `true_2935_3138` | 64 | 10000 | True | True | True | - |
| `true_2135_2128` | 64 | 6272 | True | True | True | - |
| `true_428_3725` | 64 | 10000 | True | True | True | - |
| `true_1500_498` | 64 | 10000 | True | True | True | - |
| `true_691_1976` | 64 | 10000 | True | True | True | - |
| `true_2074_2082` | 64 | 10000 | True | True | True | - |
| `true_4082_4109` | 64 | 10000 | True | True | True | - |
| `true_2771_2775` | 64 | 10000 | True | True | True | - |
| `true_4561_4566` | 64 | 10000 | True | True | True | - |
| `false_1682_411` | 30 | 2450 | True | True | True | - |
| `true_1874_4357` | 64 | 10000 | True | True | True | - |
| `true_2055_2656` | 64 | 10000 | True | True | True | - |
| `true_689_1350` | 64 | 10000 | True | True | True | - |
| `true_674_668` | 64 | 10000 | True | True | True | - |
| `true_1636_1839` | 64 | 10000 | True | True | True | - |

## Per-Failure Details

### `true_2942_5`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(((v1◇(v1◇v0))◇v2)◇v0)`
- alpha goal: `v0=(v1◇v0)`
- variable counts: hypothesis=3, goal=2
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 1}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 1}
- multiplicities: hypothesis={'x': 3, 'y': 2, 'z': 1}, goal={'x': 2, 'y': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 3, 'y': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'y', 'x', 'z', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2, 'y': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [2, 1], 'repeated_variables': {'x': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(op(var,op(var,var)),var),var)', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(var,var)', 'root_pair': 'var=op'}

### `true_3108_4642`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=((((v1◇v0)◇v0)◇v2)◇v0)`
- alpha goal: `((v0◇v1)◇v0)=((v2◇v0)◇v0)`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 2, 'rhs': 2}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 2, 'rhs': 2}
- multiplicities: hypothesis={'x': 4, 'y': 1, 'z': 1}, goal={'x': 4, 'y': 1, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [4, 1, 1], 'repeated_variables': {'x': 4}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'x', 'x', 'z', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 3}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [4, 1, 1], 'repeated_variables': {'x': 4}, 'lhs_sequence': ['x', 'y', 'x'], 'rhs_sequence': ['z', 'x', 'x'], 'lhs_repeated_variables': {'x': 2}, 'rhs_repeated_variables': {'x': 2}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(op(op(var,var),var),var),var)', 'root_pair': 'var=op'}, goal={'lhs': 'op(op(var,var),var)', 'rhs': 'op(op(var,var),var)', 'root_pair': 'op=op'}

### `true_1167_2000`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(v1◇((v2◇(v1◇v1))◇v0))`
- alpha goal: `v0=((v1◇(v2◇v2))◇(v2◇v0))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 2, 'y': 3, 'z': 1}, goal={'x': 2, 'y': 1, 'z': 3}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 2, 'y': 3}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'z', 'y', 'y', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 3}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 2, 'z': 3}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'z', 'z', 'z', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'z': 3}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(var,op(op(var,op(var,var)),var))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(op(var,op(var,var)),op(var,var))', 'root_pair': 'var=op'}

### `true_3291_3304`

- cluster: `likely_congruence_context_gap` (context shape mixed remains unsolved)
- alpha hypothesis: `(v0◇v0)=(v1◇(v2◇(v0◇v3)))`
- alpha goal: `(v0◇v0)=(v1◇(v2◇(v3◇v4)))`
- variable counts: hypothesis=4, goal=5
- depths: hypothesis={'lhs': 1, 'rhs': 3}, goal={'lhs': 1, 'rhs': 3}
- ops: hypothesis={'lhs': 1, 'rhs': 3}, goal={'lhs': 1, 'rhs': 3}
- multiplicities: hypothesis={'w': 1, 'x': 3, 'y': 1, 'z': 1}, goal={'u': 1, 'w': 1, 'x': 2, 'y': 1, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 1, 1, 1], 'repeated_variables': {'x': 3}, 'lhs_sequence': ['x', 'x'], 'rhs_sequence': ['y', 'z', 'x', 'w'], 'lhs_repeated_variables': {'x': 2}, 'rhs_repeated_variables': {}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [2, 1, 1, 1, 1], 'repeated_variables': {'x': 2}, 'lhs_sequence': ['x', 'x'], 'rhs_sequence': ['y', 'z', 'w', 'u'], 'lhs_repeated_variables': {'x': 2}, 'rhs_repeated_variables': {}}
- root/operator shape: hypothesis={'lhs': 'op(var,var)', 'rhs': 'op(var,op(var,op(var,var)))', 'root_pair': 'op=op'}, goal={'lhs': 'op(var,var)', 'rhs': 'op(var,op(var,op(var,var)))', 'root_pair': 'op=op'}

### `true_1698_555`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=((v1◇v0)◇((v1◇v2)◇v1))`
- alpha goal: `v0=(v1◇(v2◇(v1◇(v0◇v1))))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 2, 'y': 3, 'z': 1}, goal={'x': 2, 'y': 3, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 2, 'y': 3}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'x', 'y', 'z', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 3}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 2, 'y': 3}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'z', 'y', 'x', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 3}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(var,var),op(op(var,var),var))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(var,op(var,op(var,op(var,var))))', 'root_pair': 'var=op'}

### `true_1604_1822`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=((v1◇v2)◇(v3◇(v0◇v1)))`
- alpha goal: `v0=((v1◇v2)◇((v3◇v3)◇v1))`
- variable counts: hypothesis=4, goal=4
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'w': 1, 'x': 2, 'y': 2, 'z': 1}, goal={'w': 2, 'x': 1, 'y': 2, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [2, 2, 1, 1], 'repeated_variables': {'x': 2, 'y': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'z', 'w', 'x', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [2, 2, 1, 1], 'repeated_variables': {'w': 2, 'y': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'z', 'w', 'w', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'w': 2, 'y': 2}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(var,var),op(var,op(var,var)))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(op(var,var),op(op(var,var),var))', 'root_pair': 'var=op'}

### `true_2111_1755`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(((v1◇v0)◇v2)◇(v1◇v0))`
- alpha goal: `v0=((v1◇v2)◇((v0◇v0)◇v0))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 3, 'y': 2, 'z': 1}, goal={'x': 4, 'y': 1, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 3, 'y': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'x', 'z', 'y', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2, 'y': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [4, 1, 1], 'repeated_variables': {'x': 4}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'z', 'x', 'x', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 3}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(op(var,var),var),op(var,var))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(op(var,var),op(op(var,var),var))', 'root_pair': 'var=op'}

### `true_3083_3094`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=((((v0◇v1)◇v1)◇v2)◇v2)`
- alpha goal: `v0=((((v0◇v1)◇v2)◇v2)◇v1)`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 2, 'y': 2, 'z': 2}, goal={'x': 2, 'y': 2, 'z': 2}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [2, 2, 2], 'repeated_variables': {'x': 2, 'y': 2, 'z': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'y', 'y', 'z', 'z'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 2, 'z': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [2, 2, 2], 'repeated_variables': {'x': 2, 'y': 2, 'z': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'y', 'z', 'z', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 2, 'z': 2}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(op(op(var,var),var),var),var)', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(op(op(op(var,var),var),var),var)', 'root_pair': 'var=op'}

### `true_1022_99`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(v0◇((v0◇(v0◇v1))◇v0))`
- alpha goal: `v0=(v0◇((v0◇v0)◇v0))`
- variable counts: hypothesis=2, goal=1
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 3}
- multiplicities: hypothesis={'x': 5, 'y': 1}, goal={'x': 5}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [5, 1], 'repeated_variables': {'x': 5}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'x', 'x', 'y', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 4}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [5], 'repeated_variables': {'x': 5}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'x', 'x', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 4}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(var,op(op(var,op(var,var)),var))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(var,op(op(var,var),var))', 'root_pair': 'var=op'}

### `true_425_1630`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(v0◇(v0◇(v1◇(v2◇v3))))`
- alpha goal: `v0=((v0◇v0)◇((v0◇v0)◇v1))`
- variable counts: hypothesis=4, goal=2
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'w': 1, 'x': 3, 'y': 1, 'z': 1}, goal={'x': 5, 'y': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 1, 1, 1], 'repeated_variables': {'x': 3}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'x', 'y', 'z', 'w'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [5, 1], 'repeated_variables': {'x': 5}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'x', 'x', 'x', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 4}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(var,op(var,op(var,op(var,var))))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(op(var,var),op(op(var,var),var))', 'root_pair': 'var=op'}

### `true_2860_3458`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(((v0◇(v0◇v1))◇v2)◇v2)`
- alpha goal: `(v0◇v0)=(v0◇((v0◇v1)◇v0))`
- variable counts: hypothesis=3, goal=2
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 1, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 1, 'rhs': 3}
- multiplicities: hypothesis={'x': 3, 'y': 1, 'z': 2}, goal={'x': 5, 'y': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 3, 'z': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'x', 'y', 'z', 'z'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2, 'z': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [5, 1], 'repeated_variables': {'x': 5}, 'lhs_sequence': ['x', 'x'], 'rhs_sequence': ['x', 'x', 'y', 'x'], 'lhs_repeated_variables': {'x': 2}, 'rhs_repeated_variables': {'x': 3}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(op(var,op(var,var)),var),var)', 'root_pair': 'var=op'}, goal={'lhs': 'op(var,var)', 'rhs': 'op(var,op(op(var,var),var))', 'root_pair': 'op=op'}

### `true_130_1759`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(v1◇((v1◇v2)◇v0))`
- alpha goal: `v0=((v1◇v2)◇((v0◇v1)◇v0))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 2, 'y': 2, 'z': 1}, goal={'x': 3, 'y': 2, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [2, 2, 1], 'repeated_variables': {'x': 2, 'y': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'y', 'z', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 3, 'y': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'z', 'x', 'y', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2, 'y': 2}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(var,op(op(var,var),var))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(op(var,var),op(op(var,var),var))', 'root_pair': 'var=op'}

### `true_2061_307`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(((v0◇v1)◇v1)◇(v0◇v1))`
- alpha goal: `(v0◇v0)=(v0◇(v0◇v0))`
- variable counts: hypothesis=2, goal=1
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 1, 'rhs': 2}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 1, 'rhs': 2}
- multiplicities: hypothesis={'x': 3, 'y': 3}, goal={'x': 5}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 3], 'repeated_variables': {'x': 3, 'y': 3}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'y', 'y', 'x', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2, 'y': 3}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [5], 'repeated_variables': {'x': 5}, 'lhs_sequence': ['x', 'x'], 'rhs_sequence': ['x', 'x', 'x'], 'lhs_repeated_variables': {'x': 2}, 'rhs_repeated_variables': {'x': 3}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(op(var,var),var),op(var,var))', 'root_pair': 'var=op'}, goal={'lhs': 'op(var,var)', 'rhs': 'op(var,op(var,var))', 'root_pair': 'op=op'}

### `true_1738_1258`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=((v1◇v1)◇((v2◇v0)◇v0))`
- alpha goal: `v0=(v0◇(((v1◇v2)◇v0)◇v0))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 3, 'y': 2, 'z': 1}, goal={'x': 4, 'y': 1, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 3, 'y': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'y', 'z', 'x', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2, 'y': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [4, 1, 1], 'repeated_variables': {'x': 4}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'y', 'z', 'x', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 3}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(var,var),op(op(var,var),var))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(var,op(op(op(var,var),var),var))', 'root_pair': 'var=op'}

### `true_2654_2864`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(((v0◇v0)◇(v1◇v1))◇v2)`
- alpha goal: `v0=(((v0◇(v1◇v0))◇v0)◇v2)`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 3, 'y': 2, 'z': 1}, goal={'x': 4, 'y': 1, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 3, 'y': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'x', 'y', 'y', 'z'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2, 'y': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [4, 1, 1], 'repeated_variables': {'x': 4}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'y', 'x', 'x', 'z'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 3}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(op(var,var),op(var,var)),var)', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(op(op(var,op(var,var)),var),var)', 'root_pair': 'var=op'}

### `true_2789_898`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(((v1◇v2)◇(v1◇v0))◇v2)`
- alpha goal: `v0=(v1◇((v0◇v2)◇(v2◇v1)))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 2, 'y': 2, 'z': 2}, goal={'x': 2, 'y': 2, 'z': 2}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [2, 2, 2], 'repeated_variables': {'x': 2, 'y': 2, 'z': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'z', 'y', 'x', 'z'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 2, 'z': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [2, 2, 2], 'repeated_variables': {'x': 2, 'y': 2, 'z': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'x', 'z', 'z', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 2, 'z': 2}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(op(var,var),op(var,var)),var)', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(var,op(op(var,var),op(var,var)))', 'root_pair': 'var=op'}

### `true_2935_3138`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(((v1◇(v0◇v2))◇v3)◇v4)`
- alpha goal: `v0=((((v1◇v0)◇v2)◇v3)◇v4)`
- variable counts: hypothesis=5, goal=5
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'u': 1, 'w': 1, 'x': 2, 'y': 1, 'z': 1}, goal={'u': 1, 'w': 1, 'x': 2, 'y': 1, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [2, 1, 1, 1, 1], 'repeated_variables': {'x': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'x', 'z', 'w', 'u'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [2, 1, 1, 1, 1], 'repeated_variables': {'x': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'x', 'z', 'w', 'u'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(op(var,op(var,var)),var),var)', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(op(op(op(var,var),var),var),var)', 'root_pair': 'var=op'}

### `true_2135_2128`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(((v1◇v1)◇v1)◇(v0◇v1))`
- alpha goal: `v0=(((v1◇v1)◇v0)◇(v1◇v1))`
- variable counts: hypothesis=2, goal=2
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 2, 'y': 4}, goal={'x': 2, 'y': 4}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [4, 2], 'repeated_variables': {'x': 2, 'y': 4}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'y', 'y', 'x', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 4}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [4, 2], 'repeated_variables': {'x': 2, 'y': 4}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'y', 'x', 'y', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 4}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(op(var,var),var),op(var,var))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(op(op(var,var),var),op(var,var))', 'root_pair': 'var=op'}

### `true_428_3725`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(v0◇(v1◇(v0◇(v0◇v2))))`
- alpha goal: `(v0◇v1)=((v0◇v1)◇(v1◇v1))`
- variable counts: hypothesis=3, goal=2
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 1, 'rhs': 2}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 1, 'rhs': 3}
- multiplicities: hypothesis={'x': 4, 'y': 1, 'z': 1}, goal={'x': 2, 'y': 4}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [4, 1, 1], 'repeated_variables': {'x': 4}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'y', 'x', 'x', 'z'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 3}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [4, 2], 'repeated_variables': {'x': 2, 'y': 4}, 'lhs_sequence': ['x', 'y'], 'rhs_sequence': ['x', 'y', 'y', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 3}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(var,op(var,op(var,op(var,var))))', 'root_pair': 'var=op'}, goal={'lhs': 'op(var,var)', 'rhs': 'op(op(var,var),op(var,var))', 'root_pair': 'op=op'}

### `true_1500_498`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=((v1◇v0)◇(v2◇(v0◇v2)))`
- alpha goal: `v0=(v1◇(v0◇(v2◇(v3◇v3))))`
- variable counts: hypothesis=3, goal=4
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 3, 'y': 1, 'z': 2}, goal={'w': 2, 'x': 2, 'y': 1, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 3, 'z': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'x', 'z', 'x', 'z'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2, 'z': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [2, 2, 1, 1], 'repeated_variables': {'w': 2, 'x': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'x', 'z', 'w', 'w'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'w': 2}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(var,var),op(var,op(var,var)))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(var,op(var,op(var,op(var,var))))', 'root_pair': 'var=op'}

### `true_691_1976`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(v1◇(v0◇((v2◇v1)◇v1)))`
- alpha goal: `v0=((v1◇(v2◇v1))◇(v0◇v1))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 2, 'y': 3, 'z': 1}, goal={'x': 2, 'y': 3, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 2, 'y': 3}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'x', 'z', 'y', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 3}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 2, 'y': 3}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'z', 'y', 'x', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 3}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(var,op(var,op(op(var,var),var)))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(op(var,op(var,var)),op(var,var))', 'root_pair': 'var=op'}

### `true_2074_2082`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(((v0◇v1)◇v2)◇(v1◇v0))`
- alpha goal: `v0=(((v0◇v1)◇v2)◇(v3◇v0))`
- variable counts: hypothesis=3, goal=4
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 3, 'y': 2, 'z': 1}, goal={'w': 1, 'x': 3, 'y': 1, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 3, 'y': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'y', 'z', 'y', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2, 'y': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [3, 1, 1, 1], 'repeated_variables': {'x': 3}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'y', 'z', 'w', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(op(var,var),var),op(var,var))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(op(op(var,var),var),op(var,var))', 'root_pair': 'var=op'}

### `true_4082_4109`

- cluster: `likely_congruence_context_gap` (context shape mixed remains unsolved)
- alpha hypothesis: `(v0◇v0)=(((v1◇v0)◇v0)◇v2)`
- alpha goal: `(v0◇v0)=(((v1◇v2)◇v2)◇v1)`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 1, 'rhs': 3}, goal={'lhs': 1, 'rhs': 3}
- ops: hypothesis={'lhs': 1, 'rhs': 3}, goal={'lhs': 1, 'rhs': 3}
- multiplicities: hypothesis={'x': 4, 'y': 1, 'z': 1}, goal={'x': 2, 'y': 2, 'z': 2}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [4, 1, 1], 'repeated_variables': {'x': 4}, 'lhs_sequence': ['x', 'x'], 'rhs_sequence': ['y', 'x', 'x', 'z'], 'lhs_repeated_variables': {'x': 2}, 'rhs_repeated_variables': {'x': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [2, 2, 2], 'repeated_variables': {'x': 2, 'y': 2, 'z': 2}, 'lhs_sequence': ['x', 'x'], 'rhs_sequence': ['y', 'z', 'z', 'y'], 'lhs_repeated_variables': {'x': 2}, 'rhs_repeated_variables': {'y': 2, 'z': 2}}
- root/operator shape: hypothesis={'lhs': 'op(var,var)', 'rhs': 'op(op(op(var,var),var),var)', 'root_pair': 'op=op'}, goal={'lhs': 'op(var,var)', 'rhs': 'op(op(op(var,var),var),var)', 'root_pair': 'op=op'}

### `true_2771_2775`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(((v1◇v2)◇(v0◇v0))◇v1)`
- alpha goal: `v0=(((v1◇v2)◇(v0◇v1))◇v1)`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 3, 'y': 2, 'z': 1}, goal={'x': 2, 'y': 3, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 3, 'y': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'z', 'x', 'x', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2, 'y': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 2, 'y': 3}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'z', 'x', 'y', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 3}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(op(var,var),op(var,var)),var)', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(op(op(var,var),op(var,var)),var)', 'root_pair': 'var=op'}

### `true_4561_4566`

- cluster: `likely_congruence_context_gap` (context shape mixed remains unsolved)
- alpha hypothesis: `(v0◇(v1◇v2))=((v3◇v0)◇v4)`
- alpha goal: `(v0◇(v1◇v2))=((v3◇v1)◇v4)`
- variable counts: hypothesis=5, goal=5
- depths: hypothesis={'lhs': 2, 'rhs': 2}, goal={'lhs': 2, 'rhs': 2}
- ops: hypothesis={'lhs': 2, 'rhs': 2}, goal={'lhs': 2, 'rhs': 2}
- multiplicities: hypothesis={'u': 1, 'w': 1, 'x': 2, 'y': 1, 'z': 1}, goal={'u': 1, 'w': 1, 'x': 1, 'y': 2, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [2, 1, 1, 1, 1], 'repeated_variables': {'x': 2}, 'lhs_sequence': ['x', 'y', 'z'], 'rhs_sequence': ['w', 'x', 'u'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [2, 1, 1, 1, 1], 'repeated_variables': {'y': 2}, 'lhs_sequence': ['x', 'y', 'z'], 'rhs_sequence': ['w', 'y', 'u'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {}}
- root/operator shape: hypothesis={'lhs': 'op(var,op(var,var))', 'rhs': 'op(op(var,var),var)', 'root_pair': 'op=op'}, goal={'lhs': 'op(var,op(var,var))', 'rhs': 'op(op(var,var),var)', 'root_pair': 'op=op'}

### `false_1682_411`

- cluster: `likely_false_missing_countermodel` (expected false and no tested deterministic witness remains)
- alpha hypothesis: `v0=((v1◇v0)◇((v0◇v0)◇v1))`
- alpha goal: `v0=(v0◇(v0◇(v0◇(v0◇v0))))`
- variable counts: hypothesis=2, goal=1
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 4, 'y': 2}, goal={'x': 6}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [4, 2], 'repeated_variables': {'x': 4, 'y': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'x', 'x', 'x', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 3, 'y': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [6], 'repeated_variables': {'x': 6}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'x', 'x', 'x', 'x'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 5}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(var,var),op(op(var,var),var))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(var,op(var,op(var,op(var,var))))', 'root_pair': 'var=op'}

### `true_1874_4357`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=((v0◇(v1◇v2))◇(v1◇v3))`
- alpha goal: `(v0◇(v1◇v2))=(v0◇(v1◇v3))`
- variable counts: hypothesis=4, goal=4
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 2, 'rhs': 2}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 2, 'rhs': 2}
- multiplicities: hypothesis={'w': 1, 'x': 2, 'y': 2, 'z': 1}, goal={'w': 1, 'x': 2, 'y': 2, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [2, 2, 1, 1], 'repeated_variables': {'x': 2, 'y': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'y', 'z', 'y', 'w'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'y': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [2, 2, 1, 1], 'repeated_variables': {'x': 2, 'y': 2}, 'lhs_sequence': ['x', 'y', 'z'], 'rhs_sequence': ['x', 'y', 'w'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(var,op(var,var)),op(var,var))', 'root_pair': 'var=op'}, goal={'lhs': 'op(var,op(var,var))', 'rhs': 'op(var,op(var,var))', 'root_pair': 'op=op'}

### `true_2055_2656`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(((v0◇v1)◇v0)◇(v1◇v2))`
- alpha goal: `v0=(((v0◇v0)◇(v1◇v2))◇v1)`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 3, 'y': 2, 'z': 1}, goal={'x': 3, 'y': 2, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 3, 'y': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'y', 'x', 'y', 'z'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2, 'y': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 3, 'y': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'x', 'y', 'z', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2, 'y': 2}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(op(var,var),var),op(var,var))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(op(op(var,var),op(var,var)),var)', 'root_pair': 'var=op'}

### `true_689_1350`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(v1◇(v0◇((v2◇v0)◇v3)))`
- alpha goal: `v0=(v1◇(((v2◇v0)◇v0)◇v1))`
- variable counts: hypothesis=4, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'w': 1, 'x': 3, 'y': 1, 'z': 1}, goal={'x': 3, 'y': 2, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 1, 1, 1], 'repeated_variables': {'x': 3}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'x', 'z', 'x', 'w'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 3, 'y': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'z', 'x', 'x', 'y'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2, 'y': 2}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(var,op(var,op(op(var,var),var)))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(var,op(op(op(var,var),var),var))', 'root_pair': 'var=op'}

### `true_674_668`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=(v1◇(v0◇((v0◇v2)◇v2)))`
- alpha goal: `v0=(v1◇(v0◇((v0◇v0)◇v2)))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 3, 'y': 1, 'z': 2}, goal={'x': 4, 'y': 1, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [3, 2, 1], 'repeated_variables': {'x': 3, 'z': 2}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'x', 'x', 'z', 'z'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 2, 'z': 2}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [4, 1, 1], 'repeated_variables': {'x': 4}, 'lhs_sequence': ['x'], 'rhs_sequence': ['y', 'x', 'x', 'x', 'z'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 3}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(var,op(var,op(op(var,var),var)))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(var,op(var,op(op(var,var),var)))', 'root_pair': 'var=op'}

### `true_1636_1839`

- cluster: `likely_projection_or_absorption` (projection/absorption shape remains after v0.6)
- alpha hypothesis: `v0=((v0◇v0)◇((v1◇v0)◇v2))`
- alpha goal: `v0=((v0◇(v0◇v1))◇(v0◇v2))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- multiplicities: hypothesis={'x': 4, 'y': 1, 'z': 1}, goal={'x': 4, 'y': 1, 'z': 1}
- repeated pattern: hypothesis={'has_repeated_variables': True, 'multiplicity_signature': [4, 1, 1], 'repeated_variables': {'x': 4}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'x', 'y', 'x', 'z'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 3}}, goal={'has_repeated_variables': True, 'multiplicity_signature': [4, 1, 1], 'repeated_variables': {'x': 4}, 'lhs_sequence': ['x'], 'rhs_sequence': ['x', 'x', 'y', 'x', 'z'], 'lhs_repeated_variables': {}, 'rhs_repeated_variables': {'x': 3}}
- root/operator shape: hypothesis={'lhs': 'var', 'rhs': 'op(op(var,var),op(op(var,var),var))', 'root_pair': 'var=op'}, goal={'lhs': 'var', 'rhs': 'op(op(var,op(var,var)),op(var,var))', 'root_pair': 'var=op'}
