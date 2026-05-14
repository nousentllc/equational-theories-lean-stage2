# ARCF-Prover v0.5 Failure Report

- Results: `pipeline/results/arcf_sample200_v05.json`
- Problems: `examples/problems/sample_200.json`
- Solver: `submissions/arcf_prover/solver.py`
- Total failures: **34**
- True-labeled failures: **33**
- False-labeled failures: **1**

## Count By Cluster

| Cluster | Count |
|---|---:|
| `likely_congruence_context_gap` | 4 |
| `likely_false_missing_countermodel` | 1 |
| `likely_projection_or_absorption` | 29 |

## Compact Failure Table

| id | expected | eq1_id | eq2_id | cluster | hypothesis | goal |
|---|---:|---:|---:|---|---|---|
| `true_2942_5` | True | 2942 | 5 | `likely_projection_or_absorption` | x = ((y ◇ (y ◇ x)) ◇ z) ◇ x | x = y ◇ x |
| `true_3108_4642` | True | 3108 | 4642 | `likely_projection_or_absorption` | x = (((y ◇ x) ◇ x) ◇ z) ◇ x | (x ◇ y) ◇ x = (z ◇ x) ◇ x |
| `true_1167_2000` | True | 1167 | 2000 | `likely_projection_or_absorption` | x = y ◇ ((z ◇ (y ◇ y)) ◇ x) | x = (y ◇ (z ◇ z)) ◇ (z ◇ x) |
| `true_3291_3304` | True | 3291 | 3304 | `likely_congruence_context_gap` | x ◇ x = y ◇ (z ◇ (x ◇ w)) | x ◇ x = y ◇ (z ◇ (w ◇ u)) |
| `true_1698_555` | True | 1698 | 555 | `likely_projection_or_absorption` | x = (y ◇ x) ◇ ((y ◇ z) ◇ y) | x = y ◇ (z ◇ (y ◇ (x ◇ y))) |
| `true_1604_1822` | True | 1604 | 1822 | `likely_projection_or_absorption` | x = (y ◇ z) ◇ (w ◇ (x ◇ y)) | x = (y ◇ z) ◇ ((w ◇ w) ◇ y) |
| `true_2111_1755` | True | 2111 | 1755 | `likely_projection_or_absorption` | x = ((y ◇ x) ◇ z) ◇ (y ◇ x) | x = (y ◇ z) ◇ ((x ◇ x) ◇ x) |
| `true_1120_714` | True | 1120 | 714 | `likely_projection_or_absorption` | x = y ◇ ((y ◇ (y ◇ x)) ◇ y) | x = y ◇ (y ◇ ((y ◇ x) ◇ y)) |
| `true_3083_3094` | True | 3083 | 3094 | `likely_projection_or_absorption` | x = (((x ◇ y) ◇ y) ◇ z) ◇ z | x = (((x ◇ y) ◇ z) ◇ z) ◇ y |
| `true_4616_4623` | True | 4616 | 4623 | `likely_congruence_context_gap` | (x ◇ x) ◇ y = (z ◇ x) ◇ z | (x ◇ x) ◇ y = (z ◇ z) ◇ w |
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
| `true_2137_1325` | True | 2137 | 1325 | `likely_projection_or_absorption` | x = ((y ◇ y) ◇ y) ◇ (y ◇ x) | x = y ◇ (((y ◇ y) ◇ y) ◇ x) |
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

## Easiest Looking

