# Boundary Diagnostics v1 Report

Analysis-only mode: `ARCF_BOUNDARY_DIAGNOSTICS`. No production candidates were emitted or promoted by this diagnostic pass.

## Validation Metrics

| run | accepted | true | false | no_attempt | judge_errors | judge_rejected |
| --- | --- | --- | --- | --- | --- | --- |
| sample_20_disabled | 20 | 10 | 10 | 0 | 0 | 0 |
| sample_200_disabled | 200 | 100 | 100 | 0 | 0 | 0 |
| sample_200_public_exact_disabled | 198 | 98 | 100 | 2 | 0 | 0 |
| private_readiness_benchmark_disabled | 66 | 24 | 42 | 34 | 0 | 0 |
| private_readiness_benchmark_boundary_diagnostics | 66 | 24 | 42 | 34 | 0 | 0 |
| sample_200_public_exact_disabled_boundary_diagnostics | 198 | 98 | 100 | 2 | 0 | 0 |

## Classification Counts

| classification | count |
| --- | --- |
| correctly_abstained_boundary | 15 |
| likely_false_needs_larger_cm | 6 |
| likely_true_recognizer_gap | 2 |
| unresolved | 3 |
| unsafe_widening_required | 10 |

## Counts By Family

| family | counts |
| --- | --- |
| argument_erasure_context_bridge | {'unsafe_widening_required': 3, 'correctly_abstained_boundary': 3, 'unresolved': 2, 'likely_false_needs_larger_cm': 1, 'likely_true_recognizer_gap': 1} |
| public_exact_disabled_sample | {'likely_true_recognizer_gap': 1, 'correctly_abstained_boundary': 1} |
| seed_collapse_contextual_lift | {'correctly_abstained_boundary': 4, 'likely_false_needs_larger_cm': 1} |
| square_anchor_anchored_erasure | {'correctly_abstained_boundary': 3, 'likely_false_needs_larger_cm': 1} |
| tail_shift_repeated_tail_corridor | {'unsafe_widening_required': 7, 'unresolved': 1, 'correctly_abstained_boundary': 1, 'likely_false_needs_larger_cm': 2} |
| two_local_edge_local_theory_bridge | {'correctly_abstained_boundary': 3, 'likely_false_needs_larger_cm': 1} |

## Likely True Recognizer Gaps

| case | source | family | variant | note |
| --- | --- | --- | --- | --- |
| padv_argument_erasure_context_bridge_true_2074_2082_positive_0002 | private_readiness_benchmark_v2 | argument_erasure_context_bridge | variable_permutation_0 | no bounded path using existing generalized components was mined |
| true_2789_898 | sample200_public_exact_disabled | public_exact_disabled_sample | None | known true exact certificate exists, but no compact generalized proof component is currently available |

## Known Rejected Widening Required

| case | family | class | variant | classification |
| --- | --- | --- | --- | --- |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0004 | argument_erasure_context_bridge | boundary | repeated_variable_count_changed_0 | unsafe_widening_required |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0006 | argument_erasure_context_bridge | boundary | shallow_context_wrap_left_0 | unsafe_widening_required |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0007 | argument_erasure_context_bridge | boundary | deeper_context_than_route_cap_0 | unsafe_widening_required |
| padv_tail_shift_repeated_tail_corridor_true_689_1350_boundary_0079 | tail_shift_repeated_tail_corridor | boundary | shallow_context_wrap_left_1 | unsafe_widening_required |
| padv_tail_shift_repeated_tail_corridor_true_689_1350_boundary_0080 | tail_shift_repeated_tail_corridor | boundary | deeper_context_than_route_cap_1 | unsafe_widening_required |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0066 | tail_shift_repeated_tail_corridor | boundary | shallow_context_wrap_left_0 | unsafe_widening_required |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0067 | tail_shift_repeated_tail_corridor | boundary | deeper_context_than_route_cap_0 | unsafe_widening_required |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0068 | tail_shift_repeated_tail_corridor | boundary | swapped_tail_position_0 | unsafe_widening_required |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_negative_0071 | tail_shift_repeated_tail_corridor | negative | reversed_erasure_without_support_0 | likely_false_needs_larger_cm |
| padv_tail_shift_repeated_tail_corridor_true_689_1350_positive_0076 | tail_shift_repeated_tail_corridor | positive | variable_permutation_1 | unsafe_widening_required |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_positive_0062 | tail_shift_repeated_tail_corridor | positive | variable_permutation_0 | unsafe_widening_required |

