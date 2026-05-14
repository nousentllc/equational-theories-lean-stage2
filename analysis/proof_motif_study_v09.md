# ARCF-Prover v0.9 Proof-Motif Study

Inputs:
- `pipeline/results/arcf_sample200_v082.json`
- `pipeline/results/arcf_sample200_v081.json`
- `examples/problems/sample_200.json`
- `submissions/arcf_prover/solver.py`
- `analysis/failure_report_v08.json`
- `analysis/nested_absorption_similarity_v081.md`

No changes were made to `submissions/arcf_prover/solver.py`.

## Summary

- solver state: **v0.8.2**
- accepted: **173**
- true proofs: **74**
- false countermodels: **99**
- no judge attempt: **27**
- judge errors: **0**
- remaining unsolved: **27**
- true labeled failures: **26**
- false labeled failures: **1**
- newly solved vs v081: **[]**
- regressions vs v081: **[]**

v0.8.2 moved `true_1022_99` onto the narrower `nested_self_absorption` route, but did not reduce the residue. The remaining proof problem is therefore less about adding more one-off self-absorption schemas and more about mining the missing local equality edges that connect terms already seen by the proof graph.

## Remaining Unsolved Cases

| case | expected | eq1_id | eq2_id | goal | motif group |
|---|---:|---:|---:|---|---|
| `true_2942_5` | true | 2942 | 5 | `x = y ◇ x` | `anchor_preserving_nested_absorption` |
| `true_3108_4642` | true | 3108 | 4642 | `(x ◇ y) ◇ x = (z ◇ x) ◇ x` | `context_bridge_or_projection` |
| `true_1167_2000` | true | 1167 | 2000 | `x = (y ◇ (z ◇ z)) ◇ (z ◇ x)` | `anchor_preserving_nested_absorption` |
| `true_1698_555` | true | 1698 | 555 | `x = y ◇ (z ◇ (y ◇ (x ◇ y)))` | `rotation_context_shift` |
| `true_1604_1822` | true | 1604 | 1822 | `x = (y ◇ z) ◇ ((w ◇ w) ◇ y)` | `collapse_projection_chain` |
| `true_2111_1755` | true | 2111 | 1755 | `x = (y ◇ z) ◇ ((x ◇ x) ◇ x)` | `anchor_preserving_nested_absorption` |
| `true_3083_3094` | true | 3083 | 3094 | `x = (((x ◇ y) ◇ z) ◇ z) ◇ y` | `rotation_context_shift` |
| `true_425_1630` | true | 425 | 1630 | `x = (x ◇ x) ◇ ((x ◇ x) ◇ y)` | `self_idempotent_expansion` |
| `true_2860_3458` | true | 2860 | 3458 | `x ◇ x = x ◇ ((x ◇ y) ◇ x)` | `rotation_context_shift` |
| `true_130_1759` | true | 130 | 1759 | `x = (y ◇ z) ◇ ((x ◇ y) ◇ x)` | `anchor_preserving_nested_absorption` |
| `true_2061_307` | true | 2061 | 307 | `x ◇ x = x ◇ (x ◇ x)` | `self_idempotent_expansion` |
| `true_1738_1258` | true | 1738 | 1258 | `x = x ◇ (((y ◇ z) ◇ x) ◇ x)` | `anchor_preserving_nested_absorption` |
| `true_2654_2864` | true | 2654 | 2864 | `x = ((x ◇ (y ◇ x)) ◇ x) ◇ z` | `rotation_context_shift` |
| `true_2789_898` | true | 2789 | 898 | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` | `rotation_context_shift` |
| `true_2135_2128` | true | 2135 | 2128 | `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)` | `rotation_context_shift` |
| `true_428_3725` | true | 428 | 3725 | `x ◇ y = (x ◇ y) ◇ (y ◇ y)` | `self_idempotent_expansion` |
| `true_1500_498` | true | 1500 | 498 | `x = y ◇ (x ◇ (z ◇ (w ◇ w)))` | `anchor_preserving_nested_absorption` |
| `true_691_1976` | true | 691 | 1976 | `x = (y ◇ (z ◇ y)) ◇ (x ◇ y)` | `anchor_preserving_nested_absorption` |
| `true_2074_2082` | true | 2074 | 2082 | `x = ((x ◇ y) ◇ z) ◇ (w ◇ x)` | `anchor_preserving_nested_absorption` |
| `true_4082_4109` | true | 4082 | 4109 | `x ◇ x = ((y ◇ z) ◇ z) ◇ y` | `context_bridge_or_projection` |
| `true_2771_2775` | true | 2771 | 2775 | `x = ((y ◇ z) ◇ (x ◇ y)) ◇ y` | `rotation_context_shift` |
| `false_1682_411` | false | 1682 | 411 | `x = x ◇ (x ◇ (x ◇ (x ◇ x)))` | `remaining_false_countermodel` |
| `true_1874_4357` | true | 1874 | 4357 | `x ◇ (y ◇ z) = x ◇ (y ◇ w)` | `context_bridge_or_projection` |
| `true_2055_2656` | true | 2055 | 2656 | `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y` | `rotation_context_shift` |
| `true_689_1350` | true | 689 | 1350 | `x = y ◇ (((z ◇ x) ◇ x) ◇ y)` | `rotation_context_shift` |
| `true_674_668` | true | 674 | 668 | `x = y ◇ (x ◇ ((x ◇ x) ◇ z))` | `rotation_context_shift` |
| `true_1636_1839` | true | 1636 | 1839 | `x = (x ◇ (x ◇ y)) ◇ (x ◇ z)` | `self_idempotent_expansion` |

## True-Labeled Failures

| case | likely missing equality edge | edge type | graph LHS/RHS present | partial derived path | note |
|---|---|---|---:|---:|---|
| `true_2942_5` | `x = y ◇ x` | `direct_absorption` | True | True | right-anchored absorption |
| `true_3108_4642` | `x ◇ y = z ◇ x` | `context_bridge` | True | True | right-anchor context bridge under (_ ◇ x) |
| `true_1167_2000` | `x = (y ◇ (z ◇ z)) ◇ (z ◇ x)` | `nested_absorption` | True | True | prefix plus right-anchored nested absorption |
| `true_1698_555` | `x = y ◇ (z ◇ (y ◇ (x ◇ y)))` | `rotation/context-shift` | True | True | anchor moved inside mixed right-nested context |
| `true_1604_1822` | `x = (y ◇ z) ◇ ((w ◇ w) ◇ y)` | `two-lemma chain` | True | True | target loses visible x anchor; likely collapse then absorption |
| `true_2111_1755` | `x = (y ◇ z) ◇ ((x ◇ x) ◇ x)` | `nested_absorption` | True | True | prefix plus true_1022-style self tail |
| `true_3083_3094` | `x = (((x ◇ y) ◇ z) ◇ z) ◇ y` | `rotation/context-shift` | True | True | rotate trailing y across repeated z context |
| `true_425_1630` | `x = (x ◇ x) ◇ ((x ◇ x) ◇ y)` | `nested_absorption` | True | True | self-square prefix and self-square context |
| `true_2860_3458` | `x = (x ◇ y) ◇ x under context x ◇ _` | `rotation/context-shift` | True | True | right-anchor inner absorption under left context |
| `true_130_1759` | `x = (y ◇ z) ◇ ((x ◇ y) ◇ x)` | `nested_absorption` | True | True | prefix plus right-anchored nested absorption |
| `true_2061_307` | `x = x ◇ x under context x ◇ _` | `direct_absorption` | True | True | idempotent/self-absorption expansion |
| `true_1738_1258` | `x = x ◇ (((y ◇ z) ◇ x) ◇ x)` | `nested_absorption` | True | True | left-self prefix plus right-anchored nested absorption |
| `true_2654_2864` | `x = ((x ◇ (y ◇ x)) ◇ x) ◇ z` | `rotation/context-shift` | True | True | anchor-preserving left-nested tail with extra suffix |
| `true_2789_898` | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` | `rotation/context-shift` | True | True | mixed rotation with anchor inside left branch |
| `true_2135_2128` | `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)` | `rotation/context-shift` | True | True | move repeated y-block around x anchor |
| `true_428_3725` | `x ◇ y = (x ◇ y) ◇ (y ◇ y)` | `direct_absorption` | True | True | term-level absorption T = T ◇ filler |
| `true_1500_498` | `x = y ◇ (x ◇ (z ◇ (w ◇ w)))` | `nested_absorption` | True | True | prefix plus anchor in second position |
| `true_691_1976` | `x = (y ◇ (z ◇ y)) ◇ (x ◇ y)` | `nested_absorption` | True | True | prefix plus anchor-pair tail |
| `true_2074_2082` | `x = ((x ◇ y) ◇ z) ◇ (w ◇ x)` | `nested_absorption` | True | True | anchor at both left prefix and right tail |
| `true_4082_4109` | `x ◇ x = ((y ◇ z) ◇ z) ◇ y` | `context_bridge` | True | True | bridge self-square to unrelated repeated-y/z block |
| `true_2771_2775` | `x = ((y ◇ z) ◇ (x ◇ y)) ◇ y` | `rotation/context-shift` | True | True | right suffix y around anchor-pair subterm |
| `true_1874_4357` | `z = w under context x ◇ (y ◇ _)` | `context_bridge` | True | True | deep congruence bridge / local collapse |
| `true_2055_2656` | `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y` | `rotation/context-shift` | True | True | self-square prefix plus trailing y shift |
| `true_689_1350` | `x = y ◇ (((z ◇ x) ◇ x) ◇ y)` | `rotation/context-shift` | True | True | rotate x through nested z/x/y context |
| `true_674_668` | `x = y ◇ (x ◇ ((x ◇ x) ◇ z))` | `rotation/context-shift` | True | True | prefix plus self-tail with foreign suffix |
| `true_1636_1839` | `x = (x ◇ (x ◇ y)) ◇ (x ◇ z)` | `nested_absorption` | True | True | two x-anchored branches |

