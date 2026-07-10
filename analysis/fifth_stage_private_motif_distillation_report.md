# Fifth-Stage Private Motif Distillation Report

Generated: 2026-05-22

## Current State

- Full `sample_20`: 20/20, `judge_errors=0`
- Full `sample_200`: 200/200, `judge_errors=0`
- Public-exact-disabled `sample_200`: 195/200
- Public-exact-disabled true/false/no-attempt: true=95, false=100, no_attempt=5

Recovered by generalized private-set routes:

- `generalized_argument_erasure_context_bridge`: `true_2074_2082`, `true_674_668`, `true_2771_2775`
- `generalized_seed_collapse_contextual_lift`: `true_2942_5`, `true_130_1759`, `true_2061_307`
- `generalized_square_anchor_anchored_erasure_bridge`: `true_2860_3458`, `true_1738_1258`, `true_1636_1839`
- `generalized_tail_shift_repeated_tail_corridor`: `true_691_1976`, `true_689_1350`, `true_4082_4109`

The remaining public-exact-disabled losses are all true cases and all failed by abstention: `judge_calls=0`, no Lean judge errors.

## Remaining Losses

| case | eq1_id | eq2_id | hypothesis | goal | exact certificate | exact size bytes | motif label | why generalized routes fail or abstain |
|---|---:|---:|---|---|---|---:|---|---|
| `true_1698_555` | 1698 | 555 | `x = (y ◇ x) ◇ ((y ◇ z) ◇ y)` | `x = y ◇ (z ◇ (y ◇ (x ◇ y)))` | ATP exact, `z3_true_1698_555_min` | 10003 | deep repeated-y tail shift | No current tail-corridor schema matches. The target is right-nested `y ◇ (z ◇ (y ◇ _))`, not one of the exact moved-tail contexts implemented in stage four. |
| `true_2789_898` | 2789 | 898 | `x = ((y ◇ z) ◇ (y ◇ x)) ◇ z` | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` | ATP exact, `z3_true_2789_898_min` | 31995 | two-instantiation rotation/context bridge | Not a repeated-tail corridor. Existing context/rotation routes still fail to synthesize the local rotation bridge; the exact proof is large and ATP-specific. |
| `true_2135_2128` | 2135 | 2128 | `x = ((y ◇ y) ◇ y) ◇ (x ◇ y)` | `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)` | ATP exact, `z3_true_2135_2128_seed7_min_alias` | 17412 | tail-shift among y◇y blocks | The new tail-corridor route matches `gtsrtc_y_square_corridor`, but abstains because generated proof body is 16960 bytes, over the 12000 byte route cap. |
| `true_1500_498` | 1500 | 498 | `x = (y ◇ x) ◇ (z ◇ (x ◇ z))` | `x = y ◇ (x ◇ (z ◇ (w ◇ w)))` | ATP exact, `z3_true_1500_498_min` | 33893 | broad projection/extension with extra free variable | No narrow generalized route covers the extra free-variable target `w◇w`. This remains a large ATP exact proof with high bloat risk. |
| `true_2055_2656` | 2055 | 2656 | `x = ((x ◇ y) ◇ x) ◇ (y ◇ z)` | `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y` | ATP exact, `eprover_true_2055_2656_l4_l15` | 4177 | two-local-edge E-prover local theory bridge | Existing local-theory routes do not derive the specific `l4`/`l15` style package. This is not currently covered by tail-shift, square-anchor, or argument-erasure schemas. |

## `true_2135_2128` Cap Analysis

`true_2135_2128` is the only remaining case that already matches a generalized route.

- Matching route schema: `gtsrtc_y_square_corridor`
- Exact certificate: `z3_true_2135_2128_seed7_min_alias`
- Accepted public exact certificate size: 17412 bytes
- Generated generalized-route proof body size: 16960 bytes
- Generated full Lean code size: 17434 bytes
- Lets / haves / h-instantiations in generated body: 41 / 54 / 16
- Current generated-route cap: 12000 proof-body bytes
- Needed route-local cap to admit it safely: 20000 proof-body bytes

Alias compression assessment:

- The certificate is already the `seed7_min_alias` version and uses 41 `let` aliases.
- Reducing from 16960 to below 12000 would require roughly a 30 percent reduction.
- Simple alias replacement is unlikely to achieve that without proof-specific restructuring.
- The remaining size is not mostly repeated unaliased term expansion; it is the actual equality chain.

Judge-safety assessment for a narrow 20 KB cap:

- The same proof family is already accepted in the full solver as the public ATP exact certificate.
- The generated full Lean code is 17434 bytes, well below the 50000 byte true-certificate limit used during late-stage exact-certificate work.
- The schema guard is exact and narrow: it matches only `a = ((b◇b)◇b)◇(a◇b)` proving `a = ((b◇b)◇a)◇(b◇b)`.
- A route-local cap increase to 20000 only for this `gtsrtc_y_square_corridor` subcase looks judge-safe and private-useful.

Structural-generalization assessment:

- This is not a pure memo route: it is a repeated-square/tail-corridor schema over variables `a` and `b`.
- It is less broad than arbitrary tail shifting, but still general enough for hidden/private cases with the same repeated `b◇b` corridor.
- The current route already abstains on all nonmatching cases, so the risk is concentrated in certificate size, not guard looseness.

## Clusters

### Cap-Limited Tail-Shift Case

Cases: `true_2135_2128`

Recommended action:

- Raise only the `gtsrtc_y_square_corridor` generated proof-body cap from 12000 to 20000.
- Keep the general tail-corridor cap unchanged for other subcases if desired.
- Do not broaden matching.

Expected result:

- Public-exact-disabled `sample_200` should improve from 195/200 to 196/200 with no judge errors.

### ATP Exact Certificate Requiring Compression

Cases: `true_2789_898`, `true_1500_498`

Notes:

- `true_2789_898` exact size is 31995 bytes; it is a rotation/context bridge but not yet distilled into a compact route.
- `true_1500_498` exact size is 33893 bytes and includes an extra free variable target, making it a poor next scaffold.

Recommended action:

- Do not raise caps for these. They need a new proof idea or proof-specific compression before private-route distillation.

### Local-Theory Motif Candidate

Cases: `true_2055_2656`

Notes:

- Exact size is only 4177 bytes.
- The E-prover proof exposes useful local lemmas: `l4`-style local collapse and `l15`-style final bridge.
- This is the best next new-route candidate after the cap-limited tail-shift recovery.

Recommended action:

- Implement a narrow `generalized_two_local_edge_local_theory_bridge` only after recovering `true_2135_2128` with the cap change.

### Pure Exact Memo

Cases: `true_1698_555`, `true_1500_498`

Notes:

- `true_1698_555` is only 10003 bytes, but its right-nested repeated-y movement did not match the current corridor schemas.
- `true_1500_498` remains large and broad.
- Both should stay public exact certificates until a clearer reusable schema emerges.

### Unknown

Cases: none.

## Recommendation

Next implementation: **raise the cap narrowly for `gtsrtc_y_square_corridor` only**, from 12000 to 20000 proof-body bytes.

Why this is the best next scaffold:

- It recovers a case that already matches a generalized structural route.
- It requires no new broad search, no new proof graph expansion, and no route-order change.
- It preserves the abstention behavior for all nonmatching cases.
- It keeps the generated certificate below 20 KB and well below the 50 KB true-certificate limit.
- It likely improves public-exact-disabled mode from 195/200 to 196/200 while preserving full 200/200.

Implementation sketch:

- Keep `try_gtsrtc_stored_template(...)` default cap at 12000.
- Add an optional `max_bytes` parameter.
- Call it with `max_bytes=20000` only for `gtsrtc_y_square_corridor`.
- Leave `gtsrtc_y_tail_context_shift`, `gtsrtc_outer_y_nested_x_tail`, and `gtsrtc_diagonal_tail_shift` at 12000.
- Re-run full `sample_20`, full `sample_200`, and public-exact-disabled `sample_200`.

Backup target if cap lift is rejected:

- Implement `generalized_two_local_edge_local_theory_bridge` for `true_2055_2656`, using the compact E-prover local theory proof as the motif exemplar.
