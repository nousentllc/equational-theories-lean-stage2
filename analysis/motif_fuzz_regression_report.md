# Motif Fuzz Regression Report

Synthetic private-readiness variants were generated from recovered public motif seeds and run with public exact certificates disabled.

## Run Summary

| metric | value |
| --- | --- |
| generated cases | 105 |
| accepted | 83 |
| accepted true | 47 |
| accepted false | 36 |
| no attempt | 22 |
| judge errors | 0 |

## Motif Family Summary

| motif family | generated | accepted | accepted true | accepted false | no attempt | judge errors |
| --- | --- | --- | --- | --- | --- | --- |
| generalized_argument_erasure_context_bridge | 21 | 14 | 10 | 4 | 7 | 0 |
| generalized_seed_collapse_contextual_lift | 21 | 18 | 9 | 9 | 3 | 0 |
| generalized_square_anchor_anchored_erasure_bridge | 21 | 19 | 10 | 9 | 2 | 0 |
| generalized_tail_shift_repeated_tail_corridor | 35 | 25 | 15 | 10 | 10 | 0 |
| generalized_two_local_edge_local_theory_bridge | 7 | 7 | 3 | 4 | 0 | 0 |

## Seed Case Summary

| seed case | generated | accepted variants | judge errors | accepted variant kinds |
| --- | --- | --- | --- | --- |
| true_130_1759 | 7 | 5 | 0 | baseline_seed, alpha_rename_0, variable_permutation, repeated_anchor_substitution, operand_side_swap_probe |
| true_1636_1839 | 7 | 6 | 0 | baseline_seed, alpha_rename_0, variable_permutation, repeated_anchor_substitution, operand_side_swap_probe, shallow_left_context_wrap_probe |
| true_1698_555 | 7 | 5 | 0 | baseline_seed, alpha_rename_0, variable_permutation, repeated_anchor_substitution, small_depth_anchor_perturbation_probe |
| true_1738_1258 | 7 | 7 | 0 | baseline_seed, alpha_rename_0, variable_permutation, repeated_anchor_substitution, operand_side_swap_probe, shallow_left_context_wrap_probe, small_depth_anchor_perturbation_probe |
| true_2055_2656 | 7 | 7 | 0 | baseline_seed, alpha_rename_0, variable_permutation, repeated_anchor_substitution, operand_side_swap_probe, shallow_left_context_wrap_probe, small_depth_anchor_perturbation_probe |
| true_2061_307 | 7 | 6 | 0 | baseline_seed, alpha_rename_0, variable_permutation, repeated_anchor_substitution, operand_side_swap_probe, shallow_left_context_wrap_probe |
| true_2074_2082 | 7 | 6 | 0 | baseline_seed, alpha_rename_0, variable_permutation, repeated_anchor_substitution, operand_side_swap_probe, small_depth_anchor_perturbation_probe |
| true_2135_2128 | 7 | 5 | 0 | baseline_seed, alpha_rename_0, variable_permutation, repeated_anchor_substitution, operand_side_swap_probe |
| true_2771_2775 | 7 | 3 | 0 | baseline_seed, variable_permutation, repeated_anchor_substitution |
| true_2860_3458 | 7 | 6 | 0 | baseline_seed, alpha_rename_0, variable_permutation, repeated_anchor_substitution, operand_side_swap_probe, small_depth_anchor_perturbation_probe |
| true_2942_5 | 7 | 7 | 0 | baseline_seed, alpha_rename_0, variable_permutation, repeated_anchor_substitution, operand_side_swap_probe, shallow_left_context_wrap_probe, small_depth_anchor_perturbation_probe |
| true_4082_4109 | 7 | 6 | 0 | baseline_seed, alpha_rename_0, variable_permutation, repeated_anchor_substitution, operand_side_swap_probe, small_depth_anchor_perturbation_probe |
| true_674_668 | 7 | 5 | 0 | baseline_seed, alpha_rename_0, variable_permutation, repeated_anchor_substitution, small_depth_anchor_perturbation_probe |
| true_689_1350 | 7 | 4 | 0 | baseline_seed, variable_permutation, repeated_anchor_substitution, small_depth_anchor_perturbation_probe |
| true_691_1976 | 7 | 5 | 0 | baseline_seed, alpha_rename_0, variable_permutation, repeated_anchor_substitution, small_depth_anchor_perturbation_probe |