All true-labeled remaining cases with v0.8 diagnostics had both endpoints present in the cached proof graph and at least one partial derived-edge path. Most still disconnected at the edge cap, which supports the motif-level conclusion: the solver is usually missing the right compressed equality edge, not raw terms.

## False-Labeled Failure

- `false_1682_411`: `x = (y ◇ x) ◇ ((x ◇ x) ◇ y)` => `x = x ◇ (x ◇ (x ◇ (x ◇ x)))`. Likely issue: remaining false case; solver has not found a finite countermodel witness.

## Anti-Unification Motif Groups

### `anchor_preserving_nested_absorption`

- generalized motif: `A = C[A] where C is a small nested magma context with A occurring as a right or paired anchor, e.g. A = P ◇ (... ◇ A) or A = P ◇ ((A ◇ F) ◇ A)`
- anti-unification: `A = HOLE1 ◇ HOLE2[A], with HOLE2 preserving A near the right spine`
- cases covered: 8 (`true_2942_5`, `true_1167_2000`, `true_2111_1755`, `true_130_1759`, `true_1738_1258`, `true_1500_498`, `true_691_1976`, `true_2074_2082`)
- solved precedents: `v0.6 absorption/projection cases`, `true_1022_99 only as a one-anchor special case`
- candidate local lemma: `have abs : ∀ (a p q : G), a = p ◇ (q ◇ a) := by ... or a goal-extracted specialization with p/q as compact subterms`
- likely Lean skeleton: derive one or two local absorption edges with h; close by calc: lhs = mid := lemma1; _ = rhs := lemma2/congrArg
- requires: usually two lemmas or one lemma plus nested congrArg
- implementation difficulty: **high**
- judge-error risk: **medium unless each candidate is fully judge-gated and goal-extracted**
- expected coverage: 6-10 cases if anti-unification is precise; broad schemas risk false positives

