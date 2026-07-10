# Countermodel Diagnostics v2 Report

Diagnostics are analysis-only. No countermodels were promoted into production solver behavior.

Search scope: reused the solver's deterministic finite-table candidates, with
structured tables for carrier sizes 2 through 5 and exhaustive tables for
carrier sizes 2 and 3 through the existing `candidate_tables` helper. The
diagnostic hook only runs after normal routes abstain, and only for
negative/boundary variants.

## Benchmark Guard

| metric | value |
| --- | --- |
| total_cases | 100 |
| accepted | 66 |
| accepted_true | 24 |
| accepted_false | 42 |
| no_attempt | 34 |
| judge_errors | 0 |
| judge_rejected_candidates | 0 |

## Family Summary

| family | no_attempt | finite_cm_found | model_sizes | unresolved | promotion |
| --- | --- | --- | --- | --- | --- |
| argument_erasure_context_bridge | 6 | 0 | {} | 6 | needs larger fuzzing or stronger search |
| seed_collapse_contextual_lift | 4 | 0 | {} | 4 | needs larger fuzzing or stronger search |
| square_anchor_anchored_erasure | 3 | 0 | {} | 3 | needs larger fuzzing or stronger search |
| tail_shift_repeated_tail_corridor | 7 | 0 | {} | 7 | needs larger fuzzing or stronger search |
| two_local_edge_local_theory_bridge | 3 | 0 | {} | 3 | needs larger fuzzing or stronger search |

## Variant Summary

| family::variant | count | found | model_sizes | unresolved |
| --- | --- | --- | --- | --- |
| argument_erasure_context_bridge::deeper_context_than_route_cap_0 | 1 | 0 | {} | 1 |
| argument_erasure_context_bridge::deeper_context_than_route_cap_1 | 1 | 0 | {} | 1 |
| argument_erasure_context_bridge::repeated_variable_count_changed_0 | 1 | 0 | {} | 1 |
| argument_erasure_context_bridge::reversed_erasure_without_support_0 | 1 | 0 | {} | 1 |
| argument_erasure_context_bridge::shallow_context_wrap_left_0 | 1 | 0 | {} | 1 |
| argument_erasure_context_bridge::shallow_context_wrap_left_1 | 1 | 0 | {} | 1 |
| seed_collapse_contextual_lift::deeper_context_than_route_cap_1 | 1 | 0 | {} | 1 |
| seed_collapse_contextual_lift::expanded_let_like_subterm_1 | 1 | 0 | {} | 1 |
| seed_collapse_contextual_lift::reversed_erasure_without_support_0 | 1 | 0 | {} | 1 |
| seed_collapse_contextual_lift::shallow_context_wrap_left_1 | 1 | 0 | {} | 1 |
| square_anchor_anchored_erasure::deeper_context_than_route_cap_0 | 1 | 0 | {} | 1 |
| square_anchor_anchored_erasure::reversed_erasure_without_support_0 | 1 | 0 | {} | 1 |
| square_anchor_anchored_erasure::shallow_context_wrap_left_0 | 1 | 0 | {} | 1 |
| tail_shift_repeated_tail_corridor::anti_goal_rhs_perturbation_0 | 1 | 0 | {} | 1 |
| tail_shift_repeated_tail_corridor::deeper_context_than_route_cap_0 | 1 | 0 | {} | 1 |
| tail_shift_repeated_tail_corridor::deeper_context_than_route_cap_1 | 1 | 0 | {} | 1 |
| tail_shift_repeated_tail_corridor::reversed_erasure_without_support_0 | 1 | 0 | {} | 1 |
| tail_shift_repeated_tail_corridor::shallow_context_wrap_left_0 | 1 | 0 | {} | 1 |
| tail_shift_repeated_tail_corridor::shallow_context_wrap_left_1 | 1 | 0 | {} | 1 |
| tail_shift_repeated_tail_corridor::swapped_tail_position_0 | 1 | 0 | {} | 1 |
| two_local_edge_local_theory_bridge::deeper_context_than_route_cap_0 | 1 | 0 | {} | 1 |
| two_local_edge_local_theory_bridge::deeper_context_than_route_cap_1 | 1 | 0 | {} | 1 |
| two_local_edge_local_theory_bridge::reversed_erasure_without_support_0 | 1 | 0 | {} | 1 |

## Candidate Finite Witnesses

No finite countermodel witnesses were found under the configured cap.

