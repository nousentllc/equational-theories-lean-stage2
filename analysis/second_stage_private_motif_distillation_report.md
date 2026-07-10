# Second-Stage Private Motif Distillation Report

Inputs: current `sample_200` public-exact-disabled result, `examples/problems/sample_200.json`, `submissions/arcf_prover/solver.py`, and prior exact-certificate distillation reports.

## Current Status

- Full solver remains closed on public samples: `sample_20 = 20/20`, `sample_200 = 200/200`, `judge_errors = 0`.
- Public exact certificates disabled: `186/200`, with `true=86`, `false=100`, `no_attempt=14`, `judge_errors=0`.
- Already recovered by `generalized_argument_erasure_context_bridge`: `true_2074_2082`, `true_674_668`, `true_2771_2775`.

## Remaining Lost Cases

| id | eq1 | eq2 | certificate | bytes | motif group | proof motif |
|---|---:|---:|---|---:|---|---|
| `true_2942_5` | 2942 | 5 | hand exact certificate | 849 | seed-collapse / short hand motifs | repeated-anchor collapse via expansion, tail collapse, and final congrArg |
| `true_1698_555` | 1698 | 555 | ATP exact certificate | 10003 | tail-shift corridor | deep repeated-y tail shift |
| `true_2860_3458` | 2860 | 3458 | ATP exact certificate | 10646 | square-anchor / anchored erasure | square-anchor / anchored erasure |
| `true_130_1759` | 130 | 1759 | hand exact certificate | 420 | seed-collapse / short hand motifs | two-h contextual lift |
| `true_2061_307` | 2061 | 307 | hand exact certificate | 867 | seed-collapse / short hand motifs | multi-local-edge calc with self-square replacement |
| `true_1738_1258` | 1738 | 1258 | ATP exact certificate | 7324 | square-anchor / anchored erasure | right-anchored expansion through double x tail |
| `true_2789_898` | 2789 | 898 | ATP exact certificate | 31995 | large ATP exact certificate only | two-instantiation rotation/context bridge |
| `true_2135_2128` | 2135 | 2128 | ATP exact certificate | 17412 | tail-shift corridor | tail-shift among y◇y blocks |
| `true_1500_498` | 1500 | 498 | ATP exact certificate | 33893 | large ATP exact certificate only | broad projection/extension with extra free variable |
| `true_691_1976` | 691 | 1976 | ATP exact certificate | 3243 | context-shift / local-theory movement | seed-collapse plus context shift |
| `true_4082_4109` | 4082 | 4109 | ATP exact certificate | 7398 | context-shift / local-theory movement | rotation/context-shift with transitive congruence |
| `true_2055_2656` | 2055 | 2656 | ATP exact certificate | 4177 | context-shift / local-theory movement | two-local-edge E-prover local theory bridge |
| `true_689_1350` | 689 | 1350 | ATP exact certificate | 7183 | context-shift / local-theory movement | nested seed-collapse under y ◇ _ context |
| `true_1636_1839` | 1636 | 1839 | ATP exact certificate | 11847 | square-anchor / anchored erasure | self-square extension and absorption alignment |

## Motif Groups

### seed-collapse / short hand motifs

- cases: `true_130_1759`, `true_2942_5`, `true_2061_307`
- characterization: Compact public hand certificates that use one or two h expansions, a local collapse/replacement, and one congrArg/calc closure.
- structural guard: Require direct h seed expansion from goal lhs to a midpoint, exact one-hole context extraction from midpoint to goal rhs, and a local edge provable by a symmetric h collapse or self-square replacement. Use no eq-id guard.
- candidate local lemmas: `two_h_contextual_lift edge`, `repeated_anchor_collapse`, `self_square_local_replacement`
- expected certificate size: ~0.5-3 KB per hit; source exact certificates are 420-867 bytes.
- judge-error risk: low if route is limited to exact seed/context/collapse shapes and judge-tested before emission.
- likely private-set value: high: compact motifs are likely to recur and do not depend on large ATP chains.

### context-shift / local-theory movement

