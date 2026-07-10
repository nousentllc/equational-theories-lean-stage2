# ARCF-Prover Private Motif Distillation Implementation Plan

This plan is read-only with respect to `submissions/arcf_prover/solver.py`. It converts public exact-certificate losses into guarded generalized proof-route targets for private-set performance.

## Family Overview

### argument_erasure_context_invariance

- public cases: `true_2074_2082`, `true_674_668`, `true_2771_2775`, `true_691_1976`, `true_689_1350`
- hypothesis pattern: H exposes an anchor-preserving expansion where one argument under a fixed context becomes insensitive: x = C[a◇b], x = C[b◇a], or x = C[(a◇b)◇b].
- goal pattern: Goal sides share exact outer context C[_] and the inner edge is one of a◇b = a◇c, b◇a = c◇a, (a◇b)◇d = (a◇c)◇d, or nested one-level variants.
- local lemmas needed: `eraseR : ∀ a b c, a ◇ b = a ◇ c`; `eraseL : ∀ a b c, b ◇ a = c ◇ a`; `contextual eraseR/eraseL under one binary node`; `optional seed edge from direct h expansion`
- likely Lean proof skeleton: intro variables; have inner : s = t := by <direct/two-h seed-collapse erasure>; exact congrArg (fun q => C[q]) inner, or calc lhs = midpoint := h ...; _ = rhs := congrArg C inner.
- guard conditions: extract exact common context depth <= 4; inner edge strictly matches supported erasure shape; candidate h substitutions use only goal variables and exact subterms; max one generated local erasure lemma; code size <= 12000 for generated route
- expected certificate size risk: low-to-medium; exact certificates range from 1.8 KB to 18.4 KB, but generalized route should emit one local lemma plus one congrArg.
- expected private-set value: very high: recurring across five exact losses and aligns with existing context extraction/inner-edge infrastructure.
- implementation difficulty: medium
- compatible existing routes: `try_rotation_context_bridge`, `try_two_lemma_local_theory_composer`, `try_derived_rewrite_edge`, `try_goal_directed_absorption_projection`

### square_anchor_anchored_erasure

- public cases: `true_2860_3458`, `true_1738_1258`, `true_1636_1839`, `true_2061_307`, `true_2942_5`
- hypothesis pattern: H contains repeated self-square or right-anchor terms such as x◇x, (z◇x)◇x, ((x◇y)◇x), or repeated anchor on both ends.
- goal pattern: Goal compares square/right-anchor forms, e.g. x◇x = x◇((x◇y)◇x), x = x◇(D[x]◇x), or x = y◇x.
- local lemmas needed: `idem : ∀ a, a◇a = a`; `absorbL/absorbR for anchored tails`; `anchoredRightErase : ∀ a b c, (a◇b)◇a = (c◇a)◇a`; `square tail erasure / self-square replacement`
- likely Lean proof skeleton: derive idem/absorb local facts by existing local-theory blocks; prove one anchored erasure edge by h/trans/congrArg; close with direct exact or one outer congrArg/calc.
- guard conditions: hypothesis has repeated anchor variable on RHS; goal or extracted inner edge contains x◇x or (_◇x)◇x; derive idem or absorb fact before emitting anchored erasure; max 3 local facts, max calc length 4
- expected certificate size risk: medium; exact certificates are compact to moderate, but local theory packages can grow if not gated.
- expected private-set value: high: covers square-anchor cases and overlaps with existing anchored-right/square-tail routes.
- implementation difficulty: medium-high
- compatible existing routes: `try_square_anchor_tail_erasure`, `try_anchored_right_erasure`, `try_local_theory_normalizer`, `try_proof_motif_transfer`

### tail_shift_repeated_tail_corridor

