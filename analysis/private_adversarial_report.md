# Private Adversarial Report

This report measures generalized-route behavior on deterministic unseen structural variants. It does not change production solver behavior.

## Overall

| metric | value |
| --- | --- |
| generated count | 100 |
| primary mode | public_exact_disabled |
| accepted count | 66 |
| accepted true proofs | 24 |
| accepted false countermodels | 42 |
| no attempt count | 34 |
| judge errors | 0 |
| final private-readiness recommendation | freeze production solver |

## Mode Summary

| mode | accepted | true proofs | false countermodels | no attempt | judge rejected | judge errors |
| --- | --- | --- | --- | --- | --- | --- |
| normal | 69 | 27 | 42 | 31 | 0 | 0 |
| public_exact_disabled | 66 | 24 | 42 | 34 | 0 | 0 |
| telemetry_enabled | 66 | 24 | 42 | 34 | 0 | 0 |

## Route-Family Scores

| family | classification | generated | positive accept rate | negative safe rate | boundary abstention | judge rejected | judge errors | avg proof | worst proof | avg margin | fragility |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| argument_erasure_context_bridge | private-promising | 20 | 0.8 | 1.0 | 0.556 | 0 | 0 | 3769.4 | 7079 | 8230.6 | 3.0 |
| seed_collapse_contextual_lift | production-robust | 20 | 1.0 | 1.0 | 0.333 | 0 | 0 | 739.6 | 924 | 4260.4 | 1.0 |
| square_anchor_anchored_erasure | production-robust | 20 | 1.0 | 1.0 | 0.222 | 0 | 0 | 7801.5 | 10676 | 4198.5 | 1.0 |
| tail_shift_repeated_tail_corridor | fragile-do-not-widen | 20 | 0.6 | 1.0 | 0.556 | 0 | 0 | 4573.67 | 7201 | 7426.33 | 4.5 |
| two_local_edge_local_theory_bridge | production-robust | 20 | 1.0 | 1.0 | 0.222 | 0 | 0 | 4554.0 | 4554 | 7446.0 | 2.0 |

## Top 20 Failures By Importance

| case | family | class | variant | status | expected | marker | proof bytes | reason |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| padv_argument_erasure_context_bridge_true_2074_2082_positive_0002 | argument_erasure_context_bridge | positive | variable_permutation_0 | no_attempt | known_true |  | 0 | no candidate emitted |
| padv_tail_shift_repeated_tail_corridor_true_689_1350_positive_0076 | tail_shift_repeated_tail_corridor | positive | variable_permutation_1 | no_attempt | known_true |  | 0 | no candidate emitted |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_positive_0062 | tail_shift_repeated_tail_corridor | positive | variable_permutation_0 | no_attempt | known_true |  | 0 | no candidate emitted |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0007 | argument_erasure_context_bridge | boundary | deeper_context_than_route_cap_0 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_argument_erasure_context_bridge_true_2074_2082_mixed_0013 | argument_erasure_context_bridge | mixed | nested_motif_unrelated_context_0 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_argument_erasure_context_bridge_true_674_668_boundary_0020 | argument_erasure_context_bridge | boundary | deeper_context_than_route_cap_1 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_seed_collapse_contextual_lift_true_130_1759_boundary_0040 | seed_collapse_contextual_lift | boundary | deeper_context_than_route_cap_1 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_seed_collapse_contextual_lift_true_2942_5_mixed_0033 | seed_collapse_contextual_lift | mixed | nested_motif_unrelated_context_0 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_square_anchor_anchored_erasure_true_2860_3458_boundary_0047 | square_anchor_anchored_erasure | boundary | deeper_context_than_route_cap_0 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_square_anchor_anchored_erasure_true_2860_3458_mixed_0053 | square_anchor_anchored_erasure | mixed | nested_motif_unrelated_context_0 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_tail_shift_repeated_tail_corridor_true_689_1350_boundary_0080 | tail_shift_repeated_tail_corridor | boundary | deeper_context_than_route_cap_1 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_boundary_0067 | tail_shift_repeated_tail_corridor | boundary | deeper_context_than_route_cap_0 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_mixed_0073 | tail_shift_repeated_tail_corridor | mixed | nested_motif_unrelated_context_0 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_boundary_0087 | two_local_edge_local_theory_bridge | boundary | deeper_context_than_route_cap_0 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_boundary_0100 | two_local_edge_local_theory_bridge | boundary | deeper_context_than_route_cap_1 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_mixed_0093 | two_local_edge_local_theory_bridge | mixed | nested_motif_unrelated_context_0 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0004 | argument_erasure_context_bridge | boundary | repeated_variable_count_changed_0 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0006 | argument_erasure_context_bridge | boundary | shallow_context_wrap_left_0 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_argument_erasure_context_bridge_true_2074_2082_mixed_0012 | argument_erasure_context_bridge | mixed | alpha_plus_outer_context_0 | no_attempt | unknown |  | 0 | no candidate emitted |
| padv_argument_erasure_context_bridge_true_2074_2082_mixed_0014 | argument_erasure_context_bridge | mixed | motif_preserving_local_expansion_probe_0 | no_attempt | unknown |  | 0 | no candidate emitted |