## Unresolved Diagnostic Events

| case | family | class | variant | reason |
| --- | --- | --- | --- | --- |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0004 | argument_erasure_context_bridge | boundary | repeated_variable_count_changed_0 | no_countermodel_found_under_n_5 |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0006 | argument_erasure_context_bridge | boundary | shallow_context_wrap_left_0 | no_countermodel_found_under_n_5 |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0007 | argument_erasure_context_bridge | boundary | deeper_context_than_route_cap_0 | no_countermodel_found_under_n_5 |
| padv_argument_erasure_context_bridge_true_674_668_boundary_0019 | argument_erasure_context_bridge | boundary | shallow_context_wrap_left_1 | no_countermodel_found_under_n_5 |
| padv_argument_erasure_context_bridge_true_674_668_boundary_0020 | argument_erasure_context_bridge | boundary | deeper_context_than_route_cap_1 | no_countermodel_found_under_n_5 |
| padv_argument_erasure_context_bridge_true_2074_2082_negative_0011 | argument_erasure_context_bridge | negative | reversed_erasure_without_support_0 | no_countermodel_found_under_n_5 |
| padv_seed_collapse_contextual_lift_true_130_1759_boundary_0038 | seed_collapse_contextual_lift | boundary | expanded_let_like_subterm_1 | no_countermodel_found_under_n_5 |
| padv_seed_collapse_contextual_lift_true_130_1759_boundary_0039 | seed_collapse_contextual_lift | boundary | shallow_context_wrap_left_1 | no_countermodel_found_under_n_5 |
| padv_seed_collapse_contextual_lift_true_130_1759_boundary_0040 | seed_collapse_contextual_lift | boundary | deeper_context_than_route_cap_1 | no_countermodel_found_under_n_5 |
| padv_seed_collapse_contextual_lift_true_2942_5_negative_0031 | seed_collapse_contextual_lift | negative | reversed_erasure_without_support_0 | no_countermodel_found_under_n_5 |
| padv_square_anchor_anchored_erasure_true_2860_3458_boundary_0046 | square_anchor_anchored_erasure | boundary | shallow_context_wrap_left_0 | no_countermodel_found_under_n_5 |
| padv_square_anchor_anchored_erasure_true_2860_3458_boundary_0047 | square_anchor_anchored_erasure | boundary | deeper_context_than_route_cap_0 | no_countermodel_found_under_n_5 |
| padv_square_anchor_anchored_erasure_true_2860_3458_negative_0051 | square_anchor_anchored_erasure | negative | reversed_erasure_without_support_0 | no_countermodel_found_under_n_5 |
| padv_tail_shift_repeated_tail_corridor_true_689_1350_boundary_0079 | tail_shift_repeated_tail_corridor | boundary | shallow_context_wrap_left_1 | no_countermodel_found_under_n_5 |
| padv_tail_shift_repeated_tail_corridor_true_689_1350_boundary_0080 | tail_shift_repeated_tail_corridor | boundary | deeper_context_than_route_cap_1 | no_countermodel_found_under_n_5 |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0066 | tail_shift_repeated_tail_corridor | boundary | shallow_context_wrap_left_0 | no_countermodel_found_under_n_5 |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0067 | tail_shift_repeated_tail_corridor | boundary | deeper_context_than_route_cap_0 | no_countermodel_found_under_n_5 |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0068 | tail_shift_repeated_tail_corridor | boundary | swapped_tail_position_0 | no_countermodel_found_under_n_5 |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_negative_0069 | tail_shift_repeated_tail_corridor | negative | anti_goal_rhs_perturbation_0 | no_countermodel_found_under_n_5 |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_negative_0071 | tail_shift_repeated_tail_corridor | negative | reversed_erasure_without_support_0 | no_countermodel_found_under_n_5 |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_boundary_0087 | two_local_edge_local_theory_bridge | boundary | deeper_context_than_route_cap_0 | no_countermodel_found_under_n_5 |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_boundary_0100 | two_local_edge_local_theory_bridge | boundary | deeper_context_than_route_cap_1 | no_countermodel_found_under_n_5 |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_negative_0091 | two_local_edge_local_theory_bridge | negative | reversed_erasure_without_support_0 | no_countermodel_found_under_n_5 |

## Recommendation

do not promote automatically; explicitly judge-test selected finite witnesses and rerun larger fuzzing before production use
