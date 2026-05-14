# ARCF-Prover v0.9.6 Argument-Erasure Route Audit

## Inputs
- `v096_results`: `pipeline/results/arcf_sample200_v096.json`
- `v095_results`: `pipeline/results/arcf_sample200_v095.json`
- `sample_200`: `examples/problems/sample_200.json`
- `solver`: `submissions/arcf_prover/solver.py`

## v0.9.5 → v0.9.6 Delta

| version | accepted | true proofs | false countermodels | no_judge_attempt | judge_errors |
|---|---:|---:|---:|---:|---:|
| v0.9.5 | 180 | 81 | 99 | 20 | 0 |
| v0.9.6 | 180 | 81 | 99 | 20 | 0 |

- Newly solved cases: none
- Regressions: none
- Judge errors: none.

## Route Audit Summary

| metric | value |
|---|---:|
| `remaining_true_cases` | 19 |
| `cases_with_direct_h_midpoint` | 16 |
| `cases_activated_route_exact_context` | 5 |
| `total_extracted_exact_contexts` | 13 |
| `cases_with_supported_inner_edge_shape` | 3 |
| `total_supported_inner_edges` | 6 |
| `cases_with_candidate_erasure_lemma` | 3 |
| `total_candidate_erasure_lemmas` | 6 |
| `cases_with_proved_lemma_block` | 0 |
| `total_proved_lemma_blocks` | 0 |
| `cases_with_inner_lemma_proof` | 0 |
| `total_inner_lemma_proofs` | 0 |
| `cases_failed_at_lemma_proof` | 3 |
| `cases_failed_at_final_lift` | 0 |
| `cases_blocked_by_code_size` | 0 |

First failure point counts:
- `candidate lemma generated but proof failed`: 3
- `inner edge shape unsupported`: 2
- `no exact context extracted`: 11
- `route not attempted`: 3

## Remaining True Failure Audit

| id | first failure point | direct h midpoints | exact contexts | supported edges | candidate lemmas | proved lemma blocks | closest sample edge |
|---|---|---:|---:|---:|---:|---:|---|
| `true_3108_4642` | no exact context extracted | 6 | 0 | 0 | 0 | 0 | none |
| `true_1167_2000` | no exact context extracted | 4 | 0 | 0 | 0 | 0 | none |
| `true_1698_555` | no exact context extracted | 4 | 0 | 0 | 0 | 0 | none |
| `true_1604_1822` | route not attempted | 0 | 0 | 0 | 0 | 0 | none |
| `true_2111_1755` | no exact context extracted | 5 | 0 | 0 | 0 | 0 | none |
| `true_2860_3458` | inner edge shape unsupported | 22 | 3 | 0 | 0 | 0 | unsupported `(((x ◇ x) ◇ ((x ◇ x) ◇ (x ◇ x))) ◇ ((x ◇ y) ◇ x)) = x` |
| `true_1738_1258` | no exact context extracted | 4 | 0 | 0 | 0 | 0 | none |
| `true_2789_898` | inner edge shape unsupported | 5 | 1 | 0 | 0 | 0 | unsupported `((x ◇ ((x ◇ z) ◇ (z ◇ y))) ◇ (x ◇ x)) = y` |
| `true_2135_2128` | no exact context extracted | 8 | 0 | 0 | 0 | 0 | none |
| `true_1500_498` | no exact context extracted | 1 | 0 | 0 | 0 | 0 | none |
| `true_691_1976` | no exact context extracted | 4 | 0 | 0 | 0 | 0 | none |
| `true_2074_2082` | candidate lemma generated but proof failed | 1 | 2 | 1 | 1 | 0 | `(y ◇ x) = (w ◇ x)` via `eraseL` |
| `true_4082_4109` | route not attempted | 0 | 0 | 0 | 0 | 0 | none |
| `true_2771_2775` | candidate lemma generated but proof failed | 5 | 3 | 2 | 2 | 0 | `(x ◇ x) = (x ◇ y)` via `eraseR` |
| `true_1874_4357` | route not attempted | 0 | 0 | 0 | 0 | 0 | none |
| `true_2055_2656` | no exact context extracted | 5 | 0 | 0 | 0 | 0 | none |
| `true_689_1350` | no exact context extracted | 5 | 0 | 0 | 0 | 0 | none |
| `true_674_668` | candidate lemma generated but proof failed | 3 | 4 | 3 | 3 | 0 | `(x ◇ z) = (x ◇ x)` via `eraseR` |
| `true_1636_1839` | no exact context extracted | 5 | 0 | 0 | 0 | 0 | none |

## Top 5 Closest Cases

| rank | id | closeness score | why close | example supported edge |
|---:|---|---:|---|---|
| 1 | `true_674_668` | 50 | 3 direct h midpoint(s), 4 exact context(s), 3 supported erasure edge(s) | `(x ◇ z) = (x ◇ x)` (eraseR) |
| 2 | `true_2771_2775` | 37 | 5 direct h midpoint(s), 3 exact context(s), 2 supported erasure edge(s) | `(x ◇ x) = (x ◇ y)` (eraseR) |
| 3 | `true_2860_3458` | 28 | 22 direct h midpoint(s), 3 exact context(s) | none |
| 4 | `true_2074_2082` | 18 | 1 direct h midpoint(s), 2 exact context(s), 1 supported erasure edge(s) | `(y ◇ x) = (w ◇ x)` (eraseL) |
| 5 | `true_2135_2128` | 8 | 8 direct h midpoint(s) | none |

## Recommendation

Recommended v0.9.7 target: **add two-lemma local-theory composition before expanding erasure shapes**.

- The route reaches exact contexts in 5 true failures and selects supported erasure lemma families in 3, but no selected erasure lemma is provable under the current one-lemma/two-h limits.
- The bottleneck is proving the local projection/erasure seed; broadening shape recognition would not address that bottleneck.
- A two-lemma composer can first derive a local projection/absorption fact and then use it to prove the erasure lemma under the already extracted context.
- The false case false_1682_411 remains separate; targeted countermodel search should be run independently from proof-side route work.

First tests: `true_674_668`, `true_2771_2775`, `true_2860_3458`, `true_2074_2082`, `true_2135_2128`.

Safety scope:
- only after exact context extraction
- at most two local lemmas
- calc length <= 3
- no global graph cap increase

`false_1682_411` remains a separate false-side target; targeted countermodel search was not part of v0.9.6 and should stay separate from this proof-side route.