| id | cluster | score | reason |
|---|---|---:|---|
| `true_2061_307` | `likely_projection_or_absorption` | 28 | projection or absorption shape dominates the failed implication |
| `true_2942_5` | `likely_projection_or_absorption` | 29 | projection or absorption shape dominates the failed implication |
| `true_1022_99` | `likely_projection_or_absorption` | 31 | projection or absorption shape dominates the failed implication |
| `true_130_1759` | `likely_projection_or_absorption` | 31 | projection or absorption shape dominates the failed implication |
| `true_2135_2128` | `likely_projection_or_absorption` | 31 | projection or absorption shape dominates the failed implication |
| `true_1636_1839` | `likely_projection_or_absorption` | 33 | projection or absorption shape dominates the failed implication |
| `true_2055_2656` | `likely_projection_or_absorption` | 33 | projection or absorption shape dominates the failed implication |
| `true_2111_1755` | `likely_projection_or_absorption` | 33 | projection or absorption shape dominates the failed implication |
| `true_2789_898` | `likely_projection_or_absorption` | 33 | projection or absorption shape dominates the failed implication |
| `true_1120_714` | `likely_projection_or_absorption` | 34 | projection or absorption shape dominates the failed implication |

## Hardest Looking

| id | cluster | score | reason |
|---|---|---:|---|
| `true_2935_3138` | `likely_projection_or_absorption` | 44 | projection or absorption shape dominates the failed implication |
| `false_1682_411` | `likely_false_missing_countermodel` | 43 | expected false and no tested solver table falsified the implication |
| `true_1500_498` | `likely_projection_or_absorption` | 41 | projection or absorption shape dominates the failed implication |
| `true_689_1350` | `likely_projection_or_absorption` | 41 | projection or absorption shape dominates the failed implication |
| `true_1698_555` | `likely_projection_or_absorption` | 40 | projection or absorption shape dominates the failed implication |
| `true_674_668` | `likely_projection_or_absorption` | 40 | projection or absorption shape dominates the failed implication |
| `true_691_1976` | `likely_projection_or_absorption` | 40 | projection or absorption shape dominates the failed implication |
| `true_1604_1822` | `likely_projection_or_absorption` | 39 | projection or absorption shape dominates the failed implication |
| `true_3291_3304` | `likely_congruence_context_gap` | 39 | shared context or congrArg edges exist but no capped path was found |
| `true_2771_2775` | `likely_projection_or_absorption` | 37 | projection or absorption shape dominates the failed implication |

## Recommended v0.6 Targets

- Prioritize projection/absorption rewrite lemmas that derive reusable local identities, then apply them under shallow contexts.
- Extend calc-chain search with two-level congrArg contexts, but keep path length and code-size gates unchanged.
- Run offline witness-bank search for the remaining false miss, especially `false_1682_411`, rather than expanding solver-side enumeration.

## Route Diagnostics Snapshot

| id | direct | symm | congr candidates | singleton | graph terms | graph edges | graph path | finite countermodel | near miss |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| `true_2942_5` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_3108_4642` | False | False | 1 | False | 64 | 10000 | False | False | True |
| `true_1167_2000` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_3291_3304` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_1698_555` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_1604_1822` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_2111_1755` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_1120_714` | False | False | 0 | False | 64 | 7938 | False | False | True |
| `true_3083_3094` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_4616_4623` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_1022_99` | False | False | 0 | False | 20 | 1312 | False | False | True |
| `true_425_1630` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_2860_3458` | False | False | 1 | False | 64 | 10000 | False | False | True |
| `true_130_1759` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_2061_307` | False | False | 1 | False | 12 | 450 | False | False | True |
| `true_1738_1258` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_2654_2864` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_2789_898` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_2935_3138` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_2135_2128` | False | False | 0 | False | 64 | 6272 | False | False | True |
| `true_428_3725` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_1500_498` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_2137_1325` | False | False | 0 | False | 64 | 7938 | False | False | True |
| `true_691_1976` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_2074_2082` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_4082_4109` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_2771_2775` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_4561_4566` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `false_1682_411` | False | False | 0 | False | 30 | 2450 | False | False | True |
| `true_1874_4357` | False | False | 2 | False | 64 | 10000 | False | False | True |
| `true_2055_2656` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_689_1350` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_674_668` | False | False | 0 | False | 64 | 10000 | False | False | True |
| `true_1636_1839` | False | False | 0 | False | 64 | 10000 | False | False | True |

