# ARCF-Prover v0.8.1 Nested-Absorption Similarity Report

Inputs:
- `pipeline/results/arcf_sample200_v081.json`
- `pipeline/results/arcf_sample200_v08.json`
- `examples/problems/sample_200.json`
- `submissions/arcf_prover/solver.py`

No solver changes were made for this analysis.

## Summary

- Remaining unsolved/no-judge-attempt cases: **27**
- True-labeled unsolved: **26**
- False-labeled unsolved: **1**
- Newly solved in v0.8.1 vs v0.8: **`true_1022_99`**
- Regressions vs v0.8: **0**

The newly solved case used this local nested-absorption motif:

```lean
have na1 : ∀ (a : G), a = (a ◇ ((a ◇ a) ◇ a)) := by
  intro a
  exact ((h a ((a ◇ (a ◇ a)) ◇ a)).trans
    (congrArg (fun t => (a ◇ ((a ◇ t) ◇ a))) ((h a a).symm)))
exact na1 x
```

## Remaining Cases

| case | expected | eq1_id | eq2_id | goal | closest shape |
|---|---:|---:|---:|---|---|
| `true_2942_5` | true | 2942 | 5 | `x = y ◇ x` | `a = b ◇ (... ◇ a)` degenerate |
| `true_3108_4642` | true | 3108 | 4642 | `(x ◇ y) ◇ x = (z ◇ x) ◇ x` | other, right-anchor context |
| `true_1167_2000` | true | 1167 | 2000 | `x = (y ◇ (z ◇ z)) ◇ (z ◇ x)` | `a = b ◇ (... ◇ a)` |
| `true_1698_555` | true | 1698 | 555 | `x = y ◇ (z ◇ (y ◇ (x ◇ y)))` | other |
| `true_1604_1822` | true | 1604 | 1822 | `x = (y ◇ z) ◇ ((w ◇ w) ◇ y)` | other |
| `true_2111_1755` | true | 2111 | 1755 | `x = (y ◇ z) ◇ ((x ◇ x) ◇ x)` | `a = b ◇ ((a ◇ a) ◇ a)` |
| `true_3083_3094` | true | 3083 | 3094 | `x = (((x ◇ y) ◇ z) ◇ z) ◇ y` | other |
| `true_425_1630` | true | 425 | 1630 | `x = (x ◇ x) ◇ ((x ◇ x) ◇ y)` | other, self-square nested |
| `true_2860_3458` | true | 2860 | 3458 | `x ◇ x = x ◇ ((x ◇ y) ◇ x)` | contexted `a = b ◇ (... ◇ a)` |
| `true_130_1759` | true | 130 | 1759 | `x = (y ◇ z) ◇ ((x ◇ y) ◇ x)` | `a = b ◇ (... ◇ a)` |
| `true_2061_307` | true | 2061 | 307 | `x ◇ x = x ◇ (x ◇ x)` | other, short self-absorption |
| `true_1738_1258` | true | 1738 | 1258 | `x = x ◇ (((y ◇ z) ◇ x) ◇ x)` | `a = b ◇ (... ◇ a)` with `b = a` |
| `true_2654_2864` | true | 2654 | 2864 | `x = ((x ◇ (y ◇ x)) ◇ x) ◇ z` | other |
| `true_2789_898` | true | 2789 | 898 | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` | other |
| `true_2135_2128` | true | 2135 | 2128 | `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)` | other, context-shift |
| `true_428_3725` | true | 428 | 3725 | `x ◇ y = (x ◇ y) ◇ (y ◇ y)` | other, shallow absorption |
| `true_1500_498` | true | 1500 | 498 | `x = y ◇ (x ◇ (z ◇ (w ◇ w)))` | other |
| `true_691_1976` | true | 691 | 1976 | `x = (y ◇ (z ◇ y)) ◇ (x ◇ y)` | other |
| `true_2074_2082` | true | 2074 | 2082 | `x = ((x ◇ y) ◇ z) ◇ (w ◇ x)` | `a = b ◇ (... ◇ a)` |
| `true_4082_4109` | true | 4082 | 4109 | `x ◇ x = ((y ◇ z) ◇ z) ◇ y` | other, context bridge |
| `true_2771_2775` | true | 2771 | 2775 | `x = ((y ◇ z) ◇ (x ◇ y)) ◇ y` | other |
| `false_1682_411` | false | 1682 | 411 | `x = x ◇ (x ◇ (x ◇ (x ◇ x)))` | false; do not prove |
| `true_1874_4357` | true | 1874 | 4357 | `x ◇ (y ◇ z) = x ◇ (y ◇ w)` | other, congruence/context |
| `true_2055_2656` | true | 2055 | 2656 | `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y` | other |
| `true_689_1350` | true | 689 | 1350 | `x = y ◇ (((z ◇ x) ◇ x) ◇ y)` | other |
| `true_674_668` | true | 674 | 668 | `x = y ◇ (x ◇ ((x ◇ x) ◇ z))` | near `a = a ◇ ((a ◇ a) ◇ a)` |
| `true_1636_1839` | true | 1636 | 1839 | `x = (x ◇ (x ◇ y)) ◇ (x ◇ z)` | other |

## Shape Groups

| closest nested-absorption target shape | cases |
|---|---|
| `a = a ◇ ((a ◇ a) ◇ a)` | none remaining exactly; solved by `true_1022_99` |
| `a = a ◇ (a ◇ (a ◇ a))` | none true-labeled; `false_1682_411` is deeper and expected false |
| `a = (a ◇ ((a ◇ a) ◇ a)) ◇ a` | none exact |
| `a = b ◇ ((a ◇ a) ◇ a)` | `true_2111_1755` |
| `a = b ◇ (... ◇ a)` | `true_2942_5`, `true_1167_2000`, `true_2860_3458`, `true_130_1759`, `true_1738_1258`, `true_2074_2082` |
| other | remaining 19 cases |

## Top 5 Likely v0.8.2 Targets

### 1. `true_2111_1755`

Why close: its goal has the solved inner tail `((x ◇ x) ◇ x)`, with only an extra prefix `(y ◇ z)`.

Candidate local lemma:

```lean
have na2 : ∀ (a p : G), a = p ◇ ((a ◇ a) ◇ a) := by
  intro a p
  exact <two h uses + congrArg, analogous to na1>
