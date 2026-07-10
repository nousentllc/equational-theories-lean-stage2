# Third-Stage Private Motif Distillation Report

## Status

- Full solver remains closed: `sample_20 20/20`, `sample_200 200/200`, `judge_errors=0`.
- Public-exact-disabled `sample_200`: `189/200`, `true=89`, `false=100`, `no_attempt=11`, `judge_errors=0`.
- Already recovered by `generalized_argument_erasure_context_bridge`: `true_2074_2082`, `true_674_668`, `true_2771_2775`.
- Already recovered by `generalized_seed_collapse_contextual_lift`: `true_2942_5`, `true_130_1759`, `true_2061_307`.

## Remaining Public-Exact Dependencies

| case | eq1→eq2 | exact type | bytes | prior motif | cluster |
|---|---:|---|---:|---|---|
| `true_1698_555` | 1698→555 | ATP exact certificate | 10003 | deep repeated-y tail shift | tail-shift / repeated-tail corridor |
| `true_2860_3458` | 2860→3458 | ATP exact certificate | 10646 | square-anchor / anchored erasure | anchored erasure / square-anchor |
| `true_1738_1258` | 1738→1258 | ATP exact certificate | 7324 | right-anchored expansion through double x tail | anchored erasure / square-anchor |
| `true_2789_898` | 2789→898 | ATP exact certificate | 31995 | two-instantiation rotation/context bridge | local-theory normalization |
| `true_2135_2128` | 2135→2128 | ATP exact certificate | 17412 | tail-shift among y◇y blocks | tail-shift / repeated-tail corridor |
| `true_1500_498` | 1500→498 | ATP exact certificate | 33893 | broad projection/extension with extra free variable | local-theory normalization |
| `true_691_1976` | 691→1976 | ATP exact certificate | 3243 | seed-collapse plus context shift | tail-shift / repeated-tail corridor |
| `true_4082_4109` | 4082→4109 | ATP exact certificate | 7398 | rotation/context-shift with transitive congruence | tail-shift / repeated-tail corridor |
| `true_2055_2656` | 2055→2656 | ATP exact certificate | 4177 | two-local-edge E-prover local theory bridge | local-theory normalization |
| `true_689_1350` | 689→1350 | ATP exact certificate | 7183 | nested seed-collapse under y ◇ _ context | tail-shift / repeated-tail corridor |
| `true_1636_1839` | 1636→1839 | ATP exact certificate | 11847 | self-square extension and absorption alignment | anchored erasure / square-anchor |

## Case Details

### `true_1698_555`

- eq1/eq2: `1698 → 555`
- Hypothesis: `x = (y ◇ x) ◇ ((y ◇ z) ◇ y)`
- Goal: `x = y ◇ (z ◇ (y ◇ (x ◇ y)))`
- Current exact-certificate type: ATP exact certificate (`z3_true_1698_555_min`), 10003 bytes
- Prior motif label: deep repeated-y tail shift
- Cluster: tail-shift / repeated-tail corridor

### `true_2860_3458`

- eq1/eq2: `2860 → 3458`
- Hypothesis: `x = ((x ◇ (x ◇ y)) ◇ z) ◇ z`
- Goal: `x ◇ x = x ◇ ((x ◇ y) ◇ x)`
- Current exact-certificate type: ATP exact certificate (`z3_true_2860_3458_seed24_partial_alias_keep2`), 10646 bytes
- Prior motif label: square-anchor / anchored erasure
- Cluster: anchored erasure / square-anchor

### `true_1738_1258`

- eq1/eq2: `1738 → 1258`
- Hypothesis: `x = (y ◇ y) ◇ ((z ◇ x) ◇ x)`
- Goal: `x = x ◇ (((y ◇ z) ◇ x) ◇ x)`
- Current exact-certificate type: ATP exact certificate (`z3_true_1738_1258_min`), 7324 bytes
- Prior motif label: right-anchored expansion through double x tail
- Cluster: anchored erasure / square-anchor

### `true_2789_898`

- eq1/eq2: `2789 → 898`
- Hypothesis: `x = ((y ◇ z) ◇ (y ◇ x)) ◇ z`
- Goal: `x = y ◇ ((x ◇ z) ◇ (z ◇ y))`
- Current exact-certificate type: ATP exact certificate (`z3_true_2789_898_min`), 31995 bytes
- Prior motif label: two-instantiation rotation/context bridge
- Cluster: local-theory normalization

### `true_2135_2128`

- eq1/eq2: `2135 → 2128`
- Hypothesis: `x = ((y ◇ y) ◇ y) ◇ (x ◇ y)`
- Goal: `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)`
- Current exact-certificate type: ATP exact certificate (`z3_true_2135_2128_seed7_min_alias`), 17412 bytes
- Prior motif label: tail-shift among y◇y blocks
- Cluster: tail-shift / repeated-tail corridor

### `true_1500_498`

- eq1/eq2: `1500 → 498`
- Hypothesis: `x = (y ◇ x) ◇ (z ◇ (x ◇ z))`
- Goal: `x = y ◇ (x ◇ (z ◇ (w ◇ w)))`
- Current exact-certificate type: ATP exact certificate (`z3_true_1500_498_min`), 33893 bytes
- Prior motif label: broad projection/extension with extra free variable
- Cluster: local-theory normalization