## Per-Failure Details

### `true_2942_5`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(((v1◇(v1◇v0))◇v2)◇v0)`
- alpha goal: `v0=(v1◇v0)`
- variable counts: hypothesis=3, goal=2
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 1}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 1}
- repeated variables: hypothesis={'x': 3, 'y': 2}, goal={'x': 2}

### `true_3108_4642`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=((((v1◇v0)◇v0)◇v2)◇v0)`
- alpha goal: `((v0◇v1)◇v0)=((v2◇v0)◇v0)`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 2, 'rhs': 2}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 2, 'rhs': 2}
- repeated variables: hypothesis={'x': 4}, goal={'x': 4}

### `true_1167_2000`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(v1◇((v2◇(v1◇v1))◇v0))`
- alpha goal: `v0=((v1◇(v2◇v2))◇(v2◇v0))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 2, 'y': 3}, goal={'x': 2, 'z': 3}

### `true_3291_3304`

- cluster: `likely_congruence_context_gap`
- alpha hypothesis: `(v0◇v0)=(v1◇(v2◇(v0◇v3)))`
- alpha goal: `(v0◇v0)=(v1◇(v2◇(v3◇v4)))`
- variable counts: hypothesis=4, goal=5
- depths: hypothesis={'lhs': 1, 'rhs': 3}, goal={'lhs': 1, 'rhs': 3}
- ops: hypothesis={'lhs': 1, 'rhs': 3}, goal={'lhs': 1, 'rhs': 3}
- repeated variables: hypothesis={'x': 3}, goal={'x': 2}

### `true_1698_555`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=((v1◇v0)◇((v1◇v2)◇v1))`
- alpha goal: `v0=(v1◇(v2◇(v1◇(v0◇v1))))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 2, 'y': 3}, goal={'x': 2, 'y': 3}

### `true_1604_1822`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=((v1◇v2)◇(v3◇(v0◇v1)))`
- alpha goal: `v0=((v1◇v2)◇((v3◇v3)◇v1))`
- variable counts: hypothesis=4, goal=4
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 2, 'y': 2}, goal={'w': 2, 'y': 2}

### `true_2111_1755`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(((v1◇v0)◇v2)◇(v1◇v0))`
- alpha goal: `v0=((v1◇v2)◇((v0◇v0)◇v0))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 3, 'y': 2}, goal={'x': 4}

### `true_1120_714`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(v1◇((v1◇(v1◇v0))◇v1))`
- alpha goal: `v0=(v1◇(v1◇((v1◇v0)◇v1)))`
- variable counts: hypothesis=2, goal=2
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 2, 'y': 4}, goal={'x': 2, 'y': 4}

### `true_3083_3094`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=((((v0◇v1)◇v1)◇v2)◇v2)`
- alpha goal: `v0=((((v0◇v1)◇v2)◇v2)◇v1)`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 2, 'y': 2, 'z': 2}, goal={'x': 2, 'y': 2, 'z': 2}

### `true_4616_4623`

- cluster: `likely_congruence_context_gap`
- alpha hypothesis: `((v0◇v0)◇v1)=((v2◇v0)◇v2)`
- alpha goal: `((v0◇v0)◇v1)=((v2◇v2)◇v3)`
- variable counts: hypothesis=3, goal=4
- depths: hypothesis={'lhs': 2, 'rhs': 2}, goal={'lhs': 2, 'rhs': 2}
- ops: hypothesis={'lhs': 2, 'rhs': 2}, goal={'lhs': 2, 'rhs': 2}
- repeated variables: hypothesis={'x': 3, 'z': 2}, goal={'x': 2, 'z': 2}

### `true_1022_99`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(v0◇((v0◇(v0◇v1))◇v0))`
- alpha goal: `v0=(v0◇((v0◇v0)◇v0))`
- variable counts: hypothesis=2, goal=1
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 3}
- repeated variables: hypothesis={'x': 5}, goal={'x': 5}