### `rotation_context_shift`

- generalized motif: `A = C1[A] should imply A = C2[A] where C2 is a rotation or context shift of repeated blocks already present in the hypothesis`
- anti-unification: `A = L[(R[A] ◇ S)]  ==>  A = L[(S ◇ R[A])] or sibling movement across one/two nested ◇ nodes`
- cases covered: 10 (`true_1698_555`, `true_3083_3094`, `true_2860_3458`, `true_2654_2864`, `true_2789_898`, `true_2135_2128`, `true_2771_2775`, `true_2055_2656`, `true_689_1350`, `true_674_668`)
- solved precedents: `true_2935_3138 goal-directed rotation`, `true_3291_3304 / true_4561_4566 derived rewrite edges`
- candidate local lemma: `have rot : ∀ a b c, C1 a b c = C2 a b c := by exact <2 h uses + nested congrArg>`
- likely Lean skeleton: prove a local context-shift edge, then exact rot ... or congrArg (fun t => outer_context[t]) rot
- requires: nested congrArg or short calc length 2-3
- implementation difficulty: **medium**
- judge-error risk: **low-medium if restricted to exact extracted contexts**
- expected coverage: 4-6 cases

### `self_idempotent_expansion`

- generalized motif: `T = T ◇ F(T) or A = A ◇ A under a shallow context`
- anti-unification: `T = T ◇ HOLE where T is a goal subterm and HOLE is built from repeated variables/subterms`
- cases covered: 4 (`true_425_1630`, `true_2061_307`, `true_428_3725`, `true_1636_1839`)
- solved precedents: `true_1022_99 nested_self_absorption`, `v0.6 direct absorption/projection cases`
- candidate local lemma: `have grow : ∀ t u : G, t = t ◇ u := by ... when h gives a matching expansion`
- likely Lean skeleton: one local lemma, then direct exact or congrArg under one context
- requires: one lemma; sometimes one congrArg
- implementation difficulty: **medium**
- judge-error risk: **low if target is exactly goal-extracted; low coverage observed after v0.8.2**
- expected coverage: 1-3 cases

### `context_bridge_or_projection`