## Cap Or Depth Blocked Cases

| case | family | variant | classification |
| --- | --- | --- | --- |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0007 | argument_erasure_context_bridge | deeper_context_than_route_cap_0 | unsafe_widening_required |
| padv_argument_erasure_context_bridge_true_674_668_boundary_0020 | argument_erasure_context_bridge | deeper_context_than_route_cap_1 | correctly_abstained_boundary |
| padv_seed_collapse_contextual_lift_true_130_1759_boundary_0040 | seed_collapse_contextual_lift | deeper_context_than_route_cap_1 | correctly_abstained_boundary |
| padv_square_anchor_anchored_erasure_true_2860_3458_boundary_0047 | square_anchor_anchored_erasure | deeper_context_than_route_cap_0 | correctly_abstained_boundary |
| padv_tail_shift_repeated_tail_corridor_true_689_1350_boundary_0080 | tail_shift_repeated_tail_corridor | deeper_context_than_route_cap_1 | unsafe_widening_required |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0067 | tail_shift_repeated_tail_corridor | deeper_context_than_route_cap_0 | unsafe_widening_required |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_boundary_0087 | two_local_edge_local_theory_bridge | deeper_context_than_route_cap_0 | correctly_abstained_boundary |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_boundary_0100 | two_local_edge_local_theory_bridge | deeper_context_than_route_cap_1 | correctly_abstained_boundary |

## Larger Finite-Model Search Candidates

| case | family | class | variant | classification | tables_tested | reason |
| --- | --- | --- | --- | --- | --- | --- |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0004 | argument_erasure_context_bridge | boundary | repeated_variable_count_changed_0 | unsafe_widening_required | 19892 | no_countermodel_found_under_n_5 |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0006 | argument_erasure_context_bridge | boundary | shallow_context_wrap_left_0 | unsafe_widening_required | 19892 | no_countermodel_found_under_n_5 |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0007 | argument_erasure_context_bridge | boundary | deeper_context_than_route_cap_0 | unsafe_widening_required | 19892 | no_countermodel_found_under_n_5 |
| padv_argument_erasure_context_bridge_true_674_668_boundary_0019 | argument_erasure_context_bridge | boundary | shallow_context_wrap_left_1 | correctly_abstained_boundary | 19892 | no_countermodel_found_under_n_5 |
| padv_argument_erasure_context_bridge_true_674_668_boundary_0020 | argument_erasure_context_bridge | boundary | deeper_context_than_route_cap_1 | correctly_abstained_boundary | 19892 | no_countermodel_found_under_n_5 |
| padv_argument_erasure_context_bridge_true_2074_2082_negative_0011 | argument_erasure_context_bridge | negative | reversed_erasure_without_support_0 | likely_false_needs_larger_cm | 19892 | no_countermodel_found_under_n_5 |
| padv_seed_collapse_contextual_lift_true_130_1759_boundary_0038 | seed_collapse_contextual_lift | boundary | expanded_let_like_subterm_1 | correctly_abstained_boundary | 19892 | no_countermodel_found_under_n_5 |
| padv_seed_collapse_contextual_lift_true_130_1759_boundary_0039 | seed_collapse_contextual_lift | boundary | shallow_context_wrap_left_1 | correctly_abstained_boundary | 19892 | no_countermodel_found_under_n_5 |
| padv_seed_collapse_contextual_lift_true_130_1759_boundary_0040 | seed_collapse_contextual_lift | boundary | deeper_context_than_route_cap_1 | correctly_abstained_boundary | 19892 | no_countermodel_found_under_n_5 |
| padv_seed_collapse_contextual_lift_true_2942_5_negative_0031 | seed_collapse_contextual_lift | negative | reversed_erasure_without_support_0 | likely_false_needs_larger_cm | 19892 | no_countermodel_found_under_n_5 |
| padv_square_anchor_anchored_erasure_true_2860_3458_boundary_0046 | square_anchor_anchored_erasure | boundary | shallow_context_wrap_left_0 | correctly_abstained_boundary | 19892 | no_countermodel_found_under_n_5 |
| padv_square_anchor_anchored_erasure_true_2860_3458_boundary_0047 | square_anchor_anchored_erasure | boundary | deeper_context_than_route_cap_0 | correctly_abstained_boundary | 19892 | no_countermodel_found_under_n_5 |
| padv_square_anchor_anchored_erasure_true_2860_3458_negative_0051 | square_anchor_anchored_erasure | negative | reversed_erasure_without_support_0 | likely_false_needs_larger_cm | 19892 | no_countermodel_found_under_n_5 |
| padv_tail_shift_repeated_tail_corridor_true_689_1350_boundary_0079 | tail_shift_repeated_tail_corridor | boundary | shallow_context_wrap_left_1 | unsafe_widening_required | 19892 | no_countermodel_found_under_n_5 |
| padv_tail_shift_repeated_tail_corridor_true_689_1350_boundary_0080 | tail_shift_repeated_tail_corridor | boundary | deeper_context_than_route_cap_1 | unsafe_widening_required | 19892 | no_countermodel_found_under_n_5 |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0066 | tail_shift_repeated_tail_corridor | boundary | shallow_context_wrap_left_0 | unsafe_widening_required | 19892 | no_countermodel_found_under_n_5 |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0067 | tail_shift_repeated_tail_corridor | boundary | deeper_context_than_route_cap_0 | unsafe_widening_required | 19892 | no_countermodel_found_under_n_5 |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0068 | tail_shift_repeated_tail_corridor | boundary | swapped_tail_position_0 | unsafe_widening_required | 19892 | no_countermodel_found_under_n_5 |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_negative_0069 | tail_shift_repeated_tail_corridor | negative | anti_goal_rhs_perturbation_0 | likely_false_needs_larger_cm | 19892 | no_countermodel_found_under_n_5 |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_negative_0071 | tail_shift_repeated_tail_corridor | negative | reversed_erasure_without_support_0 | likely_false_needs_larger_cm | 19892 | no_countermodel_found_under_n_5 |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_boundary_0087 | two_local_edge_local_theory_bridge | boundary | deeper_context_than_route_cap_0 | correctly_abstained_boundary | 19892 | no_countermodel_found_under_n_5 |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_boundary_0100 | two_local_edge_local_theory_bridge | boundary | deeper_context_than_route_cap_1 | correctly_abstained_boundary | 19892 | no_countermodel_found_under_n_5 |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_negative_0091 | two_local_edge_local_theory_bridge | negative | reversed_erasure_without_support_0 | likely_false_needs_larger_cm | 19892 | no_countermodel_found_under_n_5 |