### `true_425_1630`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(v0◇(v0◇(v1◇(v2◇v3))))`
- alpha goal: `v0=((v0◇v0)◇((v0◇v0)◇v1))`
- variable counts: hypothesis=4, goal=2
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 3}, goal={'x': 5}

### `true_2860_3458`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(((v0◇(v0◇v1))◇v2)◇v2)`
- alpha goal: `(v0◇v0)=(v0◇((v0◇v1)◇v0))`
- variable counts: hypothesis=3, goal=2
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 1, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 1, 'rhs': 3}
- repeated variables: hypothesis={'x': 3, 'z': 2}, goal={'x': 5}

### `true_130_1759`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(v1◇((v1◇v2)◇v0))`
- alpha goal: `v0=((v1◇v2)◇((v0◇v1)◇v0))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 2, 'y': 2}, goal={'x': 3, 'y': 2}

### `true_2061_307`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(((v0◇v1)◇v1)◇(v0◇v1))`
- alpha goal: `(v0◇v0)=(v0◇(v0◇v0))`
- variable counts: hypothesis=2, goal=1
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 1, 'rhs': 2}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 1, 'rhs': 2}
- repeated variables: hypothesis={'x': 3, 'y': 3}, goal={'x': 5}

### `true_1738_1258`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=((v1◇v1)◇((v2◇v0)◇v0))`
- alpha goal: `v0=(v0◇(((v1◇v2)◇v0)◇v0))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 3, 'y': 2}, goal={'x': 4}

### `true_2654_2864`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(((v0◇v0)◇(v1◇v1))◇v2)`
- alpha goal: `v0=(((v0◇(v1◇v0))◇v0)◇v2)`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 3, 'y': 2}, goal={'x': 4}

### `true_2789_898`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(((v1◇v2)◇(v1◇v0))◇v2)`
- alpha goal: `v0=(v1◇((v0◇v2)◇(v2◇v1)))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 2, 'y': 2, 'z': 2}, goal={'x': 2, 'y': 2, 'z': 2}

### `true_2935_3138`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(((v1◇(v0◇v2))◇v3)◇v4)`
- alpha goal: `v0=((((v1◇v0)◇v2)◇v3)◇v4)`
- variable counts: hypothesis=5, goal=5
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 2}, goal={'x': 2}

### `true_2135_2128`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(((v1◇v1)◇v1)◇(v0◇v1))`
- alpha goal: `v0=(((v1◇v1)◇v0)◇(v1◇v1))`
- variable counts: hypothesis=2, goal=2
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 2, 'y': 4}, goal={'x': 2, 'y': 4}

### `true_428_3725`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(v0◇(v1◇(v0◇(v0◇v2))))`
- alpha goal: `(v0◇v1)=((v0◇v1)◇(v1◇v1))`
- variable counts: hypothesis=3, goal=2
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 1, 'rhs': 2}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 1, 'rhs': 3}
- repeated variables: hypothesis={'x': 4}, goal={'x': 2, 'y': 4}

### `true_1500_498`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=((v1◇v0)◇(v2◇(v0◇v2)))`
- alpha goal: `v0=(v1◇(v0◇(v2◇(v3◇v3))))`
- variable counts: hypothesis=3, goal=4
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 3, 'z': 2}, goal={'w': 2, 'x': 2}

### `true_2137_1325`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(((v1◇v1)◇v1)◇(v1◇v0))`
- alpha goal: `v0=(v1◇(((v1◇v1)◇v1)◇v0))`
- variable counts: hypothesis=2, goal=2
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 2, 'y': 4}, goal={'x': 2, 'y': 4}

### `true_691_1976`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(v1◇(v0◇((v2◇v1)◇v1)))`
- alpha goal: `v0=((v1◇(v2◇v1))◇(v0◇v1))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 2, 'y': 3}, goal={'x': 2, 'y': 3}

### `true_2074_2082`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(((v0◇v1)◇v2)◇(v1◇v0))`
- alpha goal: `v0=(((v0◇v1)◇v2)◇(v3◇v0))`
- variable counts: hypothesis=3, goal=4
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 3, 'y': 2}, goal={'x': 3}

