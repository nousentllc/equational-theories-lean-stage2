# ARCF-Prover Public Exact-Certificate Distillation Report

Inputs: `analysis/route_ablation_report.json`, `analysis/route_ablation_report.md`, `submissions/arcf_prover/solver.py`, and `examples/problems/sample_200.json`.

## Summary

- ATP exact certificates disabled loses 14 sample_200 cases: `true_1698_555`, `true_2860_3458`, `true_1738_1258`, `true_2789_898`, `true_2135_2128`, `true_1500_498`, `true_691_1976`, `true_2074_2082`, `true_4082_4109`, `true_2771_2775`, `true_2055_2656`, `true_689_1350`, `true_674_668`, `true_1636_1839`.
- All public exact certificates disabled loses 17 sample_200 cases.
- Additional non-ATP hand exact losses: `true_2942_5`, `true_130_1759`, `true_2061_307`.
- Finite witness-bank exact losses when disabled: `false_1682_411`, `false_3145_3481`.

## Case Table

| id | eq1 | eq2 | type | bytes | motif | classification |
|---|---:|---:|---|---:|---|---|
| `true_1698_555` | 1698 | 555 | ATP exact certificate | 10003 | deep repeated-y tail shift | pure exact certificate / memo route |
| `true_2860_3458` | 2860 | 3458 | ATP exact certificate | 10646 | square-anchor / anchored erasure | reusable motif candidate |
| `true_1738_1258` | 1738 | 1258 | ATP exact certificate | 7324 | right-anchored expansion through double x tail | reusable motif candidate |
| `true_2789_898` | 2789 | 898 | ATP exact certificate | 31995 | two-instantiation rotation/context bridge | pure exact certificate / memo route |
| `true_2135_2128` | 2135 | 2128 | ATP exact certificate | 17412 | tail-shift among y◇y blocks | reusable motif candidate |
| `true_1500_498` | 1500 | 498 | ATP exact certificate | 33893 | broad projection/extension with extra free variable | pure exact certificate / memo route |
| `true_691_1976` | 691 | 1976 | ATP exact certificate | 3243 | seed-collapse plus context shift | reusable motif candidate |
| `true_2074_2082` | 2074 | 2082 | ATP exact certificate | 1808 | right argument erasure under fixed left context | reusable motif candidate |
| `true_4082_4109` | 4082 | 4109 | ATP exact certificate | 7398 | rotation/context-shift with transitive congruence | reusable motif candidate |
| `true_2771_2775` | 2771 | 2775 | ATP exact certificate | 18388 | argument erasure under exact outer context | reusable motif candidate |
| `true_2055_2656` | 2055 | 2656 | ATP exact certificate | 4177 | two-local-edge E-prover local theory bridge | reusable motif candidate |
| `true_689_1350` | 689 | 1350 | ATP exact certificate | 7183 | nested seed-collapse under y ◇ _ context | reusable motif candidate |
| `true_674_668` | 674 | 668 | ATP exact certificate | 7063 | argument erasure under nested right context | reusable motif candidate |
| `true_1636_1839` | 1636 | 1839 | ATP exact certificate | 11847 | self-square extension and absorption alignment | reusable motif candidate |
| `true_2942_5` | 2942 | 5 | hand exact certificate | 849 | repeated-anchor collapse via expansion, tail collapse, and final congrArg | reusable motif candidate |
| `true_130_1759` | 130 | 1759 | hand exact certificate | 420 | two-h contextual lift | reusable motif candidate |
| `true_2061_307` | 2061 | 307 | hand exact certificate | 867 | multi-local-edge calc with self-square replacement | reusable motif candidate |
| `false_1682_411` | 1682 | 411 | finite witness exact certificate | 313 | finite Fin 5 countermodel witness | pure exact certificate / memo route |
| `false_3145_3481` | 3145 | 3481 | finite witness exact certificate | 293 | finite Fin 4 countermodel witness | pure exact certificate / memo route |

## Lost Case Details

### `true_1698_555`

- eq1_id / eq2_id: `1698` / `555`
- certificate: ATP exact certificate (`z3_true_1698_555_min`), 10003 bytes
- proof stats: lets=61, haves=102, textual h-instantiations=22
- hypothesis: `x = (y ◇ x) ◇ ((y ◇ z) ◇ y)`
- goal: `x = y ◇ (z ◇ (y ◇ (x ◇ y)))`
- motif: deep repeated-y tail shift
- classification: **pure exact certificate / memo route**
- proposed guard: If distilled, require exact repeated y anchor and goal y ◇ (z ◇ (y ◇ _)) context.
- local lemmas/facts likely needed: `unknown without further proof-mining`
- likely proof skeleton: large Z3 chain; likely h-instantiations plus nested congrArg.
- private generalization value: low-medium: exact proof is 10 KB with many aliases; motif is less isolated.