## Route Hit Markers

| route marker | hits |
| --- | --- |
| gae_seed_square_outer_context_erasure | 2 |
| gae_square_context_erasure | 3 |
| gltb_l4_l15_local_theory_bridge | 3 |
| gsae_double_tail_expansion | 3 |
| gsae_self_square_extension | 3 |
| gsae_square_anchor_right_context | 3 |
| gsc_repeated_anchor_collapse | 3 |
| gsc_self_square_replacement | 3 |
| gsc_two_h_contextual_lift | 3 |
| gtsrtc_diagonal_tail_shift | 3 |
| gtsrtc_outer_y_nested_x_tail | 2 |
| gtsrtc_right_nested_repeated_y_corridor | 3 |
| gtsrtc_y_square_corridor | 3 |
| gtsrtc_y_tail_context_shift | 3 |

## Route Family Failure Modes

| route family | failure modes |
| --- | --- |
| generalized_argument_erasure_context_bridge | no_attempt=7 |
| generalized_seed_collapse_contextual_lift | no_attempt=3 |
| generalized_square_anchor_anchored_erasure_bridge | no_attempt=2 |
| generalized_tail_shift_repeated_tail_corridor | no_attempt=10 |

## Recommendations

- Inspect accept_true alpha/permutation failures before route widening; they indicate schema guards are narrower than the recovered public motif.
- Add per-route certificate-size telemetry and alias compression checks for generated certificates over 12 KB.
- Do not change normal production ordering until guard gaps are classified by family.
- Review guard-probe accepted cases manually; some may be valid motif generalizations, but they should not trigger broad guard widening automatically.
- Keep exact public certificates ahead of generalized routes in normal mode and use this harness as the private-readiness regression gate.

## Case Detail