## Top Candidate Improvements

| rank | candidate | cases | risk |
| --- | --- | --- | --- |
| 1 | Analyze true_2789_898 as an offline local rotation/context bridge only if a sub-12KB proof skeleton is discovered. | true_2789_898 | medium-high; no production route recommended from current proof chain |
| 2 | Continue analysis-only alpha/permutation diagnostics for known-true synthetic no-attempts; do not widen until standalone judge validation has zero rejected candidates. | padv_argument_erasure_context_bridge_true_2074_2082_positive_0002 | analysis-only; production widening currently blocked for tail-shift-like variants |
| 3 | Run larger countermodel search for likely-false negative no-attempts before considering proof-route changes. | padv_argument_erasure_context_bridge_true_2074_2082_negative_0011, padv_seed_collapse_contextual_lift_true_2942_5_negative_0031, padv_square_anchor_anchored_erasure_true_2860_3458_negative_0051, padv_tail_shift_repeated_tail_corridor_true_691_1976_negative_0069, padv_tail_shift_repeated_tail_corridor_true_691_1976_negative_0071 | low as analysis-only; do not promote witnesses without judge validation |
| 4 | Keep tail-shift route frozen; known rejected relaxed candidate makes this family unsafe to widen from current evidence. | padv_tail_shift_repeated_tail_corridor_true_689_1350_boundary_0079, padv_tail_shift_repeated_tail_corridor_true_689_1350_boundary_0080, padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0066, padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0067, padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0068 | high if implemented; safe recommendation is no production change |
| 5 | Use boundary diagnostics as a regression gate for future branch experiments rather than changing route order or caps. |  | low |

## Recommendation

freeze production solver; continue analysis-only diagnostics and larger countermodel/proof discovery on separate validation branches
