# Fourth-Stage Private Motif Distillation Report

Generated: 2026-05-22

## Current State

- Full `sample_20`: 20/20, `judge_errors=0`
- Full `sample_200`: 200/200, `judge_errors=0`
- Public-exact-disabled `sample_200`: 192/200
- Public-exact-disabled true/false/no-attempt: true=92, false=100, no_attempt=8

Already recovered by generalized private-set routes:

- `generalized_argument_erasure_context_bridge`: `true_2074_2082`, `true_674_668`, `true_2771_2775`
- `generalized_seed_collapse_contextual_lift`: `true_2942_5`, `true_130_1759`, `true_2061_307`
- `generalized_square_anchor_anchored_erasure_bridge`: `true_2860_3458`, `true_1738_1258`, `true_1636_1839`

The remaining public-exact-disabled losses are all true cases. The false side is still complete.

## Remaining Lost Cases

| case | eq1_id | eq2_id | hypothesis | goal | exact certificate | size bytes | motif label |
|---|---:|---:|---|---|---|---:|---|
| `true_1698_555` | 1698 | 555 | `x = (y ◇ x) ◇ ((y ◇ z) ◇ y)` | `x = y ◇ (z ◇ (y ◇ (x ◇ y)))` | ATP exact, `z3_true_1698_555_min` | 10003 | deep repeated-y tail shift |
| `true_2789_898` | 2789 | 898 | `x = ((y ◇ z) ◇ (y ◇ x)) ◇ z` | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` | ATP exact, `z3_true_2789_898_min` | 31995 | two-instantiation rotation/context bridge |
| `true_2135_2128` | 2135 | 2128 | `x = ((y ◇ y) ◇ y) ◇ (x ◇ y)` | `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)` | ATP exact, `z3_true_2135_2128_seed7_min_alias` | 17412 | tail-shift among y◇y blocks |
| `true_1500_498` | 1500 | 498 | `x = (y ◇ x) ◇ (z ◇ (x ◇ z))` | `x = y ◇ (x ◇ (z ◇ (w ◇ w)))` | ATP exact, `z3_true_1500_498_min` | 33893 | broad projection/extension with extra free variable |
| `true_691_1976` | 691 | 1976 | `x = y ◇ (x ◇ ((z ◇ y) ◇ y))` | `x = (y ◇ (z ◇ y)) ◇ (x ◇ y)` | ATP exact, `z3_true_691_1976_min` | 3243 | seed-collapse plus context shift |
| `true_4082_4109` | 4082 | 4109 | `x ◇ x = ((y ◇ x) ◇ x) ◇ z` | `x ◇ x = ((y ◇ z) ◇ z) ◇ y` | ATP exact, `z3_true_4082_4109_min` | 7398 | rotation/context-shift with transitive congruence |
| `true_2055_2656` | 2055 | 2656 | `x = ((x ◇ y) ◇ x) ◇ (y ◇ z)` | `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y` | ATP exact, `eprover_true_2055_2656_l4_l15` | 4177 | two-local-edge E-prover local theory bridge |
| `true_689_1350` | 689 | 1350 | `x = y ◇ (x ◇ ((z ◇ x) ◇ w))` | `x = y ◇ (((z ◇ x) ◇ x) ◇ y)` | ATP exact, `z3_true_689_1350_min` | 7183 | nested seed-collapse under y ◇ _ context |

## Motif Clusters

### Tail-Shift / Repeated-Tail Corridor

Cases: `true_1698_555`, `true_2135_2128`, `true_691_1976`, `true_689_1350`

Common structure:

- A direct `h` seed expansion creates a term containing a repeated right or tail anchor.
- The goal moves a repeated block such as `y`, `y ◇ y`, `(z ◇ x) ◇ x`, or `(z ◇ y) ◇ y` across one or two `◇` nodes.
- The final closure is likely a short `calc` plus one or two `congrArg` lifts if the right local edge is available.

Best first targets:

- `true_691_1976`: smallest exact certificate, 3243 bytes; likely a compact seed-collapse/context-shift schema.
- `true_689_1350`: visible outer `y ◇ _` context and nested tail replacement.
- `true_2135_2128`: repeated `y◇y` / `y◇y◇y` corridor, but larger proof.

Risk:

- Medium judge-error risk if implemented as broad tail rewriting.
- Lower risk if implemented as two or three exact structural corridor schemas with strict context extraction and a small byte gate.

### Context-Shift / Local Collapse

Cases: `true_2789_898`, `true_4082_4109`

Common structure:

- Both cases need movement of a compact block through a nontrivial context rather than simple argument erasure.
- `true_4082_4109` is smaller and previously exposed a translator gap around transitive congruence.
- `true_2789_898` has a much larger exact certificate and should not be the first implementation target for this family.

Risk:

- Medium to high if generalized as arbitrary rotation.
- Medium if restricted to diagonal/square-rooted local collapse schemas.

### Local-Theory Normalization

Cases: `true_2055_2656`

Secondary cases with local-theory flavor: `true_1500_498`, `true_2789_898`

Common structure:

- The proof likely derives a small local algebraic package, then uses one or two local edges to close the goal.
- `true_2055_2656` is attractive because the final E-prover certificate is compact and names two useful local lemmas (`l4` and `l15`).
- `true_1500_498` is much larger and has an extra free variable in the goal, making broad normalization more dangerous.

Risk:

- Low-medium for a `true_2055_2656`-style two-local-edge bridge.
- High for a broad local-theory normalizer extension.

### ATP Exact Certificate Only

Cases: `true_1500_498`

Rationale:

- It has a plausible projection/extension label, but the exact certificate is 33893 bytes and the extra `w◇w` target suggests significant proof search compression is still missing.
- Treat this as memo-only for the next implementation cycle unless a compact local package is discovered.

### Hand Exact Certificate Only

Cases: none.

### Unknown

Cases: none.

All remaining losses have at least a tentative motif label; none are structurally opaque at this stage.

## Motif Ranking

| rank | motif family | cases covered | private-set value | implementation difficulty | certificate-size risk | judge-error risk |
|---:|---|---:|---|---|---|---|
| 1 | tail-shift / repeated-tail corridor | 4 | high | medium | medium | medium |
| 2 | local-theory normalization, narrow two-local-edge bridge | 1 primary, 2 secondary | medium-high | medium | low for `true_2055_2656`, high if broadened | low-medium if schema-specific |
| 3 | context-shift / local collapse | 2 | medium | medium-high | medium-high | medium |
| 4 | ATP exact certificate only | 1 | low | n/a for generalization | high | low as memo, poor private value |
| 5 | hand exact certificate only | 0 | n/a | n/a | n/a | n/a |

## Recommendation

Implement `generalized_tail_shift_repeated_tail_corridor` next.

Reason:

- It covers the most remaining cases: `true_1698_555`, `true_2135_2128`, `true_691_1976`, and `true_689_1350`.
- It has the clearest private-set value after argument erasure, seed-collapse, and square-anchor routes have already been distilled.
- It includes compact first targets, especially `true_691_1976` and `true_689_1350`.
- It can be implemented safely as a small set of exact corridor schemas rather than broad tail rewriting.

Suggested activation guards:

- Hypothesis has a repeated tail/right-anchor corridor such as `x = y ◇ (x ◇ ((z ◇ y) ◇ y))`, `x = y ◇ (x ◇ ((z ◇ x) ◇ w))`, or `x = ((y ◇ y) ◇ y) ◇ (x ◇ y)`.
- Goal has a matching moved-tail form under an exact outer context, such as `(y ◇ (z ◇ y)) ◇ (x ◇ y)`, `y ◇ (((z ◇ x) ◇ x) ◇ y)`, or `((y ◇ y) ◇ x) ◇ (y ◇ y)`.
- Extract an exact one-hole context if available, depth <= 4.
- Require the local edge to be one of:
  - repeated-tail shift,
  - anchored tail collapse,
  - seed-collapse under an outer `y ◇ _` context,
  - diagonal/square-rooted tail shift for the `true_4082_4109` secondary path.
- Emit at most two local lemmas, at most three `h` instantiations, at most two `congrArg` lifts, and a calc length <= 3.
- Keep generated proof bytes below 12000.
- Abstain on any failed guard, local proof failure, or size-gate failure.

First implementation targets:

1. `true_691_1976`
2. `true_689_1350`
3. `true_2135_2128`

Secondary target if the route naturally triggers:

- `true_4082_4109`, as a diagonal/context-shift subcase.

Avoid in the next pass:

- `true_1500_498`, because its large certificate and extra free variable make it a poor first private-route distillation target.
- A broad local-theory normalizer, because public closure is already complete and private-set scaffolding should remain narrow and measurable under ablation.
