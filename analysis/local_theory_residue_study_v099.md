# Local-Theory Residue Study v0.9.9

## Inputs
- `latest_result`: `pipeline/results/arcf_sample200_v099.json`
- `sample_200`: `examples/problems/sample_200.json`
- `solver`: `submissions/arcf_prover/solver.py`
- `residue_reports_used`: `analysis/v098_recursive_seed_collapse_transfer_report.json`, `analysis/v095_residue_route_transfer_report.json`, `analysis/v094_local_theory_transfer_report.json`, `analysis/proof_motif_study_v09.json`, `analysis/v096_route_audit.json`

## Summary

- Remaining true failures: `17`
- Excluded false failure: `false_1682_411`
- Generic bounded fact probe: fixed menu of idempotence/projection/absorption/extension/erasure schemas, checked with direct h, short h-trans chains, and h+congrArg/trans graph search.
- Probe result: only `true_3108_4642` and `true_1604_1822` exposed generic facts derivable under the current 1-3 h-use caps; most residue still needs case-directed local packages.

### Fact Frequency

| likely fact | cases |
|---|---:|
| `local collapse` | 14 |
| `argument erasure` | 10 |
| `absorption` | 10 |
| `extension` | 10 |
| `idempotence` | 8 |
| `two-h contextual lift` | 7 |
| `projection` | 5 |

## Remaining True Failures

