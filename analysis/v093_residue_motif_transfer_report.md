# v0.9.3 Residue And Motif-Transfer Report

## Delta

| metric | v0.9.2 | v0.9.3 | delta |
|---|---:|---:|---:|
| accepted | 175 | 178 | +3 |
| true proofs | 76 | 79 | +3 |
| false countermodels | 99 | 99 | +0 |
| no judge attempt | 25 | 22 | -3 |
| judge errors | 0 | 0 | +0 |

- Newly solved: `true_2942_5`, `true_130_1759`, `true_2061_307`
- Regressions: none

## Transferred Motifs

### true_2942_5
- Category: `collapse/absorption`
- Motif: true_2942_5 style repeated-anchor collapse
- Hypothesis: `x = ((y ◇ (y ◇ x)) ◇ z) ◇ x`
- Goal: `x = y ◇ x`
- Key local lemmas / intermediate equalities:
  - `hByyy : ((y ◇ (y ◇ y)) ◇ y) ◇ y = y`
  - `collapse : ((y ◇ (y ◇ y)) ◇ y) ◇ (((y ◇ (y ◇ y)) ◇ y) ◇ y) = y`
  - `L_A : y = (y ◇ (y ◇ x)) ◇ y`
  - `hT : x = ((y ◇ (y ◇ x)) ◇ y) ◇ x`

### true_130_1759
- Category: `rotation bridge`
- Motif: true_130_1759 style two-h expansion + contextual lift
- Hypothesis: `x = y ◇ ((y ◇ z) ◇ x)`
- Goal: `x = (y ◇ z) ◇ ((x ◇ y) ◇ x)`
- Key local lemmas / intermediate equalities:
  - `step_xy : x ◇ y = (y ◇ z) ◇ (((y ◇ z) ◇ z) ◇ (x ◇ y))`
  - `step_x : x = (y ◇ z) ◇ (((y ◇ z) ◇ (((y ◇ z) ◇ z) ◇ (x ◇ y))) ◇ x)`
  - `final lift by congrArg (fun t => (y ◇ z) ◇ (t ◇ x)) step_xy.symm`

### true_2061_307
- Category: `multi-edge calc composition`
- Motif: true_2061_307 style multi-local-edge calc composition
- Hypothesis: `x = ((x ◇ y) ◇ y) ◇ (x ◇ y)`
- Goal: `x ◇ x = x ◇ (x ◇ x)`
- Key local lemmas / intermediate equalities:
  - `A : x = ((x ◇ x) ◇ x) ◇ (x ◇ x)`
  - `L1 : (x ◇ x) ◇ x = (x ◇ (x ◇ x)) ◇ x`
  - `C : x ◇ x = (((x ◇ x) ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)`
  - `E : x ◇ (x ◇ x) = (((x ◇ (x ◇ x)) ◇ x) ◇ x) ◇ ((x ◇ (x ◇ x)) ◇ x)`
  - `middle calc via congrArg (fun t => (t ◇ x) ◇ t) L1`

## Remaining Unsolved

Remaining after v0.9.3: 22 total, 21 true-labeled, 1 false-labeled.

