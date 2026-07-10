# ARCF-Prover Private-Readiness Harness v2

This report is analysis-only. It preserves the frozen production solver and evaluates private-set readiness gates.

## Gate Summary

Overall status: **pass**

| gate | status | detail |
| --- | --- | --- |
| sample_20_closed | PASS | accepted=20 judge_errors=0 |
| sample_200_closed | PASS | accepted=200 judge_errors=0 |
| public_exact_disabled_floor | PASS | accepted=198 judge_errors=0 misses=['true_2789_898', 'true_1500_498'] |
| private_adversarial_no_rejections | PASS | primary_mode=public_exact_disabled summary={'accepted': 66, 'accepted_false': 42, 'accepted_true': 24, 'judge_errors': 0, 'judge_rejected_candidates': 0, 'no_attempt': 34, 'total': 100} |
| widening_rejections_blocked | PASS | summary={'accepted_false_countermodel': 0, 'accepted_true': 1, 'cases_with_generated_candidates': 2, 'judge_errors': 0, 'judge_rejected': 1, 'no_candidate': 13, 'over_analysis_cap': 0, 'target_no_attempt_cases': 15} unsafe_recommendations=[] |
| single_file_submission | PASS | entries=['solver.py'] |
| solver_size_under_cap | PASS | bytes=382810 cap=500000 |

## Public Runs

| run | accepted | true | false | no_attempt | judge_errors |
| --- | --- | --- | --- | --- | --- |
| sample_20 | 20 | 10 | 10 | 0 | 0 |
| sample_200 | 200 | 100 | 100 | 0 | 0 |
| sample_200_no_public_exact | 198 | 98 | 100 | 2 | 0 |

Public-exact-disabled misses: true_2789_898, true_1500_498

## Adversarial Route Scores

| family | classification | accepted_true | accepted_false | positive_rate | negative_safe_rate | fragility |
| --- | --- | --- | --- | --- | --- | --- |
| argument_erasure_context_bridge | private-promising | 5 | 5 | 0.8 | 1.0 | 3.0 |
| seed_collapse_contextual_lift | production-robust | 5 | 10 | 1.0 | 1.0 | 1.0 |
| square_anchor_anchored_erasure | production-robust | 6 | 10 | 1.0 | 1.0 | 1.0 |
| tail_shift_repeated_tail_corridor | fragile-do-not-widen | 3 | 6 | 0.6 | 1.0 | 4.5 |
| two_local_edge_local_theory_bridge | production-robust | 5 | 11 | 1.0 | 1.0 | 2.0 |

## Countermodel-Oriented Diagnostics

Fragile-family countermodel-first opportunities: 13

| case | family | class | variant | expected |
| --- | --- | --- | --- | --- |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0004 | argument_erasure_context_bridge | boundary | repeated_variable_count_changed_0 | unknown |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0006 | argument_erasure_context_bridge | boundary | shallow_context_wrap_left_0 | unknown |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0007 | argument_erasure_context_bridge | boundary | deeper_context_than_route_cap_0 | unknown |
| padv_argument_erasure_context_bridge_true_2074_2082_negative_0011 | argument_erasure_context_bridge | negative | reversed_erasure_without_support_0 | likely_false |
| padv_argument_erasure_context_bridge_true_674_668_boundary_0019 | argument_erasure_context_bridge | boundary | shallow_context_wrap_left_1 | unknown |
| padv_argument_erasure_context_bridge_true_674_668_boundary_0020 | argument_erasure_context_bridge | boundary | deeper_context_than_route_cap_1 | unknown |
| padv_tail_shift_repeated_tail_corridor_true_689_1350_boundary_0079 | tail_shift_repeated_tail_corridor | boundary | shallow_context_wrap_left_1 | unknown |
| padv_tail_shift_repeated_tail_corridor_true_689_1350_boundary_0080 | tail_shift_repeated_tail_corridor | boundary | deeper_context_than_route_cap_1 | unknown |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0066 | tail_shift_repeated_tail_corridor | boundary | shallow_context_wrap_left_0 | unknown |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0067 | tail_shift_repeated_tail_corridor | boundary | deeper_context_than_route_cap_0 | unknown |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0068 | tail_shift_repeated_tail_corridor | boundary | swapped_tail_position_0 | unknown |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_negative_0069 | tail_shift_repeated_tail_corridor | negative | anti_goal_rhs_perturbation_0 | likely_false |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_negative_0071 | tail_shift_repeated_tail_corridor | negative | reversed_erasure_without_support_0 | likely_false |
| padv_seed_collapse_contextual_lift_true_130_1759_boundary_0038 | seed_collapse_contextual_lift | boundary | expanded_let_like_subterm_1 | unknown |
| padv_seed_collapse_contextual_lift_true_130_1759_boundary_0039 | seed_collapse_contextual_lift | boundary | shallow_context_wrap_left_1 | unknown |
| padv_seed_collapse_contextual_lift_true_130_1759_boundary_0040 | seed_collapse_contextual_lift | boundary | deeper_context_than_route_cap_1 | unknown |
| padv_seed_collapse_contextual_lift_true_2942_5_negative_0031 | seed_collapse_contextual_lift | negative | reversed_erasure_without_support_0 | likely_false |
| padv_square_anchor_anchored_erasure_true_2860_3458_boundary_0046 | square_anchor_anchored_erasure | boundary | shallow_context_wrap_left_0 | unknown |
| padv_square_anchor_anchored_erasure_true_2860_3458_boundary_0047 | square_anchor_anchored_erasure | boundary | deeper_context_than_route_cap_0 | unknown |
| padv_square_anchor_anchored_erasure_true_2860_3458_negative_0051 | square_anchor_anchored_erasure | negative | reversed_erasure_without_support_0 | likely_false |

## Route-Widening Experiment

| metric | value |
| --- | --- |
| accepted_false_countermodel | 0 |
| accepted_true | 1 |
| cases_with_generated_candidates | 2 |
| judge_errors | 0 |
| judge_rejected | 1 |
| no_candidate | 13 |
| over_analysis_cap | 0 |
| target_no_attempt_cases | 15 |

Overall recommendation: do not implement guard widening; rejected/error candidates remain under relaxed analysis

## Recommendations

| category | recommendation |
| --- | --- |
| A. safe production change | Keep public exact certificates ahead of generalized routes; no production ordering change is indicated. |
| B. debug-only / analysis-only | Keep this harness, ARCF_ROUTE_COVERAGE, and adversarial generation as mandatory gates before future solver edits. |
| E. requires countermodel strengthening | Focus next on finite countermodel diagnostics for negative/boundary variants in tail-shift and argument-erasure families. |
| C. do not implement | Do not implement tail-shift guard widening while the analysis-only relaxed candidate remains judge-rejected. |

## Benchmark Pack

Wrote `/Users/jc/Downloads/LandDesk/equational-theories-lean-stage2/analysis/private_readiness_benchmark_v2.json` with 100 cases.