- public cases: `true_2135_2128`, `true_4082_4109`, `true_1698_555`, `true_689_1350`, `true_691_1976`
- hypothesis pattern: H contains a repeated-tail corridor such as repeated y◇y/y◇y◇y blocks or a repeated y/x anchor nested through two binary nodes.
- goal pattern: Goal moves the anchored tail across a compact corridor while preserving a large context or collapses an expanded target via symmetric h.
- local lemmas needed: `shiftTail : T = ExpandedTail`; `liftTail by one/two nested congrArg`; `symmetric h collapse of expanded target`; `optional midpoint local edge`
- likely Lean proof skeleton: have shiftTail := h ...; have liftTail := congrArg/nested congrArg shiftTail; calc lhs = expanded := h ...; _ = shifted := liftTail; _ = rhs := (h ...).symm.
- guard conditions: tail and prefix candidates are exact subterms; one shiftTail, at most two nested congrArg lifts; one symmetric collapse; context depth <= 4; calc length <= 3
- expected certificate size risk: medium-to-high; some exact certificates are 10 KB+ and risk term explosion without aliasing.
- expected private-set value: medium-high: recurring but more shape-sensitive than argument erasure.
- implementation difficulty: high
- compatible existing routes: `try_lifted_tail_shift_collapse`, `try_goal_directed_rotation`, `try_rotation_context_bridge`

### short_hand_exact_motifs

- public cases: `true_2942_5`, `true_130_1759`, `true_2061_307`
- hypothesis pattern: Small hand proofs with two to four h uses and one tight congrArg/calc pattern: repeated-anchor collapse, two-h contextual lift, or self-square local replacement.
- goal pattern: Compact goals that are direct absorption/projection or one contextual lift away from a local edge.
- local lemmas needed: `repeated-anchor collapse`; `two-h expansion edge`; `self-square local replacement L1`; `one final congrArg/calc`
- likely Lean proof skeleton: emit one or two local h-instantiation edges; compose with congrArg and trans/calc; avoid universal lemmas unless shorter.
- guard conditions: match exact small motif shape, not arbitrary proof search; max 4 h instances; max 2 congrArg; certificate <= 5000 bytes
- expected certificate size risk: low; hand certs are 420-867 bytes.
- expected private-set value: high for nearby hidden cases because proofs are compact and route guards can be exact-context based.
- implementation difficulty: low-to-medium
- compatible existing routes: `try_proof_motif_transfer`, `try_repeated_anchor_collapse_transfer`, `try_two_h_contextual_lift_transfer`, `try_multi_local_edge_calc_transfer`

### local_theory_normalizer_extensions

- public cases: `true_2055_2656`, `true_1636_1839`, `true_2860_3458`, `true_1738_1258`, `true_4082_4109`
- hypothesis pattern: H implies a small local algebraic package: idempotence, absorption, extension, anchored erasure, or rotation edges.
- goal pattern: Goal requires normalizing two non-identical composite terms to a shared local normal form or composing two local facts.
- local lemmas needed: `idem`; `absorbL/absorbR`; `extendL/extendR`; `anchored erasure`; `two-local-edge bridge`
- likely Lean proof skeleton: derive 1-4 local facts with existing deterministic moves; normalize lhs and rhs via short calc to common midpoint; exact calc closure.
- guard conditions: activate only after exact public routes disabled/missed in dev, never by ID; hypothesis has repeated-anchor/local-theory signature; goal subterms match available local facts; max 4 emitted facts and max 5 calc steps
- expected certificate size risk: medium-high; powerful but easiest to overgeneralize.
- expected private-set value: medium: broadest family, but higher judge-error and code-size risk.
- implementation difficulty: high
- compatible existing routes: `try_local_theory_normalizer`, `derive_local_theory_blocks`, `try_two_lemma_local_theory_composer`

## Top 3 Implementation Targets

| rank | family | expected recovered public exact cases | risk | rationale |
|---:|---|---|---|---|
| 1 | `argument_erasure_context_invariance` | `true_2074_2082`, `true_674_668`, `true_2771_2775` | low-to-medium | Most recurrent exact-loss family, has compact representatives (`true_2074_2082`, `true_691_1976`) and plugs directly into existing context extraction and inner-edge infrastructure. |
| 2 | `short_hand_exact_motifs` | `true_2942_5`, `true_130_1759`, `true_2061_307` | low | Smallest certificates and safest route guards; direct chance to replace three hand memo routes with generalized motif transfer. |
| 3 | `square_anchor_anchored_erasure` | `true_2860_3458`, `true_1738_1258`, `true_1636_1839` | medium | Targets square-anchor cases that current exact certificates still cover; compatible with existing square-tail and anchored-right routes. |

