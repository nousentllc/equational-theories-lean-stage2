# ARCF-Prover v0.2 Failure Diagnostics

- Results file: `pipeline/results/arcf_sample200_v02.json`
- Problems file: `examples/problems/sample_200.json`
- No-judge-attempt failures: **40**
- Finite probes: `v0.2 constants/projections/min/max/add/sub/affine plus exhaustive n=2,3`

## Route Counts

| Route | Count |
|---|---:|
| `likely_collapse_or_projection_lemma` | 29 |
| `likely_false_missing_countermodel` | 2 |
| `likely_true_needs_multistep_proof` | 9 |

## Probe Counts

| Probe result | Count |
|---|---:|
| `all_hypothesis_models_satisfy_goal` | 40 |
| `near_miss_violates_both` | 40 |
| `vacuous_hypothesis_model_result` | 8 |

## Failure Table

| Problem | Answer | Eq IDs | Route | Resembles | Countermodel? | Near miss? | Hyp models | Depth H→G | Ops H→G |
|---|---:|---|---|---|---:|---:|---:|---|---|
| `true_2942_5` | True | 2942→5 | `likely_collapse_or_projection_lemma` | projection | no | yes | 6 | 4→1 | 4→1 |
| `true_3108_4642` | True | 3108→4642 | `likely_collapse_or_projection_lemma` | projection | no | yes | 9 | 4→2 | 4→4 |
| `true_1167_2000` | True | 1167→2000 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 46 | 4→3 | 4→4 |
| `true_3291_3304` | True | 3291→3304 | `likely_true_needs_multistep_proof` | - | no | yes | 45 | 3→3 | 4→4 |
| `true_1698_555` | True | 1698→555 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 0 | 3→4 | 4→4 |
| `true_1604_1822` | True | 1604→1822 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 0 | 3→3 | 4→4 |
| `true_2111_1755` | True | 2111→1755 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 34 | 3→3 | 4→4 |
| `true_1120_714` | True | 1120→714 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 41 | 4→4 | 4→4 |
| `true_3083_3094` | True | 3083→3094 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 218 | 4→4 | 4→4 |
| `true_4616_4623` | True | 4616→4623 | `likely_true_needs_multistep_proof` | - | no | yes | 165 | 2→2 | 4→4 |
| `true_4530_4576` | True | 4530→4576 | `likely_true_needs_multistep_proof` | - | no | yes | 39 | 2→2 | 4→4 |
| `true_1022_99` | True | 1022→99 | `likely_collapse_or_projection_lemma` | projection | no | yes | 647 | 4→3 | 4→3 |
| `true_425_1630` | True | 425→1630 | `likely_collapse_or_projection_lemma` | projection, absorption | no | yes | 33 | 4→3 | 4→4 |
| `true_2860_3458` | True | 2860→3458 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 28 | 4→3 | 4→4 |
| `true_3829_41` | True | 3829→41 | `likely_true_needs_multistep_proof` | - | no | yes | 27 | 2→1 | 4→2 |
| `true_130_1759` | True | 130→1759 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 34 | 3→3 | 3→4 |
| `true_2061_307` | True | 2061→307 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 30 | 3→2 | 4→3 |
| `true_1738_1258` | True | 1738→1258 | `likely_collapse_or_projection_lemma` | projection, absorption | no | yes | 43 | 3→4 | 4→4 |
| `true_2654_2864` | True | 2654→2864 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 24 | 3→4 | 4→4 |
| `true_359_4065` | True | 359→4065 | `likely_true_needs_multistep_proof` | - | no | yes | 3553 | 2→3 | 3→4 |
| `true_2789_898` | True | 2789→898 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 2 | 3→3 | 4→4 |
| `true_2935_3138` | True | 2935→3138 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 0 | 4→4 | 4→4 |
| `true_2135_2128` | True | 2135→2128 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 43 | 3→3 | 4→4 |
| `true_428_3725` | True | 428→3725 | `likely_collapse_or_projection_lemma` | projection | no | yes | 9 | 4→2 | 4→4 |
| `true_1500_498` | True | 1500→498 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 0 | 3→4 | 4→4 |
| `true_2137_1325` | True | 2137→1325 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 139 | 3→4 | 4→4 |
| `true_691_1976` | True | 691→1976 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 0 | 4→3 | 4→4 |
| `true_4151_4149` | True | 4151→4149 | `likely_true_needs_multistep_proof` | - | no | yes | 87 | 3→3 | 4→4 |
| `true_2074_2082` | True | 2074→2082 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 68 | 3→3 | 4→4 |
| `true_4082_4109` | True | 4082→4109 | `likely_true_needs_multistep_proof` | - | no | yes | 60 | 3→3 | 4→4 |
| `true_2771_2775` | True | 2771→2775 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 0 | 3→3 | 4→4 |
| `true_4561_4566` | True | 4561→4566 | `likely_true_needs_multistep_proof` | - | no | yes | 33 | 2→2 | 4→4 |
| `false_1682_411` | False | 1682→411 | `likely_false_missing_countermodel` | projection, absorption | no | yes | 28 | 3→4 | 4→4 |
| `true_1874_4357` | True | 1874→4357 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 46 | 3→2 | 4→4 |
| `false_3145_3481` | False | 3145→3481 | `likely_false_missing_countermodel` | projection | no | yes | 20 | 4→3 | 4→4 |
| `true_2055_2656` | True | 2055→2656 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 28 | 3→3 | 4→4 |
| `true_689_1350` | True | 689→1350 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 0 | 4→4 | 4→4 |
| `true_404_4236` | True | 404→4236 | `likely_true_needs_multistep_proof` | - | no | yes | 27 | 2→3 | 3→4 |
| `true_674_668` | True | 674→668 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 0 | 4→4 | 4→4 |
| `true_1636_1839` | True | 1636→1839 | `likely_collapse_or_projection_lemma` | absorption | no | yes | 37 | 3→3 | 4→4 |

