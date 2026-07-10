# Sixth-Stage Private Motif Distillation Report

Generated: 2026-05-22

## Current State

- Full `sample_20`: 20/20, `judge_errors=0`
- Full `sample_200`: 200/200, `judge_errors=0`
- Public-exact-disabled `sample_200`: 196/200
- Public-exact-disabled true/false/no-attempt: true=96, false=100, no_attempt=4, `judge_errors=0`

Recovered by generalized private-set routes:

- `generalized_argument_erasure_context_bridge`: `true_2074_2082`, `true_674_668`, `true_2771_2775`
- `generalized_seed_collapse_contextual_lift`: `true_2942_5`, `true_130_1759`, `true_2061_307`
- `generalized_square_anchor_anchored_erasure_bridge`: `true_2860_3458`, `true_1738_1258`, `true_1636_1839`
- `generalized_tail_shift_repeated_tail_corridor`: `true_691_1976`, `true_689_1350`, `true_4082_4109`, `true_2135_2128`

The four remaining public-exact-disabled losses are all true cases and all fail by abstention in the current no-public-exact run: `judge_calls=0`, no emitted Lean, and no judge errors.

## Remaining Losses

| case | eq1_id | eq2_id | hypothesis | goal | exact certificate | exact size bytes | proof structure | route family similarity | why generalized routes fail |
|---|---:|---:|---|---|---|---:|---|---|---|
| `true_1698_555` | 1698 | 555 | `x = (y ◇ x) ◇ ((y ◇ z) ◇ y)` | `x = y ◇ (z ◇ (y ◇ (x ◇ y)))` | ATP exact, `z3_true_1698_555_min` | 10003 | 61 `let`s, 102 `have`s, 23 `h`-instantiation mentions; long repeated-`y` corridor chain with direct `h` seeds, symmetric collapses, and many congrArg lifts. | Closest to tail-shift / repeated-tail corridor, but with a right-nested `y ◇ (z ◇ (y ◇ _))` target. | Current tail-shift schemas do not include this right-nested repeated-`y` corridor. Argument-erasure and square-anchor routes do not see a supported exact inner edge. |
| `true_2789_898` | 2789 | 898 | `x = ((y ◇ z) ◇ (y ◇ x)) ◇ z` | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` | ATP exact, `z3_true_2789_898_min` | 31995 | 169 `let`s, 306 `have`s, 56 `h`-instantiation mentions; ATP skeleton was short, but Lean reconstruction expands into a large rotation/context bridge. | Context-shift / rotation bridge; weak overlap with argument-erasure context bridge. | Existing generalized routes lack the local rotation bridge needed to move the `y/z` block; proof-size and term-expansion risk remain high. |
| `true_1500_498` | 1500 | 498 | `x = (y ◇ x) ◇ (z ◇ (x ◇ z))` | `x = y ◇ (x ◇ (z ◇ (w ◇ w)))` | ATP exact, `z3_true_1500_498_min` | 33893 | 158 `let`s, 326 `have`s, 54 `h`-instantiation mentions; broad projection/extension proof that introduces the fresh square `w◇w`. | Weak local-theory / projection similarity; poor match to current exact-context routes. | No narrow route handles the extra free-variable square target. Distilling this directly would likely require broad projection/extension normalization. |
| `true_2055_2656` | 2055 | 2656 | `x = ((x ◇ y) ◇ x) ◇ (y ◇ z)` | `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y` | ATP exact, `eprover_true_2055_2656_l4_l15` | 4177 | 8 `let`s, 24 `have`s, 10 `h`-instantiation mentions; derives a compact local theory ending in `l15 : ∀ a b c, (((a ◇ a) ◇ (b ◇ c)) ◇ b) = a`, then closes by symmetry. | Strong local-theory normalization candidate. | Existing local-theory routes do not derive the specific `l4`/`l15` package. It is not covered by tail-shift, square-anchor, or argument-erasure schemas. |

## Cluster Analysis

### Tail-Shift / Repeated-Tail Corridor

Cases: `true_1698_555`

This is the most plausible next private-route recovery. The exact certificate is only 10003 bytes, already below the existing 12000-byte generated-route cap used by most motif templates. The obstacle is not size; it is schema coverage.

Candidate route extension:

- Route family: `generalized_tail_shift_repeated_tail_corridor`
- New subcase name: `gtsrtc_right_nested_repeated_y_corridor`
- Exact structural schema:
  - Hypothesis: `a = (b ◇ a) ◇ ((b ◇ c) ◇ b)`
  - Goal: `a = b ◇ (c ◇ (b ◇ (a ◇ b)))`
- Expected proof style: stored-template motif distillation from `z3_true_1698_555_min`, with alpha-normalized substitutions and existing alias compression.
- Expected certificate size: about 10-12 KB if the current exact certificate body can be generalized without expansion.
- Judge-error risk: low if the guard is exact and the template stays under the existing cap.
- Private-set value: moderate. The shape is a real repeated-tail corridor variant, not a single ID-only memo, but it is narrower than the stage-four corridor schemas.

### Local-Theory Normalization

Cases: `true_2055_2656`

This is the strongest backup target. The accepted E-prover proof is compact and exposes reusable local lemmas:

- `l4 : ∀ a b, a ◇ (a ◇ b) = a ◇ a`
- `l5/l6/l7/l8/l9/l11/l13`: local collapse and lift facts
- `l15 : ∀ a b c, (((a ◇ a) ◇ (b ◇ c)) ◇ b) = a`

Candidate route:

- Route family: `local_theory_normalizer_extensions`
- New route name: `generalized_two_local_edge_local_theory_bridge`
- Exact structural schema:
  - Hypothesis: `a = ((a ◇ b) ◇ a) ◇ (b ◇ c)`
  - Goal: `a = ((a ◇ a) ◇ (b ◇ c)) ◇ b`
- Expected proof style: derive `l4`, derive the short collapse package needed for `l15`, then close with `exact (l15 x y z).symm`.
- Expected certificate size: 4-8 KB if kept schema-specific.
- Judge-error risk: low-medium. The proof is compact, but the local-theory package is deeper than the tail-corridor template and has more dependency order to preserve.
- Private-set value: high for hypotheses that induce local idempotence/collapse behavior, especially those missed by tail and erasure routes.

### ATP Exact Certificate Requiring Compression

Cases: `true_2789_898`, `true_1500_498`

These are poor next distillation targets.

- `true_2789_898` is a rotation/context bridge, but the accepted Lean certificate is 31995 bytes and the generalized route would need a new local rotation lemma rather than a simple cap increase.
- `true_1500_498` is even less attractive: it is 33893 bytes and depends on a fresh `w◇w` target, which points toward broad projection/extension normalization.

Recommended action:

- Do not raise generated-route caps for these cases.
- Do not distill them until a much smaller local proof skeleton is found.
- Keep them as public exact certificates for now.

### Argument-Erasure / Context Bridge

Cases: none among the remaining four.

The argument-erasure family has probably been exhausted for the public exact layer. `true_2789_898` has a context-bridge flavor, but its missing edge is rotation/context movement, not one of the supported erasure inner edges.

### Unknown

Cases: none.

All four remaining cases have a plausible label; the question is implementation payoff versus risk.

## Recoverability Assessment

| case | narrow cap increase | stronger alias compression | existing route extension | new small motif route | assessment |
|---|---|---|---|---|---|
| `true_1698_555` | Not needed; 10003-byte exact body is already below 12 KB. | Possibly useful but not required. | Yes: add a right-nested repeated-`y` corridor subcase. | Yes, if kept as a schema-specific tail-corridor extension. | Best next target. |
| `true_2789_898` | Not recommended. It is not cap-limited under a matched generalized route. | Maybe, but unlikely to become a compact general motif without a new rotation lemma. | Not with current erasure/tail/square schemas. | Possible but high risk. | Defer. |
| `true_1500_498` | Not recommended. | Maybe, but the proof is broad and fresh-variable-heavy. | No obvious narrow extension. | Possible only as broad projection/extension normalization. | Defer / pure exact memo for now. |
| `true_2055_2656` | Not needed; exact proof is 4177 bytes. | Not needed. | Not covered by current routes. | Yes: two-local-edge local-theory bridge. | Best backup target. |

## Recommendation

Implement one more generalized route before stopping private-route distillation:

**`gtsrtc_right_nested_repeated_y_corridor` inside `generalized_tail_shift_repeated_tail_corridor`, targeting the schema behind `true_1698_555`.**

Why this is the best next implementation:

- It is the smallest change from the existing generalized tail-shift machinery.
- It likely recovers one public exact dependency under public-exact-disabled mode, moving 196/200 to 197/200.
- It does not require a cap increase.
- The accepted exact certificate is 10003 bytes, comfortably below the 50000-byte true-certificate limit and likely within the existing generated-route cap.
- The structural schema is narrow and alpha-generalizable:
  `a = (b ◇ a) ◇ ((b ◇ c) ◇ b)` proves `a = b ◇ (c ◇ (b ◇ (a ◇ b)))`.

Implementation constraints for the next pass:

- Keep public exact certificates ahead in normal production order.
- Match only the exact right-nested repeated-`y` schema.
- Reuse the existing stored-template / alpha-replacement pattern.
- Keep the default 12000-byte cap.
- Do not add broad tail rewriting or proof graph search.

Backup implementation if `true_1698_555` does not template cleanly:

**`generalized_two_local_edge_local_theory_bridge` for the compact `true_2055_2656` local-theory package.**

Stopping now would be defensible if the priority is avoiding additional schema-specific code, but there is still one low-risk private-generalizable route available. The two large Z3 certificates, `true_2789_898` and `true_1500_498`, should remain exact memo routes unless a shorter proof skeleton is discovered.
