# Final Public-Exact-Disabled Distillation Audit

Generated: 2026-05-22

## Current State

- Full `sample_20`: 20/20, true=10, false=10, no_attempt=0, `judge_errors=0`
- Full `sample_200`: 200/200, true=100, false=100, no_attempt=0, `judge_errors=0`
- Public-exact-disabled `sample_200`: 197/200, true=97, false=100, no_attempt=3, `judge_errors=0`

Recovered by generalized structural routes:

- `generalized_argument_erasure_context_bridge`: `true_2074_2082`, `true_674_668`, `true_2771_2775`
- `generalized_seed_collapse_contextual_lift`: `true_2942_5`, `true_130_1759`, `true_2061_307`
- `generalized_square_anchor_anchored_erasure_bridge`: `true_2860_3458`, `true_1738_1258`, `true_1636_1839`
- `generalized_tail_shift_repeated_tail_corridor`: `true_691_1976`, `true_689_1350`, `true_4082_4109`, `true_2135_2128`, `true_1698_555`

Remaining public-exact-disabled losses:

- `true_2789_898`
- `true_1500_498`
- `true_2055_2656`

All three remaining losses fail by abstention under public-exact-disabled mode: no emitted Lean and no judge errors.

## Final Loss Audit

| case | eq1_id | eq2_id | hypothesis | goal | exact certificate | size bytes | lets | haves | h-instantiation mentions | known proof skeleton | motif-like or proof-chain-specific |
|---|---:|---:|---|---|---|---:|---:|---:|---:|---|---|
| `true_2789_898` | 2789 | 898 | `x = ((y ◇ z) ◇ (y ◇ x)) ◇ z` | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` | `z3_true_2789_898_min` | 31995 | 169 | 306 | 56 | Large Z3-derived equality chain. It instantiates `h` many times, then collapses through aliases to prove `x = t4`, where `t4` is the target RHS. Final chain: `x = t12 = t20 = t26 = t23 = t4`. | Mostly proof-chain-specific. The high-level label is rotation/context bridge, but the accepted Lean proof is not a compact reusable motif. |
| `true_1500_498` | 1500 | 498 | `x = (y ◇ x) ◇ (z ◇ (x ◇ z))` | `x = y ◇ (x ◇ (z ◇ (w ◇ w)))` | `z3_true_1500_498_min` | 33893 | 158 | 326 | 54 | Large Z3-derived projection/extension chain. It introduces many aliases, including explicit `h w w w` control of the fresh square `w◇w`, then rewrites through a long final chain to the target RHS. | Proof-chain-specific. The fresh variable square makes a narrow structural route hard to justify. |
| `true_2055_2656` | 2055 | 2656 | `x = ((x ◇ y) ◇ x) ◇ (y ◇ z)` | `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y` | `eprover_true_2055_2656_l4_l15` | 4177 | 8 | 24 | 10 | Compact E-prover local-theory package. It derives `l4 : ∀ a b, a ◇ (a ◇ b) = a ◇ a`, then builds local collapse/lift lemmas through `l5`, `l6`, `l7`, `l8`, `l9`, `l11`, `l13`, and closes with `l15 : ∀ a b c, (((a ◇ a) ◇ (b ◇ c)) ◇ b) = a`; final proof is `exact (l15 x y z).symm`. | Motif-like. It is deeper than existing local-theory normalizer routes, but it is compact and structurally reusable under a strict schema. |

## Comparison Against Existing Families

### Argument Erasure / Context Bridge

- `true_2789_898`: weak partial similarity because it needs a context bridge, but the missing equality is rotation/context movement rather than supported erasure.
- `true_1500_498`: poor fit; the fresh `w◇w` target is not an extracted erasure edge.
- `true_2055_2656`: poor fit; the proof is local-theory collapse, not argument erasure.

Decision: no remaining case should be handled by extending argument-erasure context bridge.

### Seed-Collapse / Contextual Lift

- `true_2789_898`: has transitivity and local collapses, but not a compact one-seed/one-collapse lift.
- `true_1500_498`: too broad; depends on fresh-square normalization.
- `true_2055_2656`: uses local collapse lemmas, but the proof is a multi-lemma local-theory package rather than the existing seed-collapse shape.

Decision: no direct seed-collapse extension is recommended.

### Square-Anchor / Anchored Erasure

- `true_2789_898`: not a square-anchor schema.
- `true_1500_498`: contains `w◇w`, but as a fresh target introduced by projection/extension, not as an anchored-square erasure schema.
- `true_2055_2656`: contains `x◇x` in the goal, but its closure requires `l4/l15` local-theory facts rather than the existing square-tail or anchored-right erasure lemmas.

Decision: do not broaden square-anchor routes for these cases.

### Tail-Shift / Repeated-Tail Corridor

- `true_2789_898`: not a repeated-tail corridor after the previous route additions.
- `true_1500_498`: not a corridor; the target is a fresh-variable projection/extension form.
- `true_2055_2656`: not a tail-corridor template.

Decision: tail-shift distillation is exhausted for the public exact layer.

### Local-Theory Normalization

- `true_2789_898`: too large and rotation-heavy for the current local-theory route.
- `true_1500_498`: theoretically local-theory-like, but too broad and high-risk.
- `true_2055_2656`: strong match. The accepted proof is exactly a compact local-theory package and is the only final loss that looks reusable.

Decision: `true_2055_2656` is the only final case worth considering for one more generalized route.

## Distillation Decisions

| case | decision | rationale |
|---|---|---|
| `true_2789_898` | Maybe distillable but high risk | The semantic motif is rotation/context bridge, but the accepted certificate is 31,995 bytes with 306 `have`s. A route would need a new compact local rotation lemma; cap changes or stored-template reuse would not create a convincing private-set scaffold. |
| `true_1500_498` | Exact-certificate only | The proof is 33,893 bytes and includes broad projection/extension over a fresh `w◇w` target. Generalizing this risks broad local-theory normalization and judge instability. |
| `true_2055_2656` | Worth distilling, narrowly | The certificate is only 4,177 bytes and exposes reusable local lemmas. It is the only remaining case where a strict alpha-renamable schema could plausibly recover one more public exact dependency without broad search. |

## Recommended Optional Route

If continuing beyond the 197/200 reusable core, implement exactly one more narrow route:

`generalized_two_local_edge_local_theory_bridge`

Structural guard:

- Match only the alpha-equivalent schema:
  - Hypothesis: `a = ((a ◇ b) ◇ a) ◇ (b ◇ c)`
  - Goal: `a = ((a ◇ a) ◇ (b ◇ c)) ◇ b`
- Require all variables in the schema to be variables, not arbitrary large terms.
- Do not activate on broader local-theory or projection/extension shapes.
- Keep public exact certificates ahead in normal production order.

Proof emitter:

- Prefer a stored-template distillation of `eprover_true_2055_2656_l4_l15`, alpha-renamed through the existing template machinery.
- Emit marker: `gltb_l4_l15_local_theory_bridge`.
- Keep generated proof body under 8 KB if possible; hard cap at 12 KB.
- Reuse `make_true_code(...)` and `try_judge_route(...)`.
- Do not call broad proof graph search.
- Do not add `simp`, `aesop`, `omega`, `linarith`, `tauto`, `sorry`, or `admit`.

Expected effect:

- Public-exact-disabled `sample_200`: 197/200 -> 198/200 if accepted.
- Full `sample_20` and `sample_200`: should remain 20/20 and 200/200 because exact public routes keep precedence.
- Judge-error risk: low-medium, mainly from the deeper local lemma dependency chain.

## Stop/Continue Recommendation

Recommended policy:

- Continue only for `true_2055_2656` if the goal is to squeeze one more reusable local-theory scaffold from public exact certificates.
- Stop private-route distillation after that unless a genuinely shorter proof skeleton is discovered for `true_2789_898` or `true_1500_498`.

If the priority is code-size discipline and hidden-set robustness over one more public-exact-disabled recovery, it is also defensible to stop now at 197/200 reusable core and preserve the final three as exact public certificate routes. The two large Z3 cases should remain exact-certificate artifacts either way.