## Details

### `likely_collapse_or_projection_lemma`

- `true_2942_5` (2942 → 5, answer=True): true-looking collapse/projection/absorption structure
  - resembles: projection
  - hypothesis canonical: `v0=(((v1◇(v1◇v0))◇v2)◇v0)`
  - goal canonical: `v0=(v1◇v0)`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=6
- `true_3108_4642` (3108 → 4642, answer=True): true-looking collapse/projection/absorption structure
  - resembles: projection
  - hypothesis canonical: `v0=((((v1◇v0)◇v0)◇v2)◇v0)`
  - goal canonical: `((v0◇v1)◇v0)=((v2◇v0)◇v0)`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=9
- `true_1167_2000` (1167 → 2000, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(v1◇((v2◇(v1◇v1))◇v0))`
  - goal canonical: `v0=((v1◇(v2◇v2))◇(v2◇v0))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=46
- `true_1698_555` (1698 → 555, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=((v1◇v0)◇((v1◇v2)◇v1))`
  - goal canonical: `v0=(v1◇(v2◇(v1◇(v0◇v1))))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=0
- `true_1604_1822` (1604 → 1822, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=((v1◇v2)◇(v3◇(v0◇v1)))`
  - goal canonical: `v0=((v1◇v2)◇((v3◇v3)◇v1))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=0
- `true_2111_1755` (2111 → 1755, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(((v1◇v0)◇v2)◇(v1◇v0))`
  - goal canonical: `v0=((v1◇v2)◇((v0◇v0)◇v0))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=34
- `true_1120_714` (1120 → 714, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(v1◇((v1◇(v1◇v0))◇v1))`
  - goal canonical: `v0=(v1◇(v1◇((v1◇v0)◇v1)))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=41
- `true_3083_3094` (3083 → 3094, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=((((v0◇v1)◇v1)◇v2)◇v2)`
  - goal canonical: `v0=((((v0◇v1)◇v2)◇v2)◇v1)`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=218
- `true_1022_99` (1022 → 99, answer=True): true-looking collapse/projection/absorption structure
  - resembles: projection
  - hypothesis canonical: `v0=(v0◇((v0◇(v0◇v1))◇v0))`
  - goal canonical: `v0=(v0◇((v0◇v0)◇v0))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=647
- `true_425_1630` (425 → 1630, answer=True): true-looking collapse/projection/absorption structure
  - resembles: projection, absorption
  - hypothesis canonical: `v0=(v0◇(v0◇(v1◇(v2◇v3))))`
  - goal canonical: `v0=((v0◇v0)◇((v0◇v0)◇v1))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=33
- `true_2860_3458` (2860 → 3458, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(((v0◇(v0◇v1))◇v2)◇v2)`
  - goal canonical: `(v0◇v0)=(v0◇((v0◇v1)◇v0))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=28
- `true_130_1759` (130 → 1759, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(v1◇((v1◇v2)◇v0))`
  - goal canonical: `v0=((v1◇v2)◇((v0◇v1)◇v0))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=34
- `true_2061_307` (2061 → 307, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(((v0◇v1)◇v1)◇(v0◇v1))`
  - goal canonical: `(v0◇v0)=(v0◇(v0◇v0))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=30
- `true_1738_1258` (1738 → 1258, answer=True): true-looking collapse/projection/absorption structure
  - resembles: projection, absorption
  - hypothesis canonical: `v0=((v1◇v1)◇((v2◇v0)◇v0))`
  - goal canonical: `v0=(v0◇(((v1◇v2)◇v0)◇v0))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=43
- `true_2654_2864` (2654 → 2864, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(((v0◇v0)◇(v1◇v1))◇v2)`
  - goal canonical: `v0=(((v0◇(v1◇v0))◇v0)◇v2)`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=24
- `true_2789_898` (2789 → 898, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(((v1◇v2)◇(v1◇v0))◇v2)`
  - goal canonical: `v0=(v1◇((v0◇v2)◇(v2◇v1)))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=2
- `true_2935_3138` (2935 → 3138, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(((v1◇(v0◇v2))◇v3)◇v4)`
  - goal canonical: `v0=((((v1◇v0)◇v2)◇v3)◇v4)`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=0
- `true_2135_2128` (2135 → 2128, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(((v1◇v1)◇v1)◇(v0◇v1))`
  - goal canonical: `v0=(((v1◇v1)◇v0)◇(v1◇v1))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=43
- `true_428_3725` (428 → 3725, answer=True): true-looking collapse/projection/absorption structure
  - resembles: projection
  - hypothesis canonical: `v0=(v0◇(v1◇(v0◇(v0◇v2))))`
  - goal canonical: `(v0◇v1)=((v0◇v1)◇(v1◇v1))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=9
- `true_1500_498` (1500 → 498, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=((v1◇v0)◇(v2◇(v0◇v2)))`
  - goal canonical: `v0=(v1◇(v0◇(v2◇(v3◇v3))))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=0
- `true_2137_1325` (2137 → 1325, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(((v1◇v1)◇v1)◇(v1◇v0))`
  - goal canonical: `v0=(v1◇(((v1◇v1)◇v1)◇v0))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=139
- `true_691_1976` (691 → 1976, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(v1◇(v0◇((v2◇v1)◇v1)))`
  - goal canonical: `v0=((v1◇(v2◇v1))◇(v0◇v1))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=0
- `true_2074_2082` (2074 → 2082, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(((v0◇v1)◇v2)◇(v1◇v0))`
  - goal canonical: `v0=(((v0◇v1)◇v2)◇(v3◇v0))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=68
- `true_2771_2775` (2771 → 2775, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(((v1◇v2)◇(v0◇v0))◇v1)`
  - goal canonical: `v0=(((v1◇v2)◇(v0◇v1))◇v1)`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=0
- `true_1874_4357` (1874 → 4357, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=((v0◇(v1◇v2))◇(v1◇v3))`
  - goal canonical: `(v0◇(v1◇v2))=(v0◇(v1◇v3))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=46
- `true_2055_2656` (2055 → 2656, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(((v0◇v1)◇v0)◇(v1◇v2))`
  - goal canonical: `v0=(((v0◇v0)◇(v1◇v2))◇v1)`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=28
- `true_689_1350` (689 → 1350, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(v1◇(v0◇((v2◇v0)◇v3)))`
  - goal canonical: `v0=(v1◇(((v2◇v0)◇v0)◇v1))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=0
- `true_674_668` (674 → 668, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=(v1◇(v0◇((v0◇v2)◇v2)))`
  - goal canonical: `v0=(v1◇(v0◇((v0◇v0)◇v2)))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=0
- `true_1636_1839` (1636 → 1839, answer=True): true-looking collapse/projection/absorption structure
  - resembles: absorption
  - hypothesis canonical: `v0=((v0◇v0)◇((v1◇v0)◇v2))`
  - goal canonical: `v0=((v0◇(v0◇v1))◇(v0◇v2))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=37

### `likely_false_missing_countermodel`

- `false_1682_411` (1682 → 411, answer=False): labeled false, but v0.2 generated probes found no countermodel
  - resembles: projection, absorption
  - hypothesis canonical: `v0=((v1◇v0)◇((v0◇v0)◇v1))`
  - goal canonical: `v0=(v0◇(v0◇(v0◇(v0◇v0))))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=28
- `false_3145_3481` (3145 → 3481, answer=False): labeled false, but v0.2 generated probes found no countermodel
  - resembles: projection
  - hypothesis canonical: `v0=((((v1◇v1)◇v0)◇v2)◇v0)`
  - goal canonical: `(v0◇v0)=(v1◇((v1◇v0)◇v0))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=20

### `likely_true_needs_multistep_proof`

- `true_3291_3304` (3291 → 3304, answer=True): tested finite hypothesis models also satisfy the goal
  - resembles: none
  - hypothesis canonical: `(v0◇v0)=(v1◇(v2◇(v0◇v3)))`
  - goal canonical: `(v0◇v0)=(v1◇(v2◇(v3◇v4)))`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=45
- `true_4616_4623` (4616 → 4623, answer=True): tested finite hypothesis models also satisfy the goal
  - resembles: none
  - hypothesis canonical: `((v0◇v0)◇v1)=((v2◇v0)◇v2)`
  - goal canonical: `((v0◇v0)◇v1)=((v2◇v2)◇v3)`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=165
- `true_4530_4576` (4530 → 4576, answer=True): tested finite hypothesis models also satisfy the goal
  - resembles: none
  - hypothesis canonical: `(v0◇(v1◇v2))=((v1◇v1)◇v3)`
  - goal canonical: `(v0◇(v1◇v2))=((v3◇v3)◇v4)`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=39
- `true_3829_41` (3829 → 41, answer=True): tested finite hypothesis models also satisfy the goal
  - resembles: none
  - hypothesis canonical: `(v0◇v1)=((v2◇v2)◇(v2◇v2))`
  - goal canonical: `(v0◇v0)=(v1◇v2)`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=27
- `true_359_4065` (359 → 4065, answer=True): tested finite hypothesis models also satisfy the goal
  - resembles: none
  - hypothesis canonical: `(v0◇v0)=((v0◇v0)◇v0)`
  - goal canonical: `(v0◇v0)=(((v0◇v0)◇v0)◇v0)`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=3553
- `true_4151_4149` (4151 → 4149, answer=True): tested finite hypothesis models also satisfy the goal
  - resembles: none
  - hypothesis canonical: `(v0◇v1)=(((v0◇v2)◇v3)◇v2)`
  - goal canonical: `(v0◇v1)=(((v0◇v2)◇v3)◇v0)`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=87
- `true_4082_4109` (4082 → 4109, answer=True): tested finite hypothesis models also satisfy the goal
  - resembles: none
  - hypothesis canonical: `(v0◇v0)=(((v1◇v0)◇v0)◇v2)`
  - goal canonical: `(v0◇v0)=(((v1◇v2)◇v2)◇v1)`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=60
- `true_4561_4566` (4561 → 4566, answer=True): tested finite hypothesis models also satisfy the goal
  - resembles: none
  - hypothesis canonical: `(v0◇(v1◇v2))=((v3◇v0)◇v4)`
  - goal canonical: `(v0◇(v1◇v2))=((v3◇v1)◇v4)`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=33
- `true_404_4236` (404 → 4236, answer=True): tested finite hypothesis models also satisfy the goal
  - resembles: none
  - hypothesis canonical: `(v0◇v1)=((v2◇v2)◇v2)`
  - goal canonical: `(v0◇v1)=(((v2◇v2)◇v2)◇v3)`
  - finite probe: countermodel=False, near_miss=True, all_hyp_models_satisfy_goal=True, hyp_models=27
