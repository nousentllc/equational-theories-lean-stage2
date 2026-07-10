# Motif Robustness Report

This report scores generalized-route behavior from the synthetic motif fuzz run. Production route behavior is unchanged.

## Input Summary

| metric | value |
| --- | --- |
| generated | 105 |
| accepted | 83 |
| accepted true | 47 |
| accepted false countermodels | 36 |
| no attempt | 22 |
| judge errors | 0 |

## Route Family Ranking

| route family | tier | generated | accepted true | accepted false | judge rejected | judge errors | expected accept rate | avg true proof bytes | avg margin | recommendation |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| generalized_seed_collapse_contextual_lift | highly robust | 21 | 9 | 9 | 0 | 0 | 1.0 | 779.67 | 4220.33 | keep frozen; safe candidate for future narrow alpha/permutation widening after more fuzzing |
| generalized_square_anchor_anchored_erasure_bridge | highly robust | 21 | 10 | 9 | 0 | 0 | 1.0 | 8973.8 | 3026.2 | keep frozen; safe candidate for future narrow alpha/permutation widening after more fuzzing |
| generalized_two_local_edge_local_theory_bridge | highly robust | 7 | 3 | 4 | 0 | 0 | 1.0 | 4214.0 | 7786.0 | keep frozen; promising but low synthetic sample size |
| generalized_tail_shift_repeated_tail_corridor | fragile under perturbation | 35 | 15 | 10 | 0 | 0 | 0.933 | 8593.8 | 5006.2 | keep frozen; inspect no-attempt and expected-accept failures first |
| generalized_argument_erasure_context_bridge | fragile under perturbation | 21 | 10 | 4 | 0 | 0 | 0.889 | 6735.4 | 7264.6 | keep frozen; inspect no-attempt and expected-accept failures first |

## Route Marker Metrics

| route marker | hits | accepted true | context depth | avg proof bytes | avg margin | min margin |
| --- | --- | --- | --- | --- | --- | --- |
| gae_seed_square_outer_context_erasure | 2 | 2 | 4 | 18415.0 | 3585.0 | 3585 |
| gae_square_context_erasure | 3 | 3 | 3 | 7079.0 | 4921.0 | 4921 |
| gltb_l4_l15_local_theory_bridge | 3 | 3 | 2 | 4214.0 | 7786.0 | 7786 |
| gsae_double_tail_expansion | 3 | 3 | 3 | 7340.0 | 4660.0 | 4660 |
| gsae_self_square_extension | 3 | 3 | 2 | 11863.0 | 137.0 | 137 |
| gsae_square_anchor_right_context | 3 | 3 | 3 | 10676.0 | 1324.0 | 1324 |
| gsc_repeated_anchor_collapse | 3 | 3 | 2 | 924.0 | 4076.0 | 4076 |
| gsc_self_square_replacement | 3 | 3 | 1 | 952.0 | 4048.0 | 4048 |
| gsc_two_h_contextual_lift | 3 | 3 | 2 | 463.0 | 4537.0 | 4537 |
| gtsrtc_diagonal_tail_shift | 3 | 3 | 2 | 7414.0 | 4586.0 | 4586 |
| gtsrtc_outer_y_nested_x_tail | 2 | 2 | 4 | 7201.0 | 4799.0 | 4799 |
| gtsrtc_right_nested_repeated_y_corridor | 3 | 3 | 4 | 10032.0 | 1968.0 | 1968 |
| gtsrtc_y_square_corridor | 3 | 3 | 3 | 17434.0 | 2566.0 | 2566 |
| gtsrtc_y_tail_context_shift | 3 | 3 | 3 | 3260.0 | 8740.0 | 8740 |

## Judge-Rejected Variants

| route family | case |
| --- | --- |
| none | none |

## Debug Telemetry Fields

`route_name`, `route_marker`, `guard_exactness_score`, `context_depth`, `proof_size`, `local_lemma_count`, `congrArg_count`, `certificate_cap`, `certificate_margin_to_cap`, `outcome`

## Recommendations

- Keep production route order frozen; public exact certificates should remain ahead of generalized routes.
- Do not widen generalized_argument_erasure_context_bridge or generalized_tail_shift_repeated_tail_corridor until their alpha-renamed rejected variants are diagnosed.
- Use the debug-only ARCF_ROUTE_TELEMETRY path for future route experiments; normal runs remain silent.
- Add alias-normalization checks before raising route caps or accepting larger generated certificates.
- Use motif_fuzz_regression plus this robustness report as the pre-private regression gate.
