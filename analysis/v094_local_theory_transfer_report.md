# v0.9.4 Local-Theory Transfer Report

## Delta

| metric | v0.9.3 | v0.9.4 | delta |
|---|---:|---:|---:|
| accepted | 178 | 179 | +1 |
| true proofs | 79 | 80 | +1 |
| false countermodels | 99 | 99 | +0 |
| no judge attempt | 22 | 21 | -1 |
| judge errors | 0 | 0 | +0 |

- Newly solved: `true_428_3725`
- Regressions: none

## Newly Solved Local Theory

`true_428_3725` is the only new v0.9.4 win. It transfers the local-theory motif from the v0.9.3 hand proofs into a structural route, not an ID lookup.

- Hypothesis: `x = x ◇ (y ◇ (x ◇ (x ◇ z)))`
- Goal: `x ◇ y = (x ◇ y) ◇ (y ◇ y)`
- Inferred route: `proof_motif_transfer_repeated_anchor_collapse`
- Motif classes: `idempotence`, `absorption`, `extension`, `multi-local-edge calc`

| local lemma | statement | motif | role |
|---|---|---|---|
| `idem` | `∀ (a : G), a ◇ a = a` | `idempotence` | Turns self-products into anchors and supplies the final RHS expansion by symmetry. |
| `absorb` | `∀ (a b : G), a ◇ (b ◇ a) = a` | `absorption` | Collapses a nested right-anchor context after two idempotence-driven expansions. |
| `extend` | `∀ (a b : G), b ◇ a = (b ◇ a) ◇ a` | `extension` | Re-expands an anchored product so the goal can close by one more idempotence lift. |
| `final calc` | `x ◇ y = (x ◇ y) ◇ (y ◇ y)` | `multi-local-edge calc` | Composes extension with idempotence under a right context. |

## Remaining True Failures

Remaining true failures after v0.9.4: 20.