## Top 20 False-Countermodel Successes

| case | family | class | variant | proof bytes |
| --- | --- | --- | --- | --- |
| padv_argument_erasure_context_bridge_true_2074_2082_negative_0009 | argument_erasure_context_bridge | negative | anti_goal_rhs_perturbation_0 | 265 |
| padv_argument_erasure_context_bridge_true_2074_2082_negative_0010 | argument_erasure_context_bridge | negative | context_lift_mismatch_0 | 265 |
| padv_seed_collapse_contextual_lift_true_2942_5_negative_0029 | seed_collapse_contextual_lift | negative | anti_goal_rhs_perturbation_0 | 265 |
| padv_seed_collapse_contextual_lift_true_2942_5_negative_0030 | seed_collapse_contextual_lift | negative | context_lift_mismatch_0 | 265 |
| padv_square_anchor_anchored_erasure_true_2860_3458_negative_0049 | square_anchor_anchored_erasure | negative | anti_goal_rhs_perturbation_0 | 277 |
| padv_square_anchor_anchored_erasure_true_2860_3458_negative_0050 | square_anchor_anchored_erasure | negative | context_lift_mismatch_0 | 265 |
| padv_tail_shift_repeated_tail_corridor_true_691_1976_negative_0070 | tail_shift_repeated_tail_corridor | negative | context_lift_mismatch_0 | 265 |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_negative_0089 | two_local_edge_local_theory_bridge | negative | anti_goal_rhs_perturbation_0 | 277 |
| padv_two_local_edge_local_theory_bridge_true_2055_2656_negative_0090 | two_local_edge_local_theory_bridge | negative | context_lift_mismatch_0 | 265 |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0005 | argument_erasure_context_bridge | boundary | expanded_let_like_subterm_0 | 277 |
| padv_argument_erasure_context_bridge_true_2074_2082_boundary_0008 | argument_erasure_context_bridge | boundary | swapped_tail_position_0 | 265 |
| padv_argument_erasure_context_bridge_true_674_668_boundary_0018 | argument_erasure_context_bridge | boundary | expanded_let_like_subterm_1 | 293 |
| padv_seed_collapse_contextual_lift_true_130_1759_boundary_0037 | seed_collapse_contextual_lift | boundary | repeated_variable_count_changed_1 | 313 |
| padv_seed_collapse_contextual_lift_true_2942_5_boundary_0024 | seed_collapse_contextual_lift | boundary | repeated_variable_count_changed_0 | 265 |
| padv_seed_collapse_contextual_lift_true_2942_5_boundary_0025 | seed_collapse_contextual_lift | boundary | expanded_let_like_subterm_0 | 265 |
| padv_seed_collapse_contextual_lift_true_2942_5_boundary_0026 | seed_collapse_contextual_lift | boundary | shallow_context_wrap_left_0 | 277 |
| padv_seed_collapse_contextual_lift_true_2942_5_boundary_0027 | seed_collapse_contextual_lift | boundary | deeper_context_than_route_cap_0 | 277 |
| padv_seed_collapse_contextual_lift_true_2942_5_boundary_0028 | seed_collapse_contextual_lift | boundary | swapped_tail_position_0 | 265 |
| padv_seed_collapse_contextual_lift_true_2942_5_mixed_0032 | seed_collapse_contextual_lift | mixed | alpha_plus_outer_context_0 | 277 |
| padv_seed_collapse_contextual_lift_true_2942_5_mixed_0034 | seed_collapse_contextual_lift | mixed | motif_preserving_local_expansion_probe_0 | 265 |

## Recommended Solver Changes

| category | recommendation |
| --- | --- |
| A. safe production change | Keep public exact certificates ahead of generalized routes; no ordering change is indicated by this pass. |
| B. debug-only / analysis-only | Keep ARCF_ROUTE_TELEMETRY and this adversarial harness as the private-readiness regression gate. |
| E. requires countermodel strengthening | Consider countermodel-first routing for tail_shift_repeated_tail_corridor; most negative variants abstained rather than producing finite witnesses. |
| A. safe production change | No fragile-route widening block was observed in this run, but preserve current caps until larger fuzz batches agree. |
