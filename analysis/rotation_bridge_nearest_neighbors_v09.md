# v0.9 Rotation-Bridge Nearest-Neighbor Study

## Summary

- Accepted precedent: `true_3083_3094`.
- Newly solved vs v0.8.2: `true_3083_3094`.
- Remaining unsolved in v0.9: 26 total, 25 true-labeled, 1 false-labeled.
- Recommendation: add a one-level recursive inner-context bridge after a cheap `h` midpoint in `rotation_context_bridge`.

## Accepted Proof: true_3083_3094

- Hypothesis: `x = (((x ◇ y) ◇ y) ◇ z) ◇ z`
- Goal: `x = (((x ◇ y) ◇ z) ◇ z) ◇ y`
- Midpoint: `((((x ◇ y) ◇ y) ◇ z) ◇ z)`
- Bridge target: `((((x ◇ y) ◇ z) ◇ z) ◇ y)`
- Motif: expand anchor `x` by `h x y z`, then rotate/migrate a repeated block under compact congrArg contexts.

```lean
import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x y z
  have bridge : x = ((((x ◇ y) ◇ z) ◇ z) ◇ y) := by
    calc
      x = ((((x ◇ y) ◇ y) ◇ z) ◇ z) := h x y z
      _ = ((((x ◇ y) ◇ z) ◇ z) ◇ y) := (((h ((((x ◇ y) ◇ y) ◇ z) ◇ z) ((((x ◇ y) ◇ y) ◇ z) ◇ z) y).trans (congrArg (fun t => ((t ◇ y) ◇ y)) ((h ((x ◇ y) ◇ y) z ((((x ◇ y) ◇ y) ◇ z) ◇ z)).symm)))).trans ((((congrArg (fun t => (t ◇ y)) (h (((x ◇ y) ◇ z) ◇ z) ((((x ◇ y) ◇ y) ◇ z) ◇ z) y)).trans (congrArg (fun t => (((t ◇ y) ◇ y) ◇ y)) ((h (x ◇ y) z ((((x ◇ y) ◇ y) ◇ z) ◇ z)).symm)))).symm)
  exact bridge
```

## Proof Skeleton

Hypothesis instantiations used:
- `h x y z`
- `h ((((x ◇ y) ◇ y) ◇ z) ◇ z) ((((x ◇ y) ◇ y) ◇ z) ◇ z) y`
- `(h ((x ◇ y) ◇ y) z ((((x ◇ y) ◇ y) ◇ z) ◇ z)).symm`
- `h (((x ◇ y) ◇ z) ◇ z) ((((x ◇ y) ◇ y) ◇ z) ◇ z) y`
- `(h (x ◇ y) z ((((x ◇ y) ◇ y) ◇ z) ◇ z)).symm`

CongrArg contexts:
- `fun t => ((t ◇ y) ◇ y)`
- `fun t => (t ◇ y)`
- `fun t => (((t ◇ y) ◇ y) ◇ y)`

Transitivity structure: first calc edge is `x = midpoint` by `h x y z`; second calc edge is `midpoint = target` by a trans chain containing two direct `h` edges, two symmetric `h` edges, and nested `congrArg` lifts.

Anchor terms: `x`, `x ◇ y`, `((x ◇ y) ◇ y)`, `((((x ◇ y) ◇ y) ◇ z) ◇ z)`, `((((x ◇ y) ◇ z) ◇ z)`.

## Top 5 Nearest Neighbors

| rank | case | similarity | candidate midpoint | candidate bridge | why current route stalls |
|---:|---|---:|---|---|---|
| 1 | `true_2135_2128` | 88 | `(((y ◇ y) ◇ y) ◇ (x ◇ y))` | `bridge : (((y ◇ y) ◇ y) ◇ (x ◇ y)) = (((y ◇ y) ◇ x) ◇ (y ◇ y))` | The route extracts the root target and the cheap first h midpoint, but the current edge prover does not have the repeated-block bridge ((B◇B)◇B)◇(A◇B) -> ((B◇B)◇A)◇(B◇B). |
| 2 | `true_2771_2775` | 84 | `(((y ◇ z) ◇ (x ◇ x)) ◇ y)` | `inner : (x ◇ x) = (x ◇ y), then congrArg (fun q => (((y ◇ z) ◇ q) ◇ y)) inner` | Both endpoint terms are present after the first h expansion; failure is the inner replacement (x◇x) = (x◇y) under an exact two-level context. |
| 3 | `true_2654_2864` | 81 | `(((x ◇ x) ◇ (y ◇ y)) ◇ z)` | `inner : ((x ◇ x) ◇ (y ◇ y)) = ((x ◇ (y ◇ x)) ◇ x), lifted by congrArg (fun q => q ◇ z)` | The outer context is exact and compact; the current bridge search stops before deriving the inner rotation of two adjacent repeated x/y blocks. |
| 4 | `true_2055_2656` | 78 | `(((x ◇ y) ◇ x) ◇ (y ◇ z))` | `bridge : (((x ◇ y) ◇ x) ◇ (y ◇ z)) = (((x ◇ x) ◇ (y ◇ z)) ◇ y)` | The first h step gives the natural midpoint; the missing bridge is the same suffix migration family as true_3083_3094, but with a larger payload term. |
| 5 | `true_674_668` | 75 | `(y ◇ (x ◇ ((x ◇ z) ◇ z)))` | `inner : ((x ◇ z) ◇ z) = ((x ◇ x) ◇ z), lifted by congrArg (fun q => y ◇ (x ◇ q)) inner` | It has the same h-midpoint then contextual bridge structure, but the bridge is buried under a right-nested two-level context. |