| rank | case | eq1 | eq2 | local-theory score | likely requires | close-to-428 reasons | goal |
|---:|---|---:|---:|---:|---|---|---|
| 1 | `true_2860_3458` | 2860 | 3458 | 48 | `idempotence lemma`, `absorption lemma`, `argument-erasure lemma`, `multi-local-edge calc` | self-square/idempotent subterms appear in the goal or hypothesis; goal or cached near-miss is an argument-erasure/context-invariance edge; composite equality likely needs a short calc over local edges | `x ◇ x = x ◇ ((x ◇ y) ◇ x)` |
| 2 | `true_1738_1258` | 1738 | 1258 | 40 | `idempotence lemma`, `absorption lemma`, `extension lemma` | self-square/idempotent subterms appear in the goal or hypothesis; goal is an anchor equal to a context containing that anchor; goal has the extension shape T = T ◇ U or its symmetric form | `x = x ◇ (((y ◇ z) ◇ x) ◇ x)` |
| 3 | `true_2771_2775` | 2771 | 2775 | 39 | `idempotence lemma`, `absorption lemma`, `argument-erasure lemma`, `two-h contextual lift` | self-square/idempotent subterms appear in the goal or hypothesis; goal is an anchor equal to a context containing that anchor; goal or cached near-miss is an argument-erasure/context-invariance edge | `x = ((y ◇ z) ◇ (x ◇ y)) ◇ y` |
| 4 | `true_674_668` | 674 | 668 | 39 | `idempotence lemma`, `absorption lemma`, `argument-erasure lemma`, `two-h contextual lift` | self-square/idempotent subterms appear in the goal or hypothesis; goal is an anchor equal to a context containing that anchor; goal or cached near-miss is an argument-erasure/context-invariance edge | `x = y ◇ (x ◇ ((x ◇ x) ◇ z))` |
| 5 | `true_3108_4642` | 3108 | 4642 | 38 | `absorption lemma`, `argument-erasure lemma`, `multi-local-edge calc` | hypothesis repeats its left anchor 3 times on the RHS; goal or cached near-miss is an argument-erasure/context-invariance edge; composite equality likely needs a short calc over local edges | `(x ◇ y) ◇ x = (z ◇ x) ◇ x` |
| 6 | `true_425_1630` | 425 | 1630 | 35 | `idempotence lemma`, `absorption lemma` | self-square/idempotent subterms appear in the goal or hypothesis; goal is an anchor equal to a context containing that anchor; previous motif ranking places it near repeated-anchor collapse | `x = (x ◇ x) ◇ ((x ◇ x) ◇ y)` |
| 7 | `true_1636_1839` | 1636 | 1839 | 32 | `idempotence lemma`, `absorption lemma`, `two-h contextual lift` | self-square/idempotent subterms appear in the goal or hypothesis; hypothesis repeats its left anchor 3 times on the RHS; previous motif ranking places it near the two-h contextual-lift proof | `x = (x ◇ (x ◇ y)) ◇ (x ◇ z)` |
| 8 | `true_2074_2082` | 2074 | 2082 | 29 | `absorption lemma`, `argument-erasure lemma`, `two-h contextual lift` | goal is an anchor equal to a context containing that anchor; goal or cached near-miss is an argument-erasure/context-invariance edge; previous motif ranking places it near the two-h contextual-lift proof | `x = ((x ◇ y) ◇ z) ◇ (w ◇ x)` |
| 9 | `true_1500_498` | 1500 | 498 | 27 | `idempotence lemma`, `absorption lemma`, `two-h contextual lift` | self-square/idempotent subterms appear in the goal or hypothesis; goal is an anchor equal to a context containing that anchor; previous motif ranking places it near the two-h contextual-lift proof | `x = y ◇ (x ◇ (z ◇ (w ◇ w)))` |
| 10 | `true_2055_2656` | 2055 | 2656 | 27 | `idempotence lemma`, `absorption lemma`, `two-h contextual lift` | self-square/idempotent subterms appear in the goal or hypothesis; goal is an anchor equal to a context containing that anchor; previous motif ranking places it near the two-h contextual-lift proof | `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y` |
| 11 | `true_2135_2128` | 2135 | 2128 | 27 | `idempotence lemma`, `absorption lemma`, `two-h contextual lift` | self-square/idempotent subterms appear in the goal or hypothesis; goal is an anchor equal to a context containing that anchor; previous motif ranking places it near the two-h contextual-lift proof | `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)` |
| 12 | `true_2789_898` | 2789 | 898 | 27 | `absorption lemma`, `two-h contextual lift` | goal is an anchor equal to a context containing that anchor; previous motif ranking places it near the two-h contextual-lift proof; cached near-miss family is nested absorption | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` |
| 13 | `true_1167_2000` | 1167 | 2000 | 26 | `idempotence lemma`, `absorption lemma` | self-square/idempotent subterms appear in the goal or hypothesis; goal is an anchor equal to a context containing that anchor; previous motif ranking places it near repeated-anchor collapse | `x = (y ◇ (z ◇ z)) ◇ (z ◇ x)` |
| 14 | `true_2111_1755` | 2111 | 1755 | 26 | `idempotence lemma`, `absorption lemma` | self-square/idempotent subterms appear in the goal or hypothesis; goal is an anchor equal to a context containing that anchor; previous motif ranking places it near repeated-anchor collapse | `x = (y ◇ z) ◇ ((x ◇ x) ◇ x)` |
| 15 | `true_1874_4357` | 1874 | 4357 | 23 | `argument-erasure lemma`, `multi-local-edge calc` | goal or cached near-miss is an argument-erasure/context-invariance edge; composite equality likely needs a short calc over local edges; an exact outer context can be extracted | `x ◇ (y ◇ z) = x ◇ (y ◇ w)` |
| 16 | `true_4082_4109` | 4082 | 4109 | 23 | `idempotence lemma`, `multi-local-edge calc` | self-square/idempotent subterms appear in the goal or hypothesis; composite equality likely needs a short calc over local edges; a direct h midpoint is available | `x ◇ x = ((y ◇ z) ◇ z) ◇ y` |
| 17 | `true_1604_1822` | 1604 | 1822 | 21 | `idempotence lemma` | self-square/idempotent subterms appear in the goal or hypothesis; previous motif ranking places it near repeated-anchor collapse; a direct h midpoint is available | `x = (y ◇ z) ◇ ((w ◇ w) ◇ y)` |
| 18 | `true_1698_555` | 1698 | 555 | 17 | `absorption lemma`, `two-h contextual lift` | goal is an anchor equal to a context containing that anchor; previous motif ranking places it near the two-h contextual-lift proof; a direct h midpoint is available | `x = y ◇ (z ◇ (y ◇ (x ◇ y)))` |
| 19 | `true_691_1976` | 691 | 1976 | 17 | `absorption lemma`, `two-h contextual lift` | goal is an anchor equal to a context containing that anchor; previous motif ranking places it near the two-h contextual-lift proof; a direct h midpoint is available | `x = (y ◇ (z ◇ y)) ◇ (x ◇ y)` |
| 20 | `true_689_1350` | 689 | 1350 | 16 | `absorption lemma` | goal is an anchor equal to a context containing that anchor; previous motif ranking places it near repeated-anchor collapse; a direct h midpoint is available | `x = y ◇ (((z ◇ x) ◇ x) ◇ y)` |

## Groups By Likely Requirement

| requirement | count | cases |
|---|---:|---|
| `idempotence lemma` | 13 | `true_2860_3458`, `true_1738_1258`, `true_2771_2775`, `true_674_668`, `true_425_1630`, `true_1636_1839`, `true_1500_498`, `true_2055_2656`, `true_2135_2128`, `true_1167_2000`, `true_2111_1755`, `true_4082_4109`, `true_1604_1822` |
| `absorption lemma` | 17 | `true_2860_3458`, `true_1738_1258`, `true_2771_2775`, `true_674_668`, `true_3108_4642`, `true_425_1630`, `true_1636_1839`, `true_2074_2082`, `true_1500_498`, `true_2055_2656`, `true_2135_2128`, `true_2789_898`, `true_1167_2000`, `true_2111_1755`, `true_1698_555`, `true_691_1976`, `true_689_1350` |
| `extension lemma` | 1 | `true_1738_1258` |
| `argument-erasure lemma` | 6 | `true_2860_3458`, `true_2771_2775`, `true_674_668`, `true_3108_4642`, `true_2074_2082`, `true_1874_4357` |
| `two-h contextual lift` | 10 | `true_2771_2775`, `true_674_668`, `true_1636_1839`, `true_2074_2082`, `true_1500_498`, `true_2055_2656`, `true_2135_2128`, `true_2789_898`, `true_1698_555`, `true_691_1976` |
| `multi-local-edge calc` | 4 | `true_2860_3458`, `true_3108_4642`, `true_1874_4357`, `true_4082_4109` |

## Top 5 Local-Theory Transfer Targets

| rank | case | score | likely next lemma | why it is close |
|---:|---|---:|---|---|
| 1 | `true_2860_3458` | 48 | `idempotence lemma`, `absorption lemma`, `argument-erasure lemma` | self-square/idempotent subterms appear in the goal or hypothesis; goal or cached near-miss is an argument-erasure/context-invariance edge; composite equality likely needs a short calc over local edges; cached near-miss family is nested absorption |
| 2 | `true_1738_1258` | 40 | `idempotence lemma`, `absorption lemma`, `extension lemma` | self-square/idempotent subterms appear in the goal or hypothesis; goal is an anchor equal to a context containing that anchor; goal has the extension shape T = T ◇ U or its symmetric form; previous motif ranking places it near repeated-anchor collapse |
| 3 | `true_2771_2775` | 39 | `idempotence lemma`, `absorption lemma`, `argument-erasure lemma` | self-square/idempotent subterms appear in the goal or hypothesis; goal is an anchor equal to a context containing that anchor; goal or cached near-miss is an argument-erasure/context-invariance edge; previous motif ranking places it near the two-h contextual-lift proof |
| 4 | `true_674_668` | 39 | `idempotence lemma`, `absorption lemma`, `argument-erasure lemma` | self-square/idempotent subterms appear in the goal or hypothesis; goal is an anchor equal to a context containing that anchor; goal or cached near-miss is an argument-erasure/context-invariance edge; previous motif ranking places it near the two-h contextual-lift proof |
| 5 | `true_3108_4642` | 38 | `absorption lemma`, `argument-erasure lemma`, `multi-local-edge calc` | hypothesis repeats its left anchor 3 times on the RHS; goal or cached near-miss is an argument-erasure/context-invariance edge; composite equality likely needs a short calc over local edges; a direct h midpoint is available |

## False Residue

- `false_1682_411` (1682 -> 411): `x = (y ◇ x) ◇ ((x ◇ x) ◇ y)` => `x = x ◇ (x ◇ (x ◇ (x ◇ x)))`
  - Targeted countermodel search status: No v0.9.4 targeted countermodel search was run. Existing Claude notes contain a targeted negative search for false_1682_411, but no accepted witness has been added.

## v0.9.5 Recommendation

Smallest safe target: `anchored projection and argument-erasure local-lemma miner`.

- v0.9.4 shows that a small local theory can safely close a composite goal when it derives idempotence, absorption, and extension as named local lemmas.
- The highest-ranked remaining cases need the same style of local lemma, but with anchored projection or argument-erasure instead of only extension.
- The safest next step is not broader graph search; it is a narrowly gated miner for lemmas such as (a ◇ b) ◇ b = b, (a ◇ b) ◇ a = a, a ◇ a = b ◇ a, and a ◇ b = a ◇ c when the hypothesis has a repeated-anchor RHS.
- First structural test targets: `true_2860_3458`, `true_1738_1258`, `true_2771_2775`, `true_674_668`, `true_3108_4642`.
- Keep the same safety posture: one narrow local-theory route, no global graph-cap increase, and abstain unless every local lemma has a compact deterministic proof.