### `true_2860_3458`

- eq1_id / eq2_id: `2860` / `3458`
- certificate: ATP exact certificate (`z3_true_2860_3458_seed24_partial_alias_keep2`), 10646 bytes
- proof stats: lets=72, haves=123, textual h-instantiations=22
- hypothesis: `x = ((x ◇ (x ◇ y)) ◇ z) ◇ z`
- goal: `x ◇ x = x ◇ ((x ◇ y) ◇ x)`
- motif: square-anchor / anchored erasure
- classification: **reusable motif candidate**
- proposed guard: Hypothesis expands x through ((x ◇ (x ◇ y)) ◇ z) ◇ z and goal compares x◇x to x◇((x◇y)◇x).
- local lemmas/facts likely needed: `idempotence-like square fact`; `anchored right erasure/local absorption`
- likely proof skeleton: derive square anchor facts, replace inner right argument, close by congrArg under x ◇ _.
- private generalization value: medium: resembles existing square/anchored erasure work but still not covered.

### `true_1738_1258`

- eq1_id / eq2_id: `1738` / `1258`
- certificate: ATP exact certificate (`z3_true_1738_1258_min`), 7324 bytes
- proof stats: lets=22, haves=21, textual h-instantiations=5
- hypothesis: `x = (y ◇ y) ◇ ((z ◇ x) ◇ x)`
- goal: `x = x ◇ (((y ◇ z) ◇ x) ◇ x)`
- motif: right-anchored expansion through double x tail
- classification: **reusable motif candidate**
- proposed guard: Hypothesis has (z ◇ x) ◇ x repeated tail and goal adds x ◇ (_ ◇ x) wrapper.
- local lemmas/facts likely needed: `right-anchor constancy`; `extension x = x ◇ C[x]`
- likely proof skeleton: prove tail collapse/extension by h; lift into x ◇ _ context.
- private generalization value: medium: clean equation shape, modest 7.3 KB certificate.

### `true_2789_898`

- eq1_id / eq2_id: `2789` / `898`
- certificate: ATP exact certificate (`z3_true_2789_898_min`), 31995 bytes
- proof stats: lets=169, haves=306, textual h-instantiations=55
- hypothesis: `x = ((y ◇ z) ◇ (y ◇ x)) ◇ z`
- goal: `x = y ◇ ((x ◇ z) ◇ (z ◇ y))`
- motif: two-instantiation rotation/context bridge
- classification: **pure exact certificate / memo route**
- proposed guard: Could require exact H x = ((y◇z)◇(y◇x))◇z and goal y◇((x◇z)◇(z◇y)).
- local lemmas/facts likely needed: `specific rotation midpoint`
- likely proof skeleton: Z3-derived chain with many aliases after translation; likely transitive h-chain.
- private generalization value: low-medium: useful precedent but current Lean certificate is large and idiosyncratic.

### `true_2135_2128`

- eq1_id / eq2_id: `2135` / `2128`
- certificate: ATP exact certificate (`z3_true_2135_2128_seed7_min_alias`), 17412 bytes
- proof stats: lets=41, haves=54, textual h-instantiations=16
- hypothesis: `x = ((y ◇ y) ◇ y) ◇ (x ◇ y)`
- goal: `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)`
- motif: tail-shift among y◇y blocks
- classification: **reusable motif candidate**
- proposed guard: Hypothesis/goal both contain repeated y-square/y-triple products around x.
- local lemmas/facts likely needed: `y-square/y-triple collapse`; `tail shift into x position`
- likely proof skeleton: derive repeated-y local facts; calc to move x between repeated y blocks.
- private generalization value: medium: recurring tail-shift shape, but proof is moderately large.

### `true_1500_498`

- eq1_id / eq2_id: `1500` / `498`
- certificate: ATP exact certificate (`z3_true_1500_498_min`), 33893 bytes
- proof stats: lets=158, haves=326, textual h-instantiations=53
- hypothesis: `x = (y ◇ x) ◇ (z ◇ (x ◇ z))`
- goal: `x = y ◇ (x ◇ (z ◇ (w ◇ w)))`
- motif: broad projection/extension with extra free variable
- classification: **pure exact certificate / memo route**
- proposed guard: Only attempt if exact alpha-equivalent; current proof is large.
- local lemmas/facts likely needed: `likely extension/projection chain`
- likely proof skeleton: large Z3 equality chain with many h-instantiations and aliases.
- private generalization value: low: 33.9 KB exact proof, less attractive for private generalization.

