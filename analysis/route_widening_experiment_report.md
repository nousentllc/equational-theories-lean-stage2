# Route Widening Experiment Report

This is an analysis-only experiment. It does not modify production route behavior.

## Summary

| metric | value |
| --- | --- |
| target_no_attempt_cases | 15 |
| cases_with_generated_candidates | 2 |
| accepted_true | 1 |
| accepted_false_countermodel | 0 |
| judge_rejected | 1 |
| judge_errors | 0 |
| over_analysis_cap | 0 |
| no_candidate | 13 |

## Case Results

| case | family | class | variant | classification | candidate status | proof bytes | recommendation |
| --- | --- | --- | --- | --- | --- | --- | --- |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_positive_0062 | tail_shift_repeated_tail_corridor | positive | variable_permutation_0 | likely true motif-preserving positive | gtsrtc_y_tail_context_shift:incorrect | 3056 | do not implement |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0066 | tail_shift_repeated_tail_corridor | boundary | shallow_context_wrap_left_0 | boundary unknown | no candidate |  | keep analysis-only |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0067 | tail_shift_repeated_tail_corridor | boundary | deeper_context_than_route_cap_0 | boundary unknown | no candidate |  | keep analysis-only |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0068 | tail_shift_repeated_tail_corridor | boundary | swapped_tail_position_0 | boundary unknown | no candidate |  | keep analysis-only |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_negative_0069 | tail_shift_repeated_tail_corridor | negative | anti_goal_rhs_perturbation_0 | likely false/adversarial | no candidate |  | keep analysis-only |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_negative_0071 | tail_shift_repeated_tail_corridor | negative | reversed_erasure_without_support_0 | likely false/adversarial | no candidate |  | keep analysis-only |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_mixed_0072 | tail_shift_repeated_tail_corridor | mixed | alpha_plus_outer_context_0 | unsupported mixed motif | no candidate |  | keep analysis-only |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_mixed_0073 | tail_shift_repeated_tail_corridor | mixed | nested_motif_unrelated_context_0 | unsupported mixed motif | no candidate |  | keep analysis-only |
| padv_tail_shift_repeated_tail_corridor_true_689_1350_positive_0076 | tail_shift_repeated_tail_corridor | positive | variable_permutation_1 | likely true motif-preserving positive | gtsrtc_outer_y_nested_x_tail:accepted | 6853 | safe to implement after production binder-safe emitter review |
| padv_tail_shift_repeated_tail_corridor_true_689_1350_boundary_0079 | tail_shift_repeated_tail_corridor | boundary | shallow_context_wrap_left_1 | boundary unknown | no candidate |  | keep analysis-only |
| padv_tail_shift_repeated_tail_corridor_true_689_1350_boundary_0080 | tail_shift_repeated_tail_corridor | boundary | deeper_context_than_route_cap_1 | boundary unknown | no candidate |  | keep analysis-only |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_boundary_0087 | two_local_edge_local_theory_bridge | boundary | deeper_context_than_route_cap_0 | boundary unknown | no candidate |  | keep analysis-only |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_negative_0091 | two_local_edge_local_theory_bridge | negative | reversed_erasure_without_support_0 | likely false/adversarial | no candidate |  | keep analysis-only |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_mixed_0093 | two_local_edge_local_theory_bridge | mixed | nested_motif_unrelated_context_0 | unsupported mixed motif | no candidate |  | keep analysis-only |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_boundary_0100 | two_local_edge_local_theory_bridge | boundary | deeper_context_than_route_cap_1 | boundary unknown | no candidate |  | keep analysis-only |

## Family Summary

| family | no_attempt | candidates | accepted | rejected | errors | recommendation |
| --- | --- | --- | --- | --- | --- | --- |
| tail_shift_repeated_tail_corridor | 11 | 2 | 1 | 1 | 0 | do not implement |
| two_local_edge_local_theory_bridge | 4 | 0 | 0 | 0 | 0 | keep analysis-only |

## Recommendation

do not implement guard widening; rejected/error candidates remain under relaxed analysis