### `true_4082_4109`

- cluster: `likely_congruence_context_gap`
- alpha hypothesis: `(v0◇v0)=(((v1◇v0)◇v0)◇v2)`
- alpha goal: `(v0◇v0)=(((v1◇v2)◇v2)◇v1)`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 1, 'rhs': 3}, goal={'lhs': 1, 'rhs': 3}
- ops: hypothesis={'lhs': 1, 'rhs': 3}, goal={'lhs': 1, 'rhs': 3}
- repeated variables: hypothesis={'x': 4}, goal={'x': 2, 'y': 2, 'z': 2}

### `true_2771_2775`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(((v1◇v2)◇(v0◇v0))◇v1)`
- alpha goal: `v0=(((v1◇v2)◇(v0◇v1))◇v1)`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 3, 'y': 2}, goal={'x': 2, 'y': 3}

### `true_4561_4566`

- cluster: `likely_congruence_context_gap`
- alpha hypothesis: `(v0◇(v1◇v2))=((v3◇v0)◇v4)`
- alpha goal: `(v0◇(v1◇v2))=((v3◇v1)◇v4)`
- variable counts: hypothesis=5, goal=5
- depths: hypothesis={'lhs': 2, 'rhs': 2}, goal={'lhs': 2, 'rhs': 2}
- ops: hypothesis={'lhs': 2, 'rhs': 2}, goal={'lhs': 2, 'rhs': 2}
- repeated variables: hypothesis={'x': 2}, goal={'y': 2}

### `false_1682_411`

- cluster: `likely_false_missing_countermodel`
- alpha hypothesis: `v0=((v1◇v0)◇((v0◇v0)◇v1))`
- alpha goal: `v0=(v0◇(v0◇(v0◇(v0◇v0))))`
- variable counts: hypothesis=2, goal=1
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 4, 'y': 2}, goal={'x': 6}

### `true_1874_4357`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=((v0◇(v1◇v2))◇(v1◇v3))`
- alpha goal: `(v0◇(v1◇v2))=(v0◇(v1◇v3))`
- variable counts: hypothesis=4, goal=4
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 2, 'rhs': 2}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 2, 'rhs': 2}
- repeated variables: hypothesis={'x': 2, 'y': 2}, goal={'x': 2, 'y': 2}

### `true_2055_2656`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(((v0◇v1)◇v0)◇(v1◇v2))`
- alpha goal: `v0=(((v0◇v0)◇(v1◇v2))◇v1)`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 3, 'y': 2}, goal={'x': 3, 'y': 2}

### `true_689_1350`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(v1◇(v0◇((v2◇v0)◇v3)))`
- alpha goal: `v0=(v1◇(((v2◇v0)◇v0)◇v1))`
- variable counts: hypothesis=4, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 3}, goal={'x': 3, 'y': 2}

### `true_674_668`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=(v1◇(v0◇((v0◇v2)◇v2)))`
- alpha goal: `v0=(v1◇(v0◇((v0◇v0)◇v2)))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 3, 'z': 2}, goal={'x': 4}

### `true_1636_1839`

- cluster: `likely_projection_or_absorption`
- alpha hypothesis: `v0=((v0◇v0)◇((v1◇v0)◇v2))`
- alpha goal: `v0=((v0◇(v0◇v1))◇(v0◇v2))`
- variable counts: hypothesis=3, goal=3
- depths: hypothesis={'lhs': 0, 'rhs': 3}, goal={'lhs': 0, 'rhs': 3}
- ops: hypothesis={'lhs': 0, 'rhs': 4}, goal={'lhs': 0, 'rhs': 4}
- repeated variables: hypothesis={'x': 4}, goal={'x': 4}