### `true_691_1976`

- eq1_id / eq2_id: `691` / `1976`
- certificate: ATP exact certificate (`z3_true_691_1976_min`), 3243 bytes
- proof stats: lets=32, haves=32, textual h-instantiations=7
- hypothesis: `x = y ◇ (x ◇ ((z ◇ y) ◇ y))`
- goal: `x = (y ◇ (z ◇ y)) ◇ (x ◇ y)`
- motif: seed-collapse plus context shift
- classification: **reusable motif candidate**
- proposed guard: Hypothesis and goal share y/right-anchor products and differ by moving y-anchored block across one node.
- local lemmas/facts likely needed: `seed expansion of x`; `local replacement of anchored tail`; `context shift lift`
- likely proof skeleton: expand with h; prove local tail equality; close with trans/congrArg.
- private generalization value: medium-high: compact 3.2 KB certificate.

### `true_2074_2082`

- eq1_id / eq2_id: `2074` / `2082`
- certificate: ATP exact certificate (`z3_true_2074_2082_seed2_compact`), 1808 bytes
- proof stats: lets=11, haves=13, textual h-instantiations=6
- hypothesis: `x = ((x ◇ y) ◇ z) ◇ (y ◇ x)`
- goal: `x = ((x ◇ y) ◇ z) ◇ (w ◇ x)`
- motif: right argument erasure under fixed left context
- classification: **reusable motif candidate**
- proposed guard: Goal differs only in a right argument under exact context ((x ◇ y) ◇ z) ◇ _.
- local lemmas/facts likely needed: `local eraseL/eraseR edge for y ◇ x = w ◇ x under anchor x`; `one congrArg/context lift`
- likely proof skeleton: derive compact local edge between inner arguments, then exact congrArg (fun q => prefix ◇ q) edge.
- private generalization value: very high: 1.8 KB exact certificate suggests a compact generic route is plausible.

### `true_4082_4109`

- eq1_id / eq2_id: `4082` / `4109`
- certificate: ATP exact certificate (`z3_true_4082_4109_min`), 7398 bytes
- proof stats: lets=26, haves=45, textual h-instantiations=12
- hypothesis: `x ◇ x = ((y ◇ x) ◇ x) ◇ z`
- goal: `x ◇ x = ((y ◇ z) ◇ z) ◇ y`
- motif: rotation/context-shift with transitive congruence
- classification: **reusable motif candidate**
- proposed guard: Both sides are square-rooted forms x◇x = C[_] with small rotation of repeated y/z blocks.
- local lemmas/facts likely needed: `transitive equality chain`; `one or more congrArg lifts`
- likely proof skeleton: use h-instantiated local equalities, then calc through rotated midpoint.
- private generalization value: medium: useful because it previously exposed translator gap, but shape is narrower.

### `true_2771_2775`

- eq1_id / eq2_id: `2771` / `2775`
- certificate: ATP exact certificate (`z3_true_2771_2775_alias4`), 18388 bytes
- proof stats: lets=104, haves=156, textual h-instantiations=28
- hypothesis: `x = ((y ◇ z) ◇ (x ◇ x)) ◇ y`
- goal: `x = ((y ◇ z) ◇ (x ◇ y)) ◇ y`
- motif: argument erasure under exact outer context
- classification: **reusable motif candidate**
- proposed guard: Goal shares ((y ◇ z) ◇ _) ◇ y and inner edge is x ◇ x = x ◇ y.
- local lemmas/facts likely needed: `right argument erasure a ◇ a = a ◇ b`; `outer context lift`
- likely proof skeleton: prove local inner erasure, then congrArg (fun q => ((y ◇ z) ◇ q) ◇ y).
- private generalization value: high: was size-hard as exact cert; a real route would be valuable.

### `true_2055_2656`

- eq1_id / eq2_id: `2055` / `2656`
- certificate: ATP exact certificate (`eprover_true_2055_2656_l4_l15`), 4177 bytes
- proof stats: lets=8, haves=24, textual h-instantiations=9
- hypothesis: `x = ((x ◇ y) ◇ x) ◇ (y ◇ z)`
- goal: `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y`
- motif: two-local-edge E-prover local theory bridge
- classification: **reusable motif candidate**
- proposed guard: H has x = ((x ◇ y) ◇ x) ◇ (y ◇ z); goal swaps one x/y anchor inside adjacent factors.
- local lemmas/facts likely needed: `local l4/l15-style bridge`; `anchored absorption/replacement`; `short calc closure`
- likely proof skeleton: derive two local h-instantiated edges; compose by calc and congrArg to align ((x◇x)◇(y◇z))◇y.
- private generalization value: high: final residue proof was only 4.2 KB and likely distillable.