| rank | case | eq1 | eq2 | closest motif | score | direct h midpoint | outer context | goal |
|---:|---|---:|---:|---|---:|---:|---:|---|
| 1 | `true_428_3725` | 428 | 3725 | `true_2061_307 style multi-local-edge calc composition` | 52 | true | true | `x ◇ y = (x ◇ y) ◇ (y ◇ y)` |
| 2 | `true_2074_2082` | 2074 | 2082 | `true_130_1759 style two-h expansion + contextual lift` | 46 | true | true | `x = ((x ◇ y) ◇ z) ◇ (w ◇ x)` |
| 3 | `true_2771_2775` | 2771 | 2775 | `true_130_1759 style two-h expansion + contextual lift` | 46 | true | true | `x = ((y ◇ z) ◇ (x ◇ y)) ◇ y` |
| 4 | `true_674_668` | 674 | 668 | `true_130_1759 style two-h expansion + contextual lift` | 46 | true | true | `x = y ◇ (x ◇ ((x ◇ x) ◇ z))` |
| 5 | `true_1738_1258` | 1738 | 1258 | `true_2942_5 style repeated-anchor collapse` | 45 | true | false | `x = x ◇ (((y ◇ z) ◇ x) ◇ x)` |
| 6 | `true_2111_1755` | 2111 | 1755 | `true_2942_5 style repeated-anchor collapse` | 45 | true | false | `x = (y ◇ z) ◇ ((x ◇ x) ◇ x)` |
| 7 | `true_2860_3458` | 2860 | 3458 | `true_2061_307 style multi-local-edge calc composition` | 42 | true | false | `x ◇ x = x ◇ ((x ◇ y) ◇ x)` |
| 8 | `true_3108_4642` | 3108 | 4642 | `true_2061_307 style multi-local-edge calc composition` | 42 | true | false | `(x ◇ y) ◇ x = (z ◇ x) ◇ x` |
| 9 | `true_1167_2000` | 1167 | 2000 | `true_2942_5 style repeated-anchor collapse` | 37 | true | false | `x = (y ◇ (z ◇ z)) ◇ (z ◇ x)` |
| 10 | `true_1500_498` | 1500 | 498 | `true_130_1759 style two-h expansion + contextual lift` | 36 | true | false | `x = y ◇ (x ◇ (z ◇ (w ◇ w)))` |
| 11 | `true_1636_1839` | 1636 | 1839 | `true_130_1759 style two-h expansion + contextual lift` | 36 | true | false | `x = (x ◇ (x ◇ y)) ◇ (x ◇ z)` |
| 12 | `true_1698_555` | 1698 | 555 | `true_130_1759 style two-h expansion + contextual lift` | 36 | true | false | `x = y ◇ (z ◇ (y ◇ (x ◇ y)))` |
| 13 | `true_2055_2656` | 2055 | 2656 | `true_130_1759 style two-h expansion + contextual lift` | 36 | true | false | `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y` |
| 14 | `true_2135_2128` | 2135 | 2128 | `true_130_1759 style two-h expansion + contextual lift` | 36 | true | false | `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)` |
| 15 | `true_2789_898` | 2789 | 898 | `true_130_1759 style two-h expansion + contextual lift` | 36 | true | false | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` |
| 16 | `true_691_1976` | 691 | 1976 | `true_130_1759 style two-h expansion + contextual lift` | 36 | true | false | `x = (y ◇ (z ◇ y)) ◇ (x ◇ y)` |
| 17 | `true_1874_4357` | 1874 | 4357 | `true_2061_307 style multi-local-edge calc composition` | 33 | false | false | `x ◇ (y ◇ z) = x ◇ (y ◇ w)` |
| 18 | `true_425_1630` | 425 | 1630 | `true_2942_5 style repeated-anchor collapse` | 31 | false | false | `x = (x ◇ x) ◇ ((x ◇ x) ◇ y)` |
| 19 | `true_689_1350` | 689 | 1350 | `true_2942_5 style repeated-anchor collapse` | 31 | false | false | `x = y ◇ (((z ◇ x) ◇ x) ◇ y)` |
| 20 | `true_4082_4109` | 4082 | 4109 | `true_2061_307 style multi-local-edge calc composition` | 23 | false | false | `x ◇ x = ((y ◇ z) ◇ z) ◇ y` |
| 21 | `true_1604_1822` | 1604 | 1822 | `true_2942_5 style repeated-anchor collapse` | 5 | false | false | `x = (y ◇ z) ◇ ((w ◇ w) ◇ y)` |

## Motif Groups

| motif | count | cases |
|---|---:|---|
| `true_2942_5 style repeated-anchor collapse` | 6 | `true_1738_1258`, `true_2111_1755`, `true_1167_2000`, `true_425_1630`, `true_689_1350`, `true_1604_1822` |
| `true_130_1759 style two-h expansion + contextual lift` | 10 | `true_2074_2082`, `true_2771_2775`, `true_674_668`, `true_1500_498`, `true_1636_1839`, `true_1698_555`, `true_2055_2656`, `true_2135_2128`, `true_2789_898`, `true_691_1976` |
| `true_2061_307 style multi-local-edge calc composition` | 5 | `true_428_3725`, `true_2860_3458`, `true_3108_4642`, `true_1874_4357`, `true_4082_4109` |

## False Case

- `false_1682_411` (1682 -> 411): `x = (y ◇ x) ◇ ((x ◇ x) ◇ y)` => `x = x ◇ (x ◇ (x ◇ (x ◇ x)))`
  - Keep separate: targeted countermodel search has not been run in this v0.9.3 motif-transfer pass.

## v0.9.4 Recommendation

Smallest safe target: implement a narrowly gated intermediate-lemma miner for `true_2942_5`-style repeated-anchor collapse, then reuse it inside the recursive inner-context bridge.

- The hand proofs show the missing operation is not broader graph search; it is local lemma synthesis from composed `h` substitutions.
- First test targets: `true_2860_3458`, `true_2789_898`, `true_428_3725`, `true_2771_2775`, `true_674_668`.
- Caps: at most two `h` instances inside a local lemma, at most one `congrArg` collapse before the final lift, one emitted lemma per route attempt, no global graph cap increases.
- Keep `false_1682_411` separate; the targeted countermodel search still has not been run in this pass.