## Top 5 Lean Skeletons

### true_2135_2128
- Hypothesis: `x = ((y ◇ y) ◇ y) ◇ (x ◇ y)`
- Goal: `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)`
- Likely missing edge: `(((y ◇ y) ◇ y) ◇ (x ◇ y)) = (((y ◇ y) ◇ x) ◇ (y ◇ y))`

```lean
calc
  x = (((y ◇ y) ◇ y) ◇ (x ◇ y)) := h x y
  _ = (((y ◇ y) ◇ x) ◇ (y ◇ y)) := bridge
```

### true_2771_2775
- Hypothesis: `x = ((y ◇ z) ◇ (x ◇ x)) ◇ y`
- Goal: `x = ((y ◇ z) ◇ (x ◇ y)) ◇ y`
- Likely missing edge: `(((y ◇ z) ◇ (x ◇ x)) ◇ y) = (((y ◇ z) ◇ (x ◇ y)) ◇ y)`

```lean
calc
  x = (((y ◇ z) ◇ (x ◇ x)) ◇ y) := h x y z
  _ = (((y ◇ z) ◇ (x ◇ y)) ◇ y) := congrArg (fun q => (((y ◇ z) ◇ q) ◇ y)) inner
```

### true_2654_2864
- Hypothesis: `x = ((x ◇ x) ◇ (y ◇ y)) ◇ z`
- Goal: `x = ((x ◇ (y ◇ x)) ◇ x) ◇ z`
- Likely missing edge: `(((x ◇ x) ◇ (y ◇ y)) ◇ z) = (((x ◇ (y ◇ x)) ◇ x) ◇ z)`

```lean
calc
  x = (((x ◇ x) ◇ (y ◇ y)) ◇ z) := h x y z
  _ = (((x ◇ (y ◇ x)) ◇ x) ◇ z) := congrArg (fun q => (q ◇ z)) inner
```

### true_2055_2656
- Hypothesis: `x = ((x ◇ y) ◇ x) ◇ (y ◇ z)`
- Goal: `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y`
- Likely missing edge: `(((x ◇ y) ◇ x) ◇ (y ◇ z)) = (((x ◇ x) ◇ (y ◇ z)) ◇ y)`

```lean
calc
  x = (((x ◇ y) ◇ x) ◇ (y ◇ z)) := h x y z
  _ = (((x ◇ x) ◇ (y ◇ z)) ◇ y) := bridge
```

### true_674_668
- Hypothesis: `x = y ◇ (x ◇ ((x ◇ z) ◇ z))`
- Goal: `x = y ◇ (x ◇ ((x ◇ x) ◇ z))`
- Likely missing edge: `(y ◇ (x ◇ ((x ◇ z) ◇ z))) = (y ◇ (x ◇ ((x ◇ x) ◇ z)))`

```lean
calc
  x = y ◇ (x ◇ ((x ◇ z) ◇ z)) := h x y z
  _ = y ◇ (x ◇ ((x ◇ x) ◇ z)) := congrArg (fun q => y ◇ (x ◇ q)) inner
```

## Ranked Remaining True Cases