### `true_689_1350`

- eq1_id / eq2_id: `689` / `1350`
- certificate: ATP exact certificate (`z3_true_689_1350_min`), 7183 bytes
- proof stats: lets=41, haves=70, textual h-instantiations=14
- hypothesis: `x = y ◇ (x ◇ ((z ◇ x) ◇ w))`
- goal: `x = y ◇ (((z ◇ x) ◇ x) ◇ y)`
- motif: nested seed-collapse under y ◇ _ context
- classification: **reusable motif candidate**
- proposed guard: Goal and hypothesis share y ◇ _; inner tail changes from x◇((z◇x)◇w) to ((z◇x)◇x)◇y.
- local lemmas/facts likely needed: `seed expansion`; `tail replacement`; `outer y-context lift`
- likely proof skeleton: prove inner tail shift with h instances; lift by congrArg (fun q => y ◇ q).
- private generalization value: medium-high: recurring context-lift form.

### `true_674_668`

- eq1_id / eq2_id: `674` / `668`
- certificate: ATP exact certificate (`z3_true_674_668_min`), 7063 bytes
- proof stats: lets=35, haves=70, textual h-instantiations=10
- hypothesis: `x = y ◇ (x ◇ ((x ◇ z) ◇ z))`
- goal: `x = y ◇ (x ◇ ((x ◇ x) ◇ z))`
- motif: argument erasure under nested right context
- classification: **reusable motif candidate**
- proposed guard: Goal shares y ◇ (x ◇ _) context and inner edge has ((x ◇ z) ◇ z) = ((x ◇ x) ◇ z).
- local lemmas/facts likely needed: `right-context erasure (a ◇ b) ◇ b = (a ◇ a) ◇ b or local instance`; `outer congrArg through y ◇ (x ◇ _)`
- likely proof skeleton: prove inner edge from h instances; lift with congrArg (fun q => y ◇ (x ◇ q)).
- private generalization value: high: recurring exact-context argument erasure pattern.

### `true_1636_1839`

- eq1_id / eq2_id: `1636` / `1839`
- certificate: ATP exact certificate (`z3_true_1636_1839_seed7_min_alias`), 11847 bytes
- proof stats: lets=29, haves=36, textual h-instantiations=8
- hypothesis: `x = (x ◇ x) ◇ ((y ◇ x) ◇ z)`
- goal: `x = (x ◇ (x ◇ y)) ◇ (x ◇ z)`
- motif: self-square extension and absorption alignment
- classification: **reusable motif candidate**
- proposed guard: Hypothesis begins with x = (x◇x)◇_; goal replaces first right factor by x◇(x◇y).
- local lemmas/facts likely needed: `idempotence/self-square extension`; `anchored tail replacement`
- likely proof skeleton: derive self-square local facts; calc through expanded square-tail midpoint.
- private generalization value: medium: seed-sensitive ATP proof, but motif matches local theory normalizer family.

### `true_2942_5`

- eq1_id / eq2_id: `2942` / `5`
- certificate: hand exact certificate (`claude_hand_true_2942_5`), 849 bytes
- proof stats: lets=0, haves=6, textual h-instantiations=3
- hypothesis: `x = ((y ◇ (y ◇ x)) ◇ z) ◇ x`
- goal: `x = y ◇ x`
- motif: repeated-anchor collapse via expansion, tail collapse, and final congrArg
- classification: **reusable motif candidate**
- proposed guard: Hypothesis has x = ((y ◇ (y ◇ x)) ◇ z) ◇ x-like repeated anchor and goal asks x = y ◇ x or C[x] = C[y ◇ x].
- local lemmas/facts likely needed: `local collapse of repeated y-tail to y`; `lifted replacement through (_ ◇ (y ◇ x)) ◇ y`; `final h-collapse`
- likely proof skeleton: derive hByyy; expand anchor; collapse repeated tail by congrArg; use h x y y; lift by congrArg.
- private generalization value: high: compact hand proof and clear repeated-anchor schema.

### `true_130_1759`