```

Potential close:

```lean
exact na2 x (y ◇ z)
```

### 2. `true_674_668`

Why close: its goal contains the solved tail shape under a fixed left prefix, but the final variable is not the same anchor.

Candidate local lemma:

```lean
have na2 : ∀ (a p q : G), a = p ◇ (a ◇ ((a ◇ a) ◇ q)) := by
  intro a p q
  exact <na1-like edge proof with prefix p and tail q>
```

Potential close:

```lean
exact na2 x y z
```

### 3. `true_2061_307`

Why close: target is a very short self-absorption edge under one left context.

Candidate local lemma:

```lean
have idem_abs : ∀ (a : G), a = a ◇ a := by
  intro a
  exact <nested absorption edge proof>
```

Potential close:

```lean
exact congrArg (fun t => x ◇ t) (idem_abs x)
```

### 4. `true_2860_3458`

Why close: extracted inner target is `x = (x ◇ y) ◇ x`, a right-anchor absorption edge.

Candidate local lemma:

```lean
have right_anchor : ∀ (a b : G), a = (a ◇ b) ◇ a := by
  intro a b
  exact <bounded nested edge proof>
```

Potential close:

```lean
exact congrArg (fun t => x ◇ t) (right_anchor x y)
```

### 5. `true_1738_1258`

Why close: target is `a = a ◇ (p ◇ a)` for a compound filler `p`.

Candidate local lemma:

```lean
have na2 : ∀ (a p : G), a = a ◇ (p ◇ a) := by
  intro a p
  exact <na1-like proof with p instantiated to ((b ◇ c) ◇ a)>
```

Potential close:

```lean
exact na2 x ((y ◇ z) ◇ x)
```

## Recommendation For v0.8.2

The smallest safe implementation change is to add compacted nested-absorption schema candidates to the existing `nested_absorption_edge` route, without raising global graph caps.

Recommended additions:

- Add schema target `∀ a p, a = p ◇ ((a ◇ a) ◇ a)`.
- Add schema target `∀ a p q, a = p ◇ (a ◇ ((a ◇ a) ◇ q))`.
- Add schema target `∀ a p, a = a ◇ (p ◇ a)`.
- Try these only when the actual goal or extracted context matches the schema.
- Continue using the existing `find_nested_absorption_edge_proof` engine and judge gate.
- Keep max emitted lemmas at 1 and abstain if the generated certificate is not accepted.

The first target, `true_2111_1755`, is the lowest-risk probe because it is closest to the accepted `na1` proof and only adds one prefix variable around the same repeated-anchor tail.