| case | motif family | seed | variant | status | route marker | certificate bytes | failure reason |
| --- | --- | --- | --- | --- | --- | --- | --- |
| mfuzz_true_2074_2082_baseline_seed_001 | generalized_argument_erasure_context_bridge | true_2074_2082 | baseline_seed | accepted_true |  | 2300 |  |
| mfuzz_true_2074_2082_alpha_rename_0_002 | generalized_argument_erasure_context_bridge | true_2074_2082 | alpha_rename_0 | accepted_true |  | 2300 |  |
| mfuzz_true_2074_2082_variable_permutation_003 | generalized_argument_erasure_context_bridge | true_2074_2082 | variable_permutation | accepted_true |  | 2300 |  |
| mfuzz_true_2074_2082_repeated_anchor_substitution_004 | generalized_argument_erasure_context_bridge | true_2074_2082 | repeated_anchor_substitution | accepted_true |  | 2298 |  |
| mfuzz_true_2074_2082_operand_side_swap_probe_005 | generalized_argument_erasure_context_bridge | true_2074_2082 | operand_side_swap_probe | accepted_false |  | 265 |  |
| mfuzz_true_2074_2082_small_depth_anchor_perturbation_probe_007 | generalized_argument_erasure_context_bridge | true_2074_2082 | small_depth_anchor_perturbation_probe | accepted_false |  | 277 |  |
| mfuzz_true_674_668_baseline_seed_008 | generalized_argument_erasure_context_bridge | true_674_668 | baseline_seed | accepted_true | gae_square_context_erasure | 7079 |  |
| mfuzz_true_674_668_alpha_rename_0_009 | generalized_argument_erasure_context_bridge | true_674_668 | alpha_rename_0 | accepted_true | gae_square_context_erasure | 7079 |  |
| mfuzz_true_674_668_variable_permutation_010 | generalized_argument_erasure_context_bridge | true_674_668 | variable_permutation | accepted_true | gae_square_context_erasure | 7079 |  |
| mfuzz_true_674_668_repeated_anchor_substitution_011 | generalized_argument_erasure_context_bridge | true_674_668 | repeated_anchor_substitution | accepted_true |  | 89 |  |
| mfuzz_true_674_668_small_depth_anchor_perturbation_probe_014 | generalized_argument_erasure_context_bridge | true_674_668 | small_depth_anchor_perturbation_probe | accepted_false |  | 293 |  |
| mfuzz_true_2771_2775_baseline_seed_015 | generalized_argument_erasure_context_bridge | true_2771_2775 | baseline_seed | accepted_true | gae_seed_square_outer_context_erasure | 18415 |  |
| mfuzz_true_2771_2775_variable_permutation_017 | generalized_argument_erasure_context_bridge | true_2771_2775 | variable_permutation | accepted_true | gae_seed_square_outer_context_erasure | 18415 |  |
| mfuzz_true_2771_2775_repeated_anchor_substitution_018 | generalized_argument_erasure_context_bridge | true_2771_2775 | repeated_anchor_substitution | accepted_false |  | 265 |  |
| mfuzz_true_2942_5_baseline_seed_022 | generalized_seed_collapse_contextual_lift | true_2942_5 | baseline_seed | accepted_true | gsc_repeated_anchor_collapse | 924 |  |
| mfuzz_true_2942_5_alpha_rename_0_023 | generalized_seed_collapse_contextual_lift | true_2942_5 | alpha_rename_0 | accepted_true | gsc_repeated_anchor_collapse | 924 |  |
| mfuzz_true_2942_5_variable_permutation_024 | generalized_seed_collapse_contextual_lift | true_2942_5 | variable_permutation | accepted_true | gsc_repeated_anchor_collapse | 924 |  |
| mfuzz_true_2942_5_repeated_anchor_substitution_025 | generalized_seed_collapse_contextual_lift | true_2942_5 | repeated_anchor_substitution | accepted_false |  | 265 |  |
| mfuzz_true_2942_5_operand_side_swap_probe_026 | generalized_seed_collapse_contextual_lift | true_2942_5 | operand_side_swap_probe | accepted_false |  | 265 |  |
| mfuzz_true_2942_5_shallow_left_context_wrap_probe_027 | generalized_seed_collapse_contextual_lift | true_2942_5 | shallow_left_context_wrap_probe | accepted_false |  | 277 |  |
| mfuzz_true_2942_5_small_depth_anchor_perturbation_probe_028 | generalized_seed_collapse_contextual_lift | true_2942_5 | small_depth_anchor_perturbation_probe | accepted_false |  | 265 |  |
| mfuzz_true_130_1759_baseline_seed_029 | generalized_seed_collapse_contextual_lift | true_130_1759 | baseline_seed | accepted_true | gsc_two_h_contextual_lift | 463 |  |
| mfuzz_true_130_1759_alpha_rename_0_030 | generalized_seed_collapse_contextual_lift | true_130_1759 | alpha_rename_0 | accepted_true | gsc_two_h_contextual_lift | 463 |  |
| mfuzz_true_130_1759_variable_permutation_031 | generalized_seed_collapse_contextual_lift | true_130_1759 | variable_permutation | accepted_true | gsc_two_h_contextual_lift | 463 |  |
| mfuzz_true_130_1759_repeated_anchor_substitution_032 | generalized_seed_collapse_contextual_lift | true_130_1759 | repeated_anchor_substitution | accepted_false |  | 313 |  |
| mfuzz_true_130_1759_operand_side_swap_probe_033 | generalized_seed_collapse_contextual_lift | true_130_1759 | operand_side_swap_probe | accepted_false |  | 265 |  |
| mfuzz_true_2061_307_baseline_seed_036 | generalized_seed_collapse_contextual_lift | true_2061_307 | baseline_seed | accepted_true | gsc_self_square_replacement | 952 |  |
| mfuzz_true_2061_307_alpha_rename_0_037 | generalized_seed_collapse_contextual_lift | true_2061_307 | alpha_rename_0 | accepted_true | gsc_self_square_replacement | 952 |  |
| mfuzz_true_2061_307_variable_permutation_038 | generalized_seed_collapse_contextual_lift | true_2061_307 | variable_permutation | accepted_true | gsc_self_square_replacement | 952 |  |
| mfuzz_true_2061_307_repeated_anchor_substitution_039 | generalized_seed_collapse_contextual_lift | true_2061_307 | repeated_anchor_substitution | accepted_false |  | 265 |  |
| mfuzz_true_2061_307_operand_side_swap_probe_040 | generalized_seed_collapse_contextual_lift | true_2061_307 | operand_side_swap_probe | accepted_false |  | 277 |  |
| mfuzz_true_2061_307_shallow_left_context_wrap_probe_041 | generalized_seed_collapse_contextual_lift | true_2061_307 | shallow_left_context_wrap_probe | accepted_false |  | 277 |  |
| mfuzz_true_2860_3458_baseline_seed_043 | generalized_square_anchor_anchored_erasure_bridge | true_2860_3458 | baseline_seed | accepted_true | gsae_square_anchor_right_context | 10676 |  |
| mfuzz_true_2860_3458_alpha_rename_0_044 | generalized_square_anchor_anchored_erasure_bridge | true_2860_3458 | alpha_rename_0 | accepted_true | gsae_square_anchor_right_context | 10676 |  |
| mfuzz_true_2860_3458_variable_permutation_045 | generalized_square_anchor_anchored_erasure_bridge | true_2860_3458 | variable_permutation | accepted_true | gsae_square_anchor_right_context | 10676 |  |
| mfuzz_true_2860_3458_repeated_anchor_substitution_046 | generalized_square_anchor_anchored_erasure_bridge | true_2860_3458 | repeated_anchor_substitution | accepted_false |  | 277 |  |
| mfuzz_true_2860_3458_operand_side_swap_probe_047 | generalized_square_anchor_anchored_erasure_bridge | true_2860_3458 | operand_side_swap_probe | accepted_false |  | 277 |  |
| mfuzz_true_2860_3458_small_depth_anchor_perturbation_probe_049 | generalized_square_anchor_anchored_erasure_bridge | true_2860_3458 | small_depth_anchor_perturbation_probe | accepted_false |  | 277 |  |
| mfuzz_true_1738_1258_baseline_seed_050 | generalized_square_anchor_anchored_erasure_bridge | true_1738_1258 | baseline_seed | accepted_true | gsae_double_tail_expansion | 7340 |  |
| mfuzz_true_1738_1258_alpha_rename_0_051 | generalized_square_anchor_anchored_erasure_bridge | true_1738_1258 | alpha_rename_0 | accepted_true | gsae_double_tail_expansion | 7340 |  |
| mfuzz_true_1738_1258_variable_permutation_052 | generalized_square_anchor_anchored_erasure_bridge | true_1738_1258 | variable_permutation | accepted_true | gsae_double_tail_expansion | 7340 |  |
| mfuzz_true_1738_1258_repeated_anchor_substitution_053 | generalized_square_anchor_anchored_erasure_bridge | true_1738_1258 | repeated_anchor_substitution | accepted_false |  | 293 |  |
| mfuzz_true_1738_1258_operand_side_swap_probe_054 | generalized_square_anchor_anchored_erasure_bridge | true_1738_1258 | operand_side_swap_probe | accepted_false |  | 265 |  |
| mfuzz_true_1738_1258_shallow_left_context_wrap_probe_055 | generalized_square_anchor_anchored_erasure_bridge | true_1738_1258 | shallow_left_context_wrap_probe | accepted_false |  | 277 |  |
| mfuzz_true_1738_1258_small_depth_anchor_perturbation_probe_056 | generalized_square_anchor_anchored_erasure_bridge | true_1738_1258 | small_depth_anchor_perturbation_probe | accepted_true |  | 101 |  |
| mfuzz_true_1636_1839_baseline_seed_057 | generalized_square_anchor_anchored_erasure_bridge | true_1636_1839 | baseline_seed | accepted_true | gsae_self_square_extension | 11863 |  |
| mfuzz_true_1636_1839_alpha_rename_0_058 | generalized_square_anchor_anchored_erasure_bridge | true_1636_1839 | alpha_rename_0 | accepted_true | gsae_self_square_extension | 11863 |  |
| mfuzz_true_1636_1839_variable_permutation_059 | generalized_square_anchor_anchored_erasure_bridge | true_1636_1839 | variable_permutation | accepted_true | gsae_self_square_extension | 11863 |  |
| mfuzz_true_1636_1839_repeated_anchor_substitution_060 | generalized_square_anchor_anchored_erasure_bridge | true_1636_1839 | repeated_anchor_substitution | accepted_false |  | 277 |  |
| mfuzz_true_1636_1839_operand_side_swap_probe_061 | generalized_square_anchor_anchored_erasure_bridge | true_1636_1839 | operand_side_swap_probe | accepted_false |  | 277 |  |
| mfuzz_true_1636_1839_shallow_left_context_wrap_probe_062 | generalized_square_anchor_anchored_erasure_bridge | true_1636_1839 | shallow_left_context_wrap_probe | accepted_false |  | 277 |  |
| mfuzz_true_691_1976_baseline_seed_064 | generalized_tail_shift_repeated_tail_corridor | true_691_1976 | baseline_seed | accepted_true | gtsrtc_y_tail_context_shift | 3260 |  |
| mfuzz_true_691_1976_alpha_rename_0_065 | generalized_tail_shift_repeated_tail_corridor | true_691_1976 | alpha_rename_0 | accepted_true | gtsrtc_y_tail_context_shift | 3260 |  |
| mfuzz_true_691_1976_variable_permutation_066 | generalized_tail_shift_repeated_tail_corridor | true_691_1976 | variable_permutation | accepted_true | gtsrtc_y_tail_context_shift | 3260 |  |
| mfuzz_true_691_1976_repeated_anchor_substitution_067 | generalized_tail_shift_repeated_tail_corridor | true_691_1976 | repeated_anchor_substitution | accepted_false |  | 313 |  |
| mfuzz_true_691_1976_small_depth_anchor_perturbation_probe_070 | generalized_tail_shift_repeated_tail_corridor | true_691_1976 | small_depth_anchor_perturbation_probe | accepted_false |  | 293 |  |
| mfuzz_true_689_1350_baseline_seed_071 | generalized_tail_shift_repeated_tail_corridor | true_689_1350 | baseline_seed | accepted_true | gtsrtc_outer_y_nested_x_tail | 7201 |  |
| mfuzz_true_689_1350_variable_permutation_073 | generalized_tail_shift_repeated_tail_corridor | true_689_1350 | variable_permutation | accepted_true | gtsrtc_outer_y_nested_x_tail | 7201 |  |
| mfuzz_true_689_1350_repeated_anchor_substitution_074 | generalized_tail_shift_repeated_tail_corridor | true_689_1350 | repeated_anchor_substitution | accepted_false |  | 265 |  |
| mfuzz_true_689_1350_small_depth_anchor_perturbation_probe_077 | generalized_tail_shift_repeated_tail_corridor | true_689_1350 | small_depth_anchor_perturbation_probe | accepted_false |  | 277 |  |
| mfuzz_true_4082_4109_baseline_seed_078 | generalized_tail_shift_repeated_tail_corridor | true_4082_4109 | baseline_seed | accepted_true | gtsrtc_diagonal_tail_shift | 7414 |  |
| mfuzz_true_4082_4109_alpha_rename_0_079 | generalized_tail_shift_repeated_tail_corridor | true_4082_4109 | alpha_rename_0 | accepted_true | gtsrtc_diagonal_tail_shift | 7414 |  |
| mfuzz_true_4082_4109_variable_permutation_080 | generalized_tail_shift_repeated_tail_corridor | true_4082_4109 | variable_permutation | accepted_true | gtsrtc_diagonal_tail_shift | 7414 |  |
| mfuzz_true_4082_4109_repeated_anchor_substitution_081 | generalized_tail_shift_repeated_tail_corridor | true_4082_4109 | repeated_anchor_substitution | accepted_false |  | 265 |  |
| mfuzz_true_4082_4109_operand_side_swap_probe_082 | generalized_tail_shift_repeated_tail_corridor | true_4082_4109 | operand_side_swap_probe | accepted_false |  | 277 |  |
| mfuzz_true_4082_4109_small_depth_anchor_perturbation_probe_084 | generalized_tail_shift_repeated_tail_corridor | true_4082_4109 | small_depth_anchor_perturbation_probe | accepted_false |  | 277 |  |
| mfuzz_true_2135_2128_baseline_seed_085 | generalized_tail_shift_repeated_tail_corridor | true_2135_2128 | baseline_seed | accepted_true | gtsrtc_y_square_corridor | 17434 |  |
| mfuzz_true_2135_2128_alpha_rename_0_086 | generalized_tail_shift_repeated_tail_corridor | true_2135_2128 | alpha_rename_0 | accepted_true | gtsrtc_y_square_corridor | 17434 |  |
| mfuzz_true_2135_2128_variable_permutation_087 | generalized_tail_shift_repeated_tail_corridor | true_2135_2128 | variable_permutation | accepted_true | gtsrtc_y_square_corridor | 17434 |  |
| mfuzz_true_2135_2128_repeated_anchor_substitution_088 | generalized_tail_shift_repeated_tail_corridor | true_2135_2128 | repeated_anchor_substitution | accepted_true |  | 85 |  |
| mfuzz_true_2135_2128_operand_side_swap_probe_089 | generalized_tail_shift_repeated_tail_corridor | true_2135_2128 | operand_side_swap_probe | accepted_false |  | 313 |  |
| mfuzz_true_1698_555_baseline_seed_092 | generalized_tail_shift_repeated_tail_corridor | true_1698_555 | baseline_seed | accepted_true | gtsrtc_right_nested_repeated_y_corridor | 10032 |  |
| mfuzz_true_1698_555_alpha_rename_0_093 | generalized_tail_shift_repeated_tail_corridor | true_1698_555 | alpha_rename_0 | accepted_true | gtsrtc_right_nested_repeated_y_corridor | 10032 |  |
| mfuzz_true_1698_555_variable_permutation_094 | generalized_tail_shift_repeated_tail_corridor | true_1698_555 | variable_permutation | accepted_true | gtsrtc_right_nested_repeated_y_corridor | 10032 |  |
| mfuzz_true_1698_555_repeated_anchor_substitution_095 | generalized_tail_shift_repeated_tail_corridor | true_1698_555 | repeated_anchor_substitution | accepted_false |  | 277 |  |
| mfuzz_true_1698_555_small_depth_anchor_perturbation_probe_098 | generalized_tail_shift_repeated_tail_corridor | true_1698_555 | small_depth_anchor_perturbation_probe | accepted_false |  | 277 |  |
| mfuzz_true_2055_2656_baseline_seed_099 | generalized_two_local_edge_local_theory_bridge | true_2055_2656 | baseline_seed | accepted_true | gltb_l4_l15_local_theory_bridge | 4214 |  |
| mfuzz_true_2055_2656_alpha_rename_0_100 | generalized_two_local_edge_local_theory_bridge | true_2055_2656 | alpha_rename_0 | accepted_true | gltb_l4_l15_local_theory_bridge | 4214 |  |
| mfuzz_true_2055_2656_variable_permutation_101 | generalized_two_local_edge_local_theory_bridge | true_2055_2656 | variable_permutation | accepted_true | gltb_l4_l15_local_theory_bridge | 4214 |  |
| mfuzz_true_2055_2656_repeated_anchor_substitution_102 | generalized_two_local_edge_local_theory_bridge | true_2055_2656 | repeated_anchor_substitution | accepted_false |  | 265 |  |
| mfuzz_true_2055_2656_operand_side_swap_probe_103 | generalized_two_local_edge_local_theory_bridge | true_2055_2656 | operand_side_swap_probe | accepted_false |  | 265 |  |
| mfuzz_true_2055_2656_shallow_left_context_wrap_probe_104 | generalized_two_local_edge_local_theory_bridge | true_2055_2656 | shallow_left_context_wrap_probe | accepted_false |  | 277 |  |
| mfuzz_true_2055_2656_small_depth_anchor_perturbation_probe_105 | generalized_two_local_edge_local_theory_bridge | true_2055_2656 | small_depth_anchor_perturbation_probe | accepted_false |  | 277 |  |
| mfuzz_true_2074_2082_shallow_left_context_wrap_probe_006 | generalized_argument_erasure_context_bridge | true_2074_2082 | shallow_left_context_wrap_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_674_668_operand_side_swap_probe_012 | generalized_argument_erasure_context_bridge | true_674_668 | operand_side_swap_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_674_668_shallow_left_context_wrap_probe_013 | generalized_argument_erasure_context_bridge | true_674_668 | shallow_left_context_wrap_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_2771_2775_alpha_rename_0_016 | generalized_argument_erasure_context_bridge | true_2771_2775 | alpha_rename_0 | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_2771_2775_operand_side_swap_probe_019 | generalized_argument_erasure_context_bridge | true_2771_2775 | operand_side_swap_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_2771_2775_shallow_left_context_wrap_probe_020 | generalized_argument_erasure_context_bridge | true_2771_2775 | shallow_left_context_wrap_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_2771_2775_small_depth_anchor_perturbation_probe_021 | generalized_argument_erasure_context_bridge | true_2771_2775 | small_depth_anchor_perturbation_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_130_1759_shallow_left_context_wrap_probe_034 | generalized_seed_collapse_contextual_lift | true_130_1759 | shallow_left_context_wrap_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_130_1759_small_depth_anchor_perturbation_probe_035 | generalized_seed_collapse_contextual_lift | true_130_1759 | small_depth_anchor_perturbation_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_2061_307_small_depth_anchor_perturbation_probe_042 | generalized_seed_collapse_contextual_lift | true_2061_307 | small_depth_anchor_perturbation_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_2860_3458_shallow_left_context_wrap_probe_048 | generalized_square_anchor_anchored_erasure_bridge | true_2860_3458 | shallow_left_context_wrap_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_1636_1839_small_depth_anchor_perturbation_probe_063 | generalized_square_anchor_anchored_erasure_bridge | true_1636_1839 | small_depth_anchor_perturbation_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_691_1976_operand_side_swap_probe_068 | generalized_tail_shift_repeated_tail_corridor | true_691_1976 | operand_side_swap_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_691_1976_shallow_left_context_wrap_probe_069 | generalized_tail_shift_repeated_tail_corridor | true_691_1976 | shallow_left_context_wrap_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_689_1350_alpha_rename_0_072 | generalized_tail_shift_repeated_tail_corridor | true_689_1350 | alpha_rename_0 | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_689_1350_operand_side_swap_probe_075 | generalized_tail_shift_repeated_tail_corridor | true_689_1350 | operand_side_swap_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_689_1350_shallow_left_context_wrap_probe_076 | generalized_tail_shift_repeated_tail_corridor | true_689_1350 | shallow_left_context_wrap_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_4082_4109_shallow_left_context_wrap_probe_083 | generalized_tail_shift_repeated_tail_corridor | true_4082_4109 | shallow_left_context_wrap_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_2135_2128_shallow_left_context_wrap_probe_090 | generalized_tail_shift_repeated_tail_corridor | true_2135_2128 | shallow_left_context_wrap_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_2135_2128_small_depth_anchor_perturbation_probe_091 | generalized_tail_shift_repeated_tail_corridor | true_2135_2128 | small_depth_anchor_perturbation_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_1698_555_operand_side_swap_probe_096 | generalized_tail_shift_repeated_tail_corridor | true_1698_555 | operand_side_swap_probe | no_attempt |  | 0 | no candidate emitted |
| mfuzz_true_1698_555_shallow_left_context_wrap_probe_097 | generalized_tail_shift_repeated_tail_corridor | true_1698_555 | shallow_left_context_wrap_probe | no_attempt |  | 0 | no candidate emitted |