- eq1_id / eq2_id: `130` / `1759`
- certificate: hand exact certificate (`claude_hand_true_130_1759`), 420 bytes
- proof stats: lets=0, haves=2, textual h-instantiations=2
- hypothesis: `x = y ◇ ((y ◇ z) ◇ x)`
- goal: `x = (y ◇ z) ◇ ((x ◇ y) ◇ x)`
- motif: two-h contextual lift
- classification: **reusable motif candidate**
- proposed guard: Goal has x = C[x ◇ y] and h can expand both x and x ◇ y with the same leading prefix.
- local lemmas/facts likely needed: `step_xy expansion`; `step_x expansion`; `contextual lift via congrArg`
- likely proof skeleton: prove step_xy by h; prove step_x by h; exact step_x.trans (congrArg context step_xy.symm).
- private generalization value: high: very small proof and exact-context guard.

### `true_2061_307`

- eq1_id / eq2_id: `2061` / `307`
- certificate: hand exact certificate (`claude_hand_true_2061_307`), 867 bytes
- proof stats: lets=0, haves=5, textual h-instantiations=4
- hypothesis: `x = ((x ◇ y) ◇ y) ◇ (x ◇ y)`
- goal: `x ◇ x = x ◇ (x ◇ x)`
- motif: multi-local-edge calc with self-square replacement
- classification: **reusable motif candidate**
- proposed guard: Unary/self-anchor goal where both sides are x ◇ x variants and h expands square/tail terms.
- local lemmas/facts likely needed: `A self expansion`; `L1 local replacement`; `C and E endpoint expansions`
- likely proof skeleton: derive L1 by h plus congrArg A.symm; calc lhs via C, replace inner term by congrArg L1, collapse by E.symm.
- private generalization value: medium-high: reusable for self-square local theory, but more shape-specific.

### `false_1682_411`

- eq1_id / eq2_id: `1682` / `411`
- certificate: finite witness exact certificate (`constraint_guided_false_1682_411_n5`), 313 bytes
- finite domain size: `5`
- hypothesis: `x = (y ◇ x) ◇ ((x ◇ x) ◇ y)`
- goal: `x = x ◇ (x ◇ (x ◇ (x ◇ x)))`
- motif: finite Fin 5 countermodel witness
- classification: **pure exact certificate / memo route**
- proposed guard: Exact alpha-normalized false_1682_411 equation pair.
- likely proof skeleton: Magma (Fin 5) table plus decideFin!.
- private generalization value: low for true-proof generalization; useful for countermodel-search heuristics only.

### `false_3145_3481`

- eq1_id / eq2_id: `3145` / `3481`
- certificate: finite witness exact certificate (`backtrack_false_3145_3481_n4`), 293 bytes
- finite domain size: `4`
- hypothesis: `x = (((y ◇ y) ◇ x) ◇ z) ◇ x`
- goal: `x ◇ x = y ◇ ((y ◇ x) ◇ x)`
- motif: finite Fin 4 countermodel witness
- classification: **pure exact certificate / memo route**
- proposed guard: Exact alpha-normalized false_3145_3481 equation pair.
- likely proof skeleton: Magma (Fin 4) table plus decideFin!.
- private generalization value: low for true-proof generalization; useful for witness-bank coverage only.

## Top 5 Distillation Targets

| rank | case | proposed route | why |
|---:|---|---|---|
| 1 | `true_2074_2082` | generalized exact-context argument-erasure bridge | Smallest ATP exact true certificate; exact-context right-argument erasure is a clean private-set motif. |
| 2 | `true_674_668` | nested right-context argument-erasure inner-edge prover | Classic nested argument-erasure under y ◇ (x ◇ _) context; route would also help similar residue shapes. |
| 3 | `true_2055_2656` | two-local-edge local-theory bridge | Final-residue proof is compact and E-prover named l4/l15 hints at distillable local theory edges. |
| 4 | `true_130_1759` | two-h contextual lift generalized guard | Tiny hand proof with two h expansions and one contextual lift; high signal and low risk. |
| 5 | `true_2942_5` | repeated-anchor collapse miner | Compact repeated-anchor collapse hand proof; directly aligns with singleton/collapse route family. |

## Interpretation

- Pure public memo layer: ATP exact certificates, hand exact certificates, and finite witness tables preserve public closure but should not be counted as private-set generalization by themselves.
- Best reusable candidates are compact exact proofs with exact-context erasure, two-h contextual lift, or repeated-anchor collapse guards.
- Least attractive distillation targets are large low-level Z3 chains unless proof mining exposes a small reusable local lemma package.