- cases: `true_691_1976`, `true_4082_4109`, `true_2055_2656`, `true_689_1350`
- characterization: Cases where a direct seed exists, but closure needs a small local movement/rotation or two-local-edge bridge rather than plain argument erasure.
- structural guard: Require shared outer context or direct h seed midpoint, high subterm overlap, and a two-edge calc where both local edges are direct h/symm/congrArg over exact extracted contexts.
- candidate local lemmas: `seed expansion of anchor`, `local tail replacement`, `two-local-edge bridge`, `context shift lift`
- expected certificate size: ~3-8 KB for compact cases; source certs range 3.2-7.4 KB except some can expand if not alias-normalized.
- judge-error risk: medium: more moving parts and context-shift matching can over-trigger unless exact-context gated.
- likely private-set value: medium-high: several remaining cases are in this family and exact certs are moderate.

### square-anchor / anchored erasure

- cases: `true_2860_3458`, `true_1738_1258`, `true_1636_1839`
- characterization: Hypotheses expose self-square or right-anchor terms and goals require idempotence, absorption, extension, or anchored erasure before a context lift.
- structural guard: Require x◇x or (_◇x)◇x in the goal/extracted inner edge, repeated anchor in hypothesis, and derivable local idempotence/absorption before emitting anchored erasure.
- candidate local lemmas: `idem-like square fact`, `absorbL/absorbR`, `anchoredRightErase`, `extension x = x◇C[x]`
- expected certificate size: ~7-12 KB if using local-theory packages; source certs range 7.3-11.8 KB.
- judge-error risk: medium-high: local-theory normalizers can overgeneralize and grow certificates.
- likely private-set value: medium: likely useful, but implementation has more safety surface than hand motifs.

### tail-shift corridor

- cases: `true_2135_2128`, `true_1698_555`
- characterization: Repeated y/tail blocks must be shifted through a corridor with nested congrArg and symmetric h collapse.
- structural guard: Require repeated-tail term appearing in both hypothesis and goal, one shiftTail h instance, at most two nested congrArg lifts, and one symmetric h collapse.
- candidate local lemmas: `shiftTail`, `lifted tail replacement`, `symmetric expanded-target collapse`
- expected certificate size: ~10-18 KB from public cert precedents; risk of term expansion without alias normalization.
- judge-error risk: medium-high: shape-sensitive and can emit bulky Lean.
- likely private-set value: medium: recurring but narrower than seed-collapse and harder to keep compact.

### large ATP exact certificate only

- cases: `true_2789_898`, `true_1500_498`
- characterization: Cases with known accepted ATP certificates but large/idiosyncratic equality chains that do not isolate into a small reusable motif yet.
- structural guard: Defer generalized route. If revisited, require an independent proof-mined motif with size estimate below route cap.
- candidate local lemmas: `unknown or too broad from current data`
- expected certificate size: ~32-34 KB for existing exact certificates; generalized proof may remain large.
- judge-error risk: high for generalization; low only as exact memo, which is already present in normal mode.
- likely private-set value: low-medium until a shorter motif is found.

### unclear

- cases: none
- characterization: No remaining case is completely unclassified after current reports.
- structural guard: N/A
- candidate local lemmas: none
- expected certificate size: N/A
- judge-error risk: N/A
- likely private-set value: N/A

## Recommendation

Implement `generalized_seed_collapse_contextual_lift` next, targeting the `seed-collapse / short hand motifs` family.

Primary targets: `true_130_1759`, `true_2942_5`, `true_2061_307`.

This family has the smallest accepted public exact certificates, clear exact-context proof shapes, and the lowest judge-error risk. It can likely recover one or more public exact dependencies with compact route-specific Lean rather than embedding large ATP chains.

Suggested guard and emitter:
- activation: goal unsolved by current general routes
- activation: hypothesis has repeated-anchor or direct h expansion touching goal lhs
- activation: direct h seed midpoint exists
- activation: exact one-hole context from midpoint to goal rhs or direct local edge target exists
- proof move: direct h seed expansion
- proof move: symmetric h collapse
- proof move: one congrArg over exact context
- proof move: short calc length <= 3
- proof move: optional local self-square replacement
- caps: `max_h_instances=4`, `max_congrArg=2`, `max_calc_steps=3`, `max_certificate_bytes=5000`, `max_candidates=40`
- fallback: abstain if any guard/proof/size check fails; preserve public exact memos after generalized routes in normal mode.

This is the best next step because it targets compact hand-exact motifs rather than attempting to generalize large ATP chains. The first implementation should try `true_130_1759` before the more complex `true_2942_5` and `true_2061_307`.