### `true_691_1976`

- eq1/eq2: `691 → 1976`
- Hypothesis: `x = y ◇ (x ◇ ((z ◇ y) ◇ y))`
- Goal: `x = (y ◇ (z ◇ y)) ◇ (x ◇ y)`
- Current exact-certificate type: ATP exact certificate (`z3_true_691_1976_min`), 3243 bytes
- Prior motif label: seed-collapse plus context shift
- Cluster: tail-shift / repeated-tail corridor

### `true_4082_4109`

- eq1/eq2: `4082 → 4109`
- Hypothesis: `x ◇ x = ((y ◇ x) ◇ x) ◇ z`
- Goal: `x ◇ x = ((y ◇ z) ◇ z) ◇ y`
- Current exact-certificate type: ATP exact certificate (`z3_true_4082_4109_min`), 7398 bytes
- Prior motif label: rotation/context-shift with transitive congruence
- Cluster: tail-shift / repeated-tail corridor

### `true_2055_2656`

- eq1/eq2: `2055 → 2656`
- Hypothesis: `x = ((x ◇ y) ◇ x) ◇ (y ◇ z)`
- Goal: `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y`
- Current exact-certificate type: ATP exact certificate (`eprover_true_2055_2656_l4_l15`), 4177 bytes
- Prior motif label: two-local-edge E-prover local theory bridge
- Cluster: local-theory normalization

### `true_689_1350`

- eq1/eq2: `689 → 1350`
- Hypothesis: `x = y ◇ (x ◇ ((z ◇ x) ◇ w))`
- Goal: `x = y ◇ (((z ◇ x) ◇ x) ◇ y)`
- Current exact-certificate type: ATP exact certificate (`z3_true_689_1350_min`), 7183 bytes
- Prior motif label: nested seed-collapse under y ◇ _ context
- Cluster: tail-shift / repeated-tail corridor

### `true_1636_1839`

- eq1/eq2: `1636 → 1839`
- Hypothesis: `x = (x ◇ x) ◇ ((y ◇ x) ◇ z)`
- Goal: `x = (x ◇ (x ◇ y)) ◇ (x ◇ z)`
- Current exact-certificate type: ATP exact certificate (`z3_true_1636_1839_seed7_min_alias`), 11847 bytes
- Prior motif label: self-square extension and absorption alignment
- Cluster: anchored erasure / square-anchor

## Motif Clusters

- **tail-shift / repeated-tail corridor** (5): `true_1698_555`, `true_2135_2128`, `true_691_1976`, `true_4082_4109`, `true_689_1350`
- **anchored erasure / square-anchor** (3): `true_2860_3458`, `true_1738_1258`, `true_1636_1839`
- **local-theory normalization** (3): `true_2789_898`, `true_1500_498`, `true_2055_2656`
- **ATP exact certificate only** (0): none
- **finite witness exact only** (0): none
- **unknown** (0): none

## Ranked Families

| rank | family | cases | private value | difficulty | size risk | judge risk |
|---:|---|---:|---|---|---|---|
| 1 | anchored erasure / square-anchor | 3 | high | medium | medium: public exact certificates are 7.3-11.8 KB, so a compact schema should stay below the generated-route gate if local lemmas are reused. | low-medium with exact structural guards; medium if generalized into broad normalization. |
| 2 | tail-shift / repeated-tail corridor | 5 | high | medium-high | medium-high: several certificates are compact, but tail movement tends to require nested congrArg/trans chains. | medium because overly broad tail-shift guards can emit fragile congrArg contexts. |
| 3 | local-theory normalization | 3 | medium-high | high | high: two public certificates are over 30 KB, indicating risk of proof bloat unless a new local package is found. | medium-high for broad normalizer extensions. |
| 4 | ATP exact certificate only | 0 | low | n/a | n/a | low for memo routes, no private generalization value. |
| 5 | finite witness exact only | 0 | n/a for proof-side routing | n/a | n/a | n/a |

## Recommendation

Implement `generalized_square_anchor_anchored_erasure_bridge` next.

Rationale: this family covers three remaining public-exact dependencies (`true_2860_3458`, `true_1738_1258`, `true_1636_1839`) with compact-to-moderate certificates and clear square-anchor/right-tail structure. It is more private-generalizable than another ATP memo extraction pass and lower risk than a broad tail-shift corridor route.

Suggested guard shape:

- hypothesis contains a self-square or right-anchored double-tail pattern such as x = C[(x◇u)◇x], x = C[(u◇x)◇x], or x = (x◇x)◇C[x]
- goal contains x◇x, x◇((x◇y)◇x), x = x◇C[((y◇z)◇x)◇x], or a self-square extension/absorption alignment shape
- extract exact context depth <= 4; inner edge must be square-anchor, anchored-right, or double-tail erasure
- derive only local facts already used by existing local-theory routes: idem, absorbL/absorbR, anchoredRightErase, or one local square-tail edge
- emit at most 2 local lemmas, <= 3 calc steps, and keep generated proof below the existing private-route byte gate

Fallback: abstain on any guard or local-lemma failure; keep public exact routes untouched and ahead in normal mode.