- generalized motif: `C[s] = C[t] where s/t are small variables or anchored terms but the required edge is not directly an h instance`
- anti-unification: `C[S] = C[T], requiring a derived bridge S = T under a shared one/two-level context`
- cases covered: 3 (`true_3108_4642`, `true_4082_4109`, `true_1874_4357`)
- solved precedents: `true_3291_3304 / true_4561_4566 derived rewrite edge cases`, `v0.8 derived_context_bridge`
- candidate local lemma: `have bridge : s = t := by calc s = m := edge1; _ = t := edge2`
- likely Lean skeleton: two-lemma calc composer, then congrArg over exact extracted context
- requires: two lemmas plus congrArg; no broad graph expansion
- implementation difficulty: **medium**
- judge-error risk: **low if each bridge edge is independently judge-gated**
- expected coverage: 2-3 cases directly, plus support for rotation/nested motifs

### `collapse_projection_chain`

- generalized motif: `A = term not visibly containing A; likely requires collapse/projection lemma before absorption`
- anti-unification: `A = C[B] with A absent from C[B], requiring a projection/collapse edge to reintroduce or erase a variable`
- cases covered: 1 (`true_1604_1822`)
- solved precedents: `v0.6 projection/collapse lemmas`
- candidate local lemma: `have proj : ∀ a b, a ◇ b = a / b, or have collapse : ∀ a b, a = b`
- likely Lean skeleton: derive projection/collapse locally; then close target by direct lemma or one calc step
- requires: one strong lemma; possibly singleton-like collapse
- implementation difficulty: **high**
- judge-error risk: **medium-high because overgeneral projection/collapse lemmas are fragile**
- expected coverage: 1-2 cases

## Solved-Precedent Comparison

| precedent | what it proves | relevant remaining motif | lesson |
|---|---|---|---|
| `true_1022_99` | one-anchor `a = a ◇ ((a ◇ a) ◇ a)` | `self_idempotent_expansion` | Good narrow proof skeleton, but v0.8.2 showed this does not generalize broadly by itself. |
| `true_2935_3138` | goal-directed rotation/context shift | `rotation_context_shift` | Best evidence that exact-context rotation bridges can work with compact certificates. |
| `true_3291_3304`, `true_4561_4566` | endpoint-derived rewrite edges | `context_bridge_or_projection`, `rotation_context_shift` | The proof graph can find terms, but needs compressed local edges and small calc chains. |
| v0.6 absorption/projection cases | direct derived absorption/projection lemmas | `anchor_preserving_nested_absorption`, `collapse_projection_chain` | Useful only when the lemma is exact and shallow; broad projection/collapse is risky. |

## Ranked Motifs

| rank | motif | likely cases | reason |
|---:|---|---:|---|
| 1 | `rotation_context_shift` | 10 | Best balance: ten listed cases with 4-6 realistic immediate targets, direct solved precedent true_2935_3138, compact certificates, and exact-context gating can preserve zero judge errors. |
| 2 | `context_bridge_or_projection` | 3 | Only three direct cases, but the two-lemma bridge composer is reusable by rotation/nested motifs and can be judge-gated edge-by-edge. |
| 3 | `anchor_preserving_nested_absorption` | 8 | Largest nominal coverage, but v0.8.2 showed blind generalization is weak; needs anti-unified exact contexts rather than more schemas. |
| 4 | `self_idempotent_expansion` | 4 | Compact certificates and low risk, but v0.8.2 already exhausted the obvious one-anchor form and expected coverage is small. |
| 5 | `collapse_projection_chain` | 1 | Potentially useful for no-anchor/collapse cases, but proof obligations are stronger and higher-risk. |

## v0.9 Recommendation

Recommended target: **generalized rotation/context-shift bridge backed by a two-lemma calc composer**.

It has solved precedent, moderate coverage, compact certificates, and lower judge-error risk than broad nested absorption anti-unification. The bridge composer also supports context_bridge and some anchor-preserving nested absorption cases without raising graph caps.

Implementation outline:
- Extract exact shared contexts and candidate midpoints around goal lhs/rhs.
- Prove at most two local edges using existing deterministic engines or specialized h+congrArg skeletons.
- Compose calc length <= 3, then apply congrArg over the extracted context if needed.
- Run before broad derived_rewrite_edge; keep all candidates judge-gated and abstain on uncertainty.

This is preferable to a broad nested-absorption anti-unifier for v0.9 because it reuses the strongest solved precedents (`true_2935_3138`, `true_3291_3304`, `true_4561_4566`) and keeps proof emission compact and judge-gated.

## Countermodel Recommendation

Yes. Run a separate targeted finite countermodel search for false_1682_411 offline, including n=4/5 random/idempotent/commutative tables and a small backtracking search, then embed only a compact witness if found. Do not mix this with true-proof route changes.