## Concrete Plan For Top Motif

- route name: `generalized_argument_erasure_context_bridge`
- placement: late true route after existing local-theory/context-invariance routes and before exact ATP public certificates in experimental ablation mode; in production normal order can keep exact memos first until proven stable.
- guard function: `argument_erasure_context_bridge_activation(eq1, eq2)`
  - Parse eq1/eq2 and try both goal orientations.
  - Extract largest exact one-hole context C[_] with depth <= 4 from goal lhs/rhs.
  - Require inner pair s,t to be strictly smaller than full terms.
  - Require inner pair to match eraseR/eraseL/contextual variants: a◇b=a◇c, b◇a=c◇a, (a◇b)◇d=(a◇c)◇d, d◇(b◇a)=d◇(c◇a), or seed variants a◇a=a◇b / a◇a=b◇a.
  - Require hypothesis to contain the anchor variable repeated or a direct h midpoint touching the anchor.
- candidate term extraction:
  - goal variables and exact subterms from goal lhs/rhs
  - inner edge endpoints s,t
  - anchor term a and erased arguments b,c
  - direct h midpoint expansions for s or t capped at 80
  - simple anchor terms a, a◇a, a◇b, b◇a, (a◇b)◇a, a◇(b◇a)
- local lemma generator:
  - Prefer local edge have inner : s = t over universal eraseR/eraseL.
  - Try direct h, symmetric h, two-h trans chain, and one congrArg lift.
  - If local edge fails, try one seed-collapse subproof for b/c under the same anchor.
  - Do not call broad proof graph; only extracted edge and candidate terms.
- Lean emitter:
  - Emit intro line from eq2 variables.
  - Emit at most one local lemma `inner` and optional `seed`.
  - Close direct goal by `exact inner`/`inner.symm`, or context goal by `exact congrArg (fun q => C[q]) inner`.
  - For seed midpoint cases emit two-step calc: lhs = midpoint := h_step; _ = rhs := congrArg C inner.
- size gate:
  - `max_context_depth`: `4`
  - `max_contexts`: `12`
  - `max_candidate_terms`: `80`
  - `max_h_instances`: `3`
  - `max_congrArg_per_local_edge`: `2`
  - `max_calc_steps`: `3`
  - `max_emitted_local_lemmas`: `2`
  - `max_certificate_bytes`: `12000`
- fallback behavior: If guard fails, local lemma proof fails, judge rejects, or size gate trips, return False and let later public exact/countermodel routes preserve public behavior.
- ablation success metric: With public exact certificates disabled, recover at least one of `true_2074_2082`, `true_674_668`, or `true_2771_2775` without introducing judge errors or changing full-solver 200/200.

## Ablation Target

After implementing any motif, run the normal public guards and a public-exact-disabled ablation:

```bash
python3 -m pipeline.runner --submission submissions/arcf_prover --problems examples/problems/sample_20.json --output pipeline/results/arcf_sample20_private_motif_guard.json
```
```bash
python3 -m pipeline.runner --submission submissions/arcf_prover --problems examples/problems/sample_200.json --output pipeline/results/arcf_sample200_private_motif_guard.json
```
```bash
PYTHONPATH="ARCF_DISABLE_PUBLIC_EXACT=1" PYTHONDONTWRITEBYTECODE=1 python3 -m pipeline.runner --submission submissions/arcf_prover --problems examples/problems/sample_200.json --output pipeline/results/arcf_sample200_private_motif_no_public_exact.json
```
Baseline for public exact disabled: `183/200 accepted`, `true=83`, `false=100`, `no_judge_attempt=17`, `judge_errors=0`.
Success condition: public-exact-disabled accepted count increases above 183, ideally by recovering target argument-erasure cases, while full guard remains 20/20 and 200/200 with judge_errors=0.

## Recommendation

Implement `generalized_argument_erasure_context_bridge` first. It has the best recurrence-to-risk ratio, should reuse existing exact-context extraction and local inner-edge proof machinery, and gives a measurable public-exact-disabled ablation target without changing accepted public behavior when it abstains.