| id | likely closing facts | derivable under 1-3 h/congrArg? | likely closing edge | package |
|---|---|---|---|---|
| `true_3108_4642` | `argument erasure`, `projection`, `local collapse`, `idempotence` | `idempotence` via h + congrArg/trans graph | `(x ◇ y) ◇ x = (z ◇ x) ◇ x` | anchored argument-erasure / diagonal local theory |
| `true_1698_555` | `absorption`, `extension`, `local collapse`, `two-h contextual lift` | none from generic menu under caps | `x = y ◇ (z ◇ (y ◇ (x ◇ y)))` | two-h contextual lift with nested absorption |
| `true_1604_1822` | `idempotence`, `absorption`, `argument erasure`, `two-h contextual lift` | `idempotence` via two-edge bridge, `absorption_left` via two-edge bridge | `w ◇ (x ◇ y) = (w ◇ w) ◇ y under (y ◇ z) ◇ _` | two-h contextual lift plus proven idempotence/absorption seed |
| `true_2111_1755` | `absorption`, `extension`, `local collapse`, `idempotence` | none from generic menu under caps | `x = (y ◇ z) ◇ ((x ◇ x) ◇ x)` | idempotence/absorption/extension local theory |
| `true_2860_3458` | `absorption`, `projection`, `extension`, `local collapse` | none from generic menu under caps | `x = (x ◇ y) ◇ x, then congrArg (fun q => x ◇ q)` | right absorption / anchored projection |
| `true_1738_1258` | `idempotence`, `extension`, `projection`, `local collapse` | none from generic menu under caps | `x = x ◇ (((y ◇ z) ◇ x) ◇ x)` | extension plus idempotent tail collapse |
| `true_2789_898` | `absorption`, `extension`, `local collapse`, `two-h contextual lift` | none from generic menu under caps | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` | rotation/context shift plus nested absorption |
| `true_2135_2128` | `idempotence`, `argument erasure`, `extension`, `absorption` | none from generic menu under caps | `((y ◇ y) ◇ y) ◇ (x ◇ y) = ((y ◇ y) ◇ x) ◇ (y ◇ y)` | idempotence/extension plus argument erasure |
| `true_1500_498` | `argument erasure`, `extension`, `two-h contextual lift`, `local collapse` | none from generic menu under caps | `z ◇ (x ◇ z) = x ◇ (z ◇ (w ◇ w)) under y ◇ _` | two-h contextual lift with fresh-variable erasure |
| `true_691_1976` | `argument erasure`, `absorption`, `local collapse`, `two-h contextual lift` | none from generic menu under caps | `x ◇ ((x ◇ (y ◇ (z ◇ y))) ◇ (y ◇ (z ◇ y))) = x ◇ y` | recursive seed-collapse depth-2 / eraseR package |
| `true_2074_2082` | `argument erasure`, `projection`, `two-h contextual lift` | none from generic menu under caps | `y ◇ x = w ◇ x under (((x ◇ y) ◇ z) ◇ _)` | eraseL / right-anchor invariance |
| `true_4082_4109` | `idempotence`, `argument erasure`, `local collapse` | none from generic menu under caps | `x ◇ x = z ◇ z after h z y y` | diagonal constancy local theory |
| `true_2771_2775` | `argument erasure`, `idempotence`, `local collapse` | none from generic menu under caps | `x ◇ x = x ◇ y under (((y ◇ z) ◇ _) ◇ y)` | eraseR seed / right-argument invariance |
| `true_2055_2656` | `argument erasure`, `absorption`, `extension`, `local collapse` | none from generic menu under caps | `((x ◇ y) ◇ x) ◇ (y ◇ z) = ((x ◇ x) ◇ (y ◇ z)) ◇ y` | multi-local-edge calc with extension/erasure |
| `true_689_1350` | `absorption`, `extension`, `local collapse`, `two-h contextual lift` | none from generic menu under caps | `x ◇ ((z ◇ x) ◇ w) = ((z ◇ x) ◇ x) ◇ y under y ◇ _` | two-h contextual lift with anchored absorption |
| `true_674_668` | `argument erasure`, `local collapse`, `projection` | none from generic menu under caps | `(x ◇ z) ◇ z = (x ◇ x) ◇ z, or x ◇ z = x ◇ x` | eraseR/eraseL context-invariance |
| `true_1636_1839` | `idempotence`, `extension`, `absorption`, `local collapse` | none from generic menu under caps | `x = (x ◇ (x ◇ y)) ◇ (x ◇ z)` | idempotence/extension local theory |

## Case Notes

### `true_3108_4642`
- Hypothesis: `x = (((y ◇ x) ◇ x) ◇ z) ◇ x`
- Goal: `(x ◇ y) ◇ x = (z ◇ x) ◇ x`
- Likely local facts: `argument erasure`, `projection`, `local collapse`, `idempotence`
- Derivable by bounded probe: `idempotence` (h + congrArg/trans graph)
- Local-theory package: anchored argument-erasure / diagonal local theory
- Note: Goal is constancy of the map q ↦ (q ◇ x) ◇ x. Idempotence is derivable, but the missing fact is argument erasure under a right anchor.

### `true_1698_555`
- Hypothesis: `x = (y ◇ x) ◇ ((y ◇ z) ◇ y)`
- Goal: `x = y ◇ (z ◇ (y ◇ (x ◇ y)))`
- Likely local facts: `absorption`, `extension`, `local collapse`, `two-h contextual lift`
- Derivable by bounded probe: none from the fixed generic menu.
- Local-theory package: two-h contextual lift with nested absorption
- Note: Needs a seed expansion of x followed by a nested context collapse around y and x◇y.

### `true_1604_1822`
- Hypothesis: `x = (y ◇ z) ◇ (w ◇ (x ◇ y))`
- Goal: `x = (y ◇ z) ◇ ((w ◇ w) ◇ y)`
- Likely local facts: `idempotence`, `absorption`, `argument erasure`, `two-h contextual lift`
- Derivable by bounded probe: `idempotence` (two-edge bridge), `absorption_left` (two-edge bridge)
- Local-theory package: two-h contextual lift plus proven idempotence/absorption seed
- Note: Generic probe found idempotence and left absorption derivable; the missing step is composing them into the exact inner replacement.

### `true_2111_1755`
- Hypothesis: `x = ((y ◇ x) ◇ z) ◇ (y ◇ x)`
- Goal: `x = (y ◇ z) ◇ ((x ◇ x) ◇ x)`
- Likely local facts: `absorption`, `extension`, `local collapse`, `idempotence`
- Derivable by bounded probe: none from the fixed generic menu.
- Local-theory package: idempotence/absorption/extension local theory
- Note: Goal has a repeated x-tail; likely needs a package that collapses or extends x◇x and then lifts through a y◇z context.

### `true_2860_3458`
- Hypothesis: `x = ((x ◇ (x ◇ y)) ◇ z) ◇ z`
- Goal: `x ◇ x = x ◇ ((x ◇ y) ◇ x)`
- Likely local facts: `absorption`, `projection`, `extension`, `local collapse`
- Derivable by bounded probe: none from the fixed generic menu.
- Local-theory package: right absorption / anchored projection
- Note: Claude notes identify this as strong right absorption with an extra trailing ◇x to eliminate.

### `true_1738_1258`
- Hypothesis: `x = (y ◇ y) ◇ ((z ◇ x) ◇ x)`
- Goal: `x = x ◇ (((y ◇ z) ◇ x) ◇ x)`
- Likely local facts: `idempotence`, `extension`, `projection`, `local collapse`
- Derivable by bounded probe: none from the fixed generic menu.
- Local-theory package: extension plus idempotent tail collapse
- Note: Looks close to a = a◇C[a]; likely needs x◇x = x or a stronger right-extension lemma.

### `true_2789_898`
- Hypothesis: `x = ((y ◇ z) ◇ (y ◇ x)) ◇ z`
- Goal: `x = y ◇ ((x ◇ z) ◇ (z ◇ y))`
- Likely local facts: `absorption`, `extension`, `local collapse`, `two-h contextual lift`
- Derivable by bounded probe: none from the fixed generic menu.
- Local-theory package: rotation/context shift plus nested absorption
- Note: Requires moving a y/z anchored block through a right-nested context; previous rotation reports classify this family as context-shift.

### `true_2135_2128`
- Hypothesis: `x = ((y ◇ y) ◇ y) ◇ (x ◇ y)`
- Goal: `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)`
- Likely local facts: `idempotence`, `argument erasure`, `extension`, `absorption`
- Derivable by bounded probe: none from the fixed generic menu.
- Local-theory package: idempotence/extension plus argument erasure
- Note: Needs replacement of y-tail and x-position under a repeated y◇y anchor.

### `true_1500_498`
- Hypothesis: `x = (y ◇ x) ◇ (z ◇ (x ◇ z))`
- Goal: `x = y ◇ (x ◇ (z ◇ (w ◇ w)))`
- Likely local facts: `argument erasure`, `extension`, `two-h contextual lift`, `local collapse`
- Derivable by bounded probe: none from the fixed generic menu.
- Local-theory package: two-h contextual lift with fresh-variable erasure
- Note: Fresh w appears only through w◇w, so a diagonal/argument-erasure fact is probably needed.

### `true_691_1976`
- Hypothesis: `x = y ◇ (x ◇ ((z ◇ y) ◇ y))`
- Goal: `x = (y ◇ (z ◇ y)) ◇ (x ◇ y)`
- Likely local facts: `argument erasure`, `absorption`, `local collapse`, `two-h contextual lift`
- Derivable by bounded probe: none from the fixed generic menu.
- Local-theory package: recursive seed-collapse depth-2 / eraseR package
- Note: v0.9.8 report marks this as closest to recursive seed-collapse depth 2; current depth-2 composer did not prove the erasure seed.

### `true_2074_2082`
- Hypothesis: `x = ((x ◇ y) ◇ z) ◇ (y ◇ x)`
- Goal: `x = ((x ◇ y) ◇ z) ◇ (w ◇ x)`
- Likely local facts: `argument erasure`, `projection`, `two-h contextual lift`
- Derivable by bounded probe: none from the fixed generic menu.
- Local-theory package: eraseL / right-anchor invariance
- Note: Canonical remaining eraseL case: b◇a = c◇a. Needs proof of right-anchor invariance, not just application.

### `true_4082_4109`
- Hypothesis: `x ◇ x = ((y ◇ x) ◇ x) ◇ z`
- Goal: `x ◇ x = ((y ◇ z) ◇ z) ◇ y`
- Likely local facts: `idempotence`, `argument erasure`, `local collapse`
- Derivable by bounded probe: none from the fixed generic menu.
- Local-theory package: diagonal constancy local theory
- Note: Claude notes classify this as constant diagonal. This is distinct from ordinary projection.

### `true_2771_2775`
- Hypothesis: `x = ((y ◇ z) ◇ (x ◇ x)) ◇ y`
- Goal: `x = ((y ◇ z) ◇ (x ◇ y)) ◇ y`
- Likely local facts: `argument erasure`, `idempotence`, `local collapse`
- Derivable by bounded probe: none from the fixed generic menu.
- Local-theory package: eraseR seed / right-argument invariance
- Note: The extracted inner edge is exactly a◇a = a◇b. Existing routes can lift it if the seed is proven.

### `true_2055_2656`
- Hypothesis: `x = ((x ◇ y) ◇ x) ◇ (y ◇ z)`
- Goal: `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y`
- Likely local facts: `argument erasure`, `absorption`, `extension`, `local collapse`
- Derivable by bounded probe: none from the fixed generic menu.
- Local-theory package: multi-local-edge calc with extension/erasure
- Note: Composite equality likely needs two local edges plus one context lift, close to v0.9.4 local-theory motif.

### `true_689_1350`
- Hypothesis: `x = y ◇ (x ◇ ((z ◇ x) ◇ w))`
- Goal: `x = y ◇ (((z ◇ x) ◇ x) ◇ y)`
- Likely local facts: `absorption`, `extension`, `local collapse`, `two-h contextual lift`
- Derivable by bounded probe: none from the fixed generic menu.
- Local-theory package: two-h contextual lift with anchored absorption
- Note: Goal shares outer y◇ context; missing edge is a nested anchored replacement.

### `true_674_668`
- Hypothesis: `x = y ◇ (x ◇ ((x ◇ z) ◇ z))`
- Goal: `x = y ◇ (x ◇ ((x ◇ x) ◇ z))`
- Likely local facts: `argument erasure`, `local collapse`, `projection`
- Derivable by bounded probe: none from the fixed generic menu.
- Local-theory package: eraseR/eraseL context-invariance
- Note: A near-miss eraseR/eraseL case. Current composer finds contexts but cannot prove the erasure seed.

### `true_1636_1839`
- Hypothesis: `x = (x ◇ x) ◇ ((y ◇ x) ◇ z)`
- Goal: `x = (x ◇ (x ◇ y)) ◇ (x ◇ z)`
- Likely local facts: `idempotence`, `extension`, `absorption`, `local collapse`
- Derivable by bounded probe: none from the fixed generic menu.
- Local-theory package: idempotence/extension local theory
- Note: Needs a self-anchor expansion package around x◇x and x◇(x◇y).

## Clusters

| local-theory package | count | cases |
|---|---:|---|
| anchored argument-erasure / diagonal local theory | 1 | `true_3108_4642` |
| diagonal constancy local theory | 1 | `true_4082_4109` |
| eraseL / right-anchor invariance | 1 | `true_2074_2082` |
| eraseR seed / right-argument invariance | 1 | `true_2771_2775` |
| eraseR/eraseL context-invariance | 1 | `true_674_668` |
| extension plus idempotent tail collapse | 1 | `true_1738_1258` |
| idempotence/absorption/extension local theory | 1 | `true_2111_1755` |
| idempotence/extension local theory | 1 | `true_1636_1839` |
| idempotence/extension plus argument erasure | 1 | `true_2135_2128` |
| multi-local-edge calc with extension/erasure | 1 | `true_2055_2656` |
| recursive seed-collapse depth-2 / eraseR package | 1 | `true_691_1976` |
| right absorption / anchored projection | 1 | `true_2860_3458` |
| rotation/context shift plus nested absorption | 1 | `true_2789_898` |
| two-h contextual lift plus proven idempotence/absorption seed | 1 | `true_1604_1822` |
| two-h contextual lift with anchored absorption | 1 | `true_689_1350` |
| two-h contextual lift with fresh-variable erasure | 1 | `true_1500_498` |
| two-h contextual lift with nested absorption | 1 | `true_1698_555` |

## v0.9.10 Recommendation

Smallest safe target: **proven-local-fact contextual composer**.

Only emit/use facts already proved by the bounded local menu. Start with idempotence/absorption seeds that the probe can derive, then attempt exact-context closure or one argument-erasure seed under an extracted context. This is narrower than raising proof-graph caps and preserves zero-judge-error discipline.

First structural targets: `true_1604_1822`, `true_3108_4642`, `true_2771_2775`, `true_2074_2082`, `true_674_668`.

Safety gates:
- derive at most two local facts per problem
- facts must be proved by <=3 h uses plus congrArg/trans
- apply only under exact extracted contexts or direct goal shape
- no new global term-bank or edge-cap increase
- abstain if generated Lean exceeds existing code-size gate

Do not mix `false_1682_411` into this proof-side route; it remains a separate countermodel-search problem.