| rank | case | eq1 | eq2 | similarity | likely missing edge |
|---:|---|---:|---:|---:|---|
| 1 | `true_2135_2128` | 2135 | 2128 | 88 | `(((y ◇ y) ◇ y) ◇ (x ◇ y)) = (((y ◇ y) ◇ x) ◇ (y ◇ y))` |
| 2 | `true_2771_2775` | 2771 | 2775 | 84 | `(((y ◇ z) ◇ (x ◇ x)) ◇ y) = (((y ◇ z) ◇ (x ◇ y)) ◇ y)` |
| 3 | `true_2654_2864` | 2654 | 2864 | 81 | `(((x ◇ x) ◇ (y ◇ y)) ◇ z) = (((x ◇ (y ◇ x)) ◇ x) ◇ z)` |
| 4 | `true_2055_2656` | 2055 | 2656 | 78 | `(((x ◇ y) ◇ x) ◇ (y ◇ z)) = (((x ◇ x) ◇ (y ◇ z)) ◇ y)` |
| 5 | `true_674_668` | 674 | 668 | 75 | `(y ◇ (x ◇ ((x ◇ z) ◇ z))) = (y ◇ (x ◇ ((x ◇ x) ◇ z)))` |
| 6 | `true_2860_3458` | 2860 | 3458 | 72 | `(x ◇ x) = (x ◇ ((x ◇ y) ◇ x))` |
| 7 | `true_1698_555` | 1698 | 555 | 70 | `((y ◇ x) ◇ ((y ◇ z) ◇ y)) = (y ◇ (z ◇ (y ◇ (x ◇ y))))` |
| 8 | `true_2789_898` | 2789 | 898 | 68 | `(((y ◇ z) ◇ (y ◇ x)) ◇ z) = (y ◇ ((x ◇ z) ◇ (z ◇ y)))` |
| 9 | `true_689_1350` | 689 | 1350 | 66 | `x = (y ◇ (((z ◇ x) ◇ x) ◇ y))` |
| 10 | `true_2111_1755` | 2111 | 1755 | 62 | `(((y ◇ x) ◇ z) ◇ (y ◇ x)) = ((y ◇ z) ◇ ((x ◇ x) ◇ x))` |
| 11 | `true_130_1759` | 130 | 1759 | 60 | `(y ◇ ((y ◇ z) ◇ x)) = ((y ◇ z) ◇ ((x ◇ y) ◇ x))` |
| 12 | `true_1167_2000` | 1167 | 2000 | 58 | `(y ◇ ((z ◇ (y ◇ y)) ◇ x)) = ((y ◇ (z ◇ z)) ◇ (z ◇ x))` |
| 13 | `true_2074_2082` | 2074 | 2082 | 56 | `(((x ◇ y) ◇ z) ◇ (y ◇ x)) = (((x ◇ y) ◇ z) ◇ (w ◇ x))` |
| 14 | `true_691_1976` | 691 | 1976 | 54 | `(y ◇ (x ◇ ((z ◇ y) ◇ y))) = ((y ◇ (z ◇ y)) ◇ (x ◇ y))` |
| 15 | `true_1636_1839` | 1636 | 1839 | 52 | `((x ◇ x) ◇ ((y ◇ x) ◇ z)) = ((x ◇ (x ◇ y)) ◇ (x ◇ z))` |
| 16 | `true_425_1630` | 425 | 1630 | 50 | `x = ((x ◇ x) ◇ ((x ◇ x) ◇ y))` |
| 17 | `true_428_3725` | 428 | 3725 | 48 | `(x ◇ y) = ((x ◇ y) ◇ (y ◇ y))` |
| 18 | `true_1500_498` | 1500 | 498 | 46 | `((y ◇ x) ◇ (z ◇ (x ◇ z))) = (y ◇ (x ◇ (z ◇ (w ◇ w))))` |
| 19 | `true_1738_1258` | 1738 | 1258 | 44 | `((y ◇ y) ◇ ((z ◇ x) ◇ x)) = (x ◇ (((y ◇ z) ◇ x) ◇ x))` |
| 20 | `true_2942_5` | 2942 | 5 | 42 | `x = (y ◇ x)` |
| 21 | `true_3108_4642` | 3108 | 4642 | 40 | `((((y ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ z) ◇ ((x ◇ y) ◇ x)) = ((z ◇ x) ◇ x)` |
| 22 | `true_4082_4109` | 4082 | 4109 | 38 | `(x ◇ x) = (((y ◇ z) ◇ z) ◇ y)` |
| 23 | `true_1874_4357` | 1874 | 4357 | 36 | `(((x ◇ (y ◇ z)) ◇ (y ◇ z)) ◇ (y ◇ w)) = (x ◇ (y ◇ w))` |
| 24 | `true_1604_1822` | 1604 | 1822 | 34 | `((y ◇ z) ◇ (w ◇ (x ◇ y))) = ((y ◇ z) ◇ ((w ◇ w) ◇ y))` |
| 25 | `true_2061_307` | 2061 | 307 | 32 | `(x ◇ x) = (x ◇ (x ◇ x))` |

## Smallest Safe v0.9.1 Change

Add `recursive_inner_context_bridge_after_h_midpoint` inside `rotation_context_bridge`:

1. Accept only cases where the first edge is already a direct `h` expansion from the goal lhs to a midpoint.
2. If `midpoint = rhs` fails, extract the largest exact one-hole context `D[_]` such that `midpoint = D[s]` and `rhs = D[t]`.
3. Prove `s = t` with the existing deterministic edge engines under one recursion level.
4. Emit `calc lhs = midpoint := h_step; _ = rhs := congrArg (fun q => D[q]) inner_bridge`.
5. Keep current global graph caps unchanged; gate by context depth, lambda length, one emitted bridge, and compact code size.

This targets the nearest neighbors where the solver already finds the right first midpoint but cannot compress the second edge into a local bridge: `true_2771_2775`, `true_674_668`, and `true_2654_2864`.

## Remaining False Case

- `false_1682_411`: `x = (y ◇ x) ◇ ((x ◇ x) ◇ y)` -> `x = x ◇ (x ◇ (x ◇ (x ◇ x)))`. Keep this for a separate targeted countermodel search; it is not part of the rotation-bridge motif.
