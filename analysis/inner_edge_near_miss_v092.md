# v0.9.2 Inner-Edge Near-Miss Report

## Summary

- Remaining unsolved after v0.9.2: 25 total, 24 true-labeled, 1 false-labeled.
- Newly solved vs v0.9.1: `true_2654_2864`.
- Regressions vs v0.9.1: none.
- Route used for `true_2654_2864`: recursive_inner_context_bridge_after_h_midpoint + context_invariance_inner_edge (inferred from inv1/rinv proof).
- True failures with a direct `h` midpoint: 19 / 24.
- True failures where the recursive inner-context route extracted an outer context: 8 / 24.

## Newly Solved Case

`true_2654_2864` is the accepted v0.9.2 win. The proof expands by `h x y z`, extracts the outer context `fun q => q ◇ z`, then proves the inner edge using a local right-argument invariance lemma.

```lean
import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x y z
  have bridge : x = (((x ◇ (y ◇ x)) ◇ x) ◇ z) := by
    calc
      x = (((x ◇ x) ◇ (y ◇ y)) ◇ z) := h x y z
      _ = (((x ◇ (y ◇ x)) ◇ x) ◇ z) := congrArg (fun q => (q ◇ z)) ((by
    have inv1 : ∀ (a b : G), (a ◇ a) = (a ◇ b) := by
      intro a b
      calc
        (a ◇ a) = ((((a ◇ a) ◇ (a ◇ a)) ◇ ((a ◇ a) ◇ (a ◇ a))) ◇ b) := h (a ◇ a) (a ◇ a) b
        _ = (a ◇ b) := (congrArg (fun t => (t ◇ b)) ((h a a ((a ◇ a) ◇ (a ◇ a))).symm))
    have rinv : ∀ (a b c : G), (a ◇ b) = (a ◇ c) := by
      intro a b c
      exact ((inv1 a b).symm).trans (inv1 a c)
    exact ((congrArg (fun q => (q ◇ (y ◇ y))) (rinv x x (y ◇ x))).trans (rinv (x ◇ (y ◇ x)) (y ◇ y) x))
  ))
  exact bridge
```

## Remaining Unsolved Cases

| id | expected | eq1 | eq2 | direct h midpoint | outer context | candidate family |
|---|---:|---:|---:|---:|---:|---|
| `true_2942_5` | true | 2942 | 5 | true | true | `nested_absorption` |
| `true_3108_4642` | true | 3108 | 4642 | true | false | `no extracted outer context` |
| `true_1167_2000` | true | 1167 | 2000 | true | false | `no extracted outer context` |
| `true_1698_555` | true | 1698 | 555 | true | false | `no extracted outer context` |
| `true_1604_1822` | true | 1604 | 1822 | false | false | `no extracted outer context` |
| `true_2111_1755` | true | 2111 | 1755 | true | false | `no extracted outer context` |
| `true_425_1630` | true | 425 | 1630 | false | false | `no extracted outer context` |
| `true_2860_3458` | true | 2860 | 3458 | true | true | `nested_absorption` |
| `true_130_1759` | true | 130 | 1759 | true | true | `unknown` |
| `true_2061_307` | true | 2061 | 307 | true | false | `no extracted outer context` |
| `true_1738_1258` | true | 1738 | 1258 | true | false | `no extracted outer context` |
| `true_2789_898` | true | 2789 | 898 | true | true | `nested_absorption` |
| `true_2135_2128` | true | 2135 | 2128 | true | false | `no extracted outer context` |
| `true_428_3725` | true | 428 | 3725 | true | true | `nested_absorption` |
| `true_1500_498` | true | 1500 | 498 | true | false | `no extracted outer context` |
| `true_691_1976` | true | 691 | 1976 | true | false | `no extracted outer context` |
| `true_2074_2082` | true | 2074 | 2082 | true | true | `left_argument_erasure_seed` |
| `true_4082_4109` | true | 4082 | 4109 | false | false | `no extracted outer context` |
| `true_2771_2775` | true | 2771 | 2775 | true | true | `right_argument_erasure_seed` |
| `false_1682_411` | false | 1682 | 411 | false | false | `remaining_false_countermodel_search` |
| `true_1874_4357` | true | 1874 | 4357 | false | false | `no extracted outer context` |
| `true_2055_2656` | true | 2055 | 2656 | true | false | `no extracted outer context` |
| `true_689_1350` | true | 689 | 1350 | false | false | `no extracted outer context` |
| `true_674_668` | true | 674 | 668 | true | true | `right_argument_erasure_seed` |
| `true_1636_1839` | true | 1636 | 1839 | true | false | `no extracted outer context` |

## Extracted Inner Edges

### true_2942_5
- Hypothesis: `x = ((y ◇ (y ◇ x)) ◇ z) ◇ x`
- Goal: `x = y ◇ x`
- Candidate family: `nested_absorption`
- `((x ◇ (x ◇ x)) ◇ x) = y`
  - Outer context: `fun q => (q ◇ x)`
  - Classification: `unknown`
  - One mutation from v0.9.2 shape: `false`; shapes: none
- `((x ◇ (x ◇ x)) ◇ (y ◇ x)) = y`
  - Outer context: `fun q => (q ◇ x)`
  - Classification: `nested absorption`
  - One mutation from v0.9.2 shape: `false`; shapes: none
- `((x ◇ (x ◇ x)) ◇ y) = y`
  - Outer context: `fun q => (q ◇ x)`
  - Classification: `nested absorption`
  - One mutation from v0.9.2 shape: `false`; shapes: none
- `((x ◇ (x ◇ x)) ◇ (y ◇ (y ◇ x))) = y`
  - Outer context: `fun q => (q ◇ x)`
  - Classification: `nested absorption`
  - One mutation from v0.9.2 shape: `false`; shapes: none

### true_3108_4642
- Hypothesis: `x = (((y ◇ x) ◇ x) ◇ z) ◇ x`
- Goal: `(x ◇ y) ◇ x = (z ◇ x) ◇ x`
- Recursive route status: direct `h` midpoint found, but no exact smaller outer context extracted.

### true_1167_2000
- Hypothesis: `x = y ◇ ((z ◇ (y ◇ y)) ◇ x)`
- Goal: `x = (y ◇ (z ◇ z)) ◇ (z ◇ x)`
- Recursive route status: direct `h` midpoint found, but no exact smaller outer context extracted.

### true_1698_555
- Hypothesis: `x = (y ◇ x) ◇ ((y ◇ z) ◇ y)`
- Goal: `x = y ◇ (z ◇ (y ◇ (x ◇ y)))`
- Recursive route status: direct `h` midpoint found, but no exact smaller outer context extracted.

### true_1604_1822
- Hypothesis: `x = (y ◇ z) ◇ (w ◇ (x ◇ y))`
- Goal: `x = (y ◇ z) ◇ ((w ◇ w) ◇ y)`
- Recursive route status: not eligible. rotation_context_bridge is gated to hypotheses with at most 3 variables

### true_2111_1755
- Hypothesis: `x = ((y ◇ x) ◇ z) ◇ (y ◇ x)`
- Goal: `x = (y ◇ z) ◇ ((x ◇ x) ◇ x)`
- Recursive route status: direct `h` midpoint found, but no exact smaller outer context extracted.

### true_425_1630
- Hypothesis: `x = x ◇ (x ◇ (y ◇ (z ◇ w)))`
- Goal: `x = (x ◇ x) ◇ ((x ◇ x) ◇ y)`
- Recursive route status: not eligible. rotation_context_bridge is gated to hypotheses with at most 3 variables

### true_2860_3458
- Hypothesis: `x = ((x ◇ (x ◇ y)) ◇ z) ◇ z`
- Goal: `x ◇ x = x ◇ ((x ◇ y) ◇ x)`
- Candidate family: `nested_absorption`
- `(((x ◇ x) ◇ ((x ◇ x) ◇ (x ◇ x))) ◇ ((x ◇ y) ◇ x)) = x`
  - Outer context: `fun q => (q ◇ ((x ◇ y) ◇ x))`
  - Classification: `nested absorption`
  - One mutation from v0.9.2 shape: `false`; shapes: none
- `((x ◇ (x ◇ x)) ◇ x) = (x ◇ y)`
  - Outer context: `fun q => (q ◇ x)`
  - Classification: `unknown`
  - One mutation from v0.9.2 shape: `false`; shapes: none
- `((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ x) = (x ◇ y)`
  - Outer context: `fun q => (q ◇ x)`
  - Classification: `nested absorption`
  - One mutation from v0.9.2 shape: `false`; shapes: none

### true_130_1759
- Hypothesis: `x = y ◇ ((y ◇ z) ◇ x)`
- Goal: `x = (y ◇ z) ◇ ((x ◇ y) ◇ x)`
- Candidate family: `unknown`
- `x = (y ◇ z)`
  - Outer context: `fun q => (q ◇ ((x ◇ y) ◇ x))`
  - Classification: `unknown`
  - One mutation from v0.9.2 shape: `false`; shapes: none

### true_2061_307
- Hypothesis: `x = ((x ◇ y) ◇ y) ◇ (x ◇ y)`
- Goal: `x ◇ x = x ◇ (x ◇ x)`
- Recursive route status: direct `h` midpoint found, but no exact smaller outer context extracted.

### true_1738_1258
- Hypothesis: `x = (y ◇ y) ◇ ((z ◇ x) ◇ x)`
- Goal: `x = x ◇ (((y ◇ z) ◇ x) ◇ x)`
- Recursive route status: direct `h` midpoint found, but no exact smaller outer context extracted.

### true_2789_898
- Hypothesis: `x = ((y ◇ z) ◇ (y ◇ x)) ◇ z`
- Goal: `x = y ◇ ((x ◇ z) ◇ (z ◇ y))`
- Candidate family: `nested_absorption`
- `((x ◇ ((x ◇ z) ◇ (z ◇ y))) ◇ (x ◇ x)) = y`
  - Outer context: `fun q => (q ◇ ((x ◇ z) ◇ (z ◇ y)))`
  - Classification: `nested absorption`
  - One mutation from v0.9.2 shape: `false`; shapes: none

### true_2135_2128
- Hypothesis: `x = ((y ◇ y) ◇ y) ◇ (x ◇ y)`
- Goal: `x = ((y ◇ y) ◇ x) ◇ (y ◇ y)`
- Recursive route status: direct `h` midpoint found, but no exact smaller outer context extracted.

### true_428_3725
- Hypothesis: `x = x ◇ (y ◇ (x ◇ (x ◇ z)))`
- Goal: `x ◇ y = (x ◇ y) ◇ (y ◇ y)`
- Candidate family: `nested_absorption`
- `((x ◇ y) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ (x ◇ y)))) = (y ◇ y)`
  - Outer context: `fun q => ((x ◇ y) ◇ q)`
  - Classification: `unknown`
  - One mutation from v0.9.2 shape: `false`; shapes: none
- `((x ◇ y) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) = (y ◇ y)`
  - Outer context: `fun q => ((x ◇ y) ◇ q)`
  - Classification: `unknown`
  - One mutation from v0.9.2 shape: `false`; shapes: none
- `((x ◇ y) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ y))) = (y ◇ y)`
  - Outer context: `fun q => ((x ◇ y) ◇ q)`
  - Classification: `unknown`
  - One mutation from v0.9.2 shape: `false`; shapes: none
- `((x ◇ y) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ (y ◇ y))))) = (y ◇ y)`
  - Outer context: `fun q => ((x ◇ y) ◇ q)`
  - Classification: `nested absorption`
  - One mutation from v0.9.2 shape: `false`; shapes: none

### true_1500_498
- Hypothesis: `x = (y ◇ x) ◇ (z ◇ (x ◇ z))`
- Goal: `x = y ◇ (x ◇ (z ◇ (w ◇ w)))`
- Recursive route status: direct `h` midpoint found, but no exact smaller outer context extracted.

### true_691_1976
- Hypothesis: `x = y ◇ (x ◇ ((z ◇ y) ◇ y))`
- Goal: `x = (y ◇ (z ◇ y)) ◇ (x ◇ y)`
- Recursive route status: direct `h` midpoint found, but no exact smaller outer context extracted.

### true_2074_2082
- Hypothesis: `x = ((x ◇ y) ◇ z) ◇ (y ◇ x)`
- Goal: `x = ((x ◇ y) ◇ z) ◇ (w ◇ x)`
- Candidate family: `left_argument_erasure_seed`
- `y = w`
  - Outer context: `fun q => (((x ◇ y) ◇ z) ◇ (q ◇ x))`
  - Classification: `unknown`
  - One mutation from v0.9.2 shape: `false`; shapes: none
- `(y ◇ x) = (w ◇ x)`
  - Outer context: `fun q => (((x ◇ y) ◇ z) ◇ q)`
  - Classification: `argument-erasure left`
  - One mutation from v0.9.2 shape: `true`; shapes: `b ◇ a = c ◇ a` (forward), `b ◇ a = c ◇ a` (reverse)

### true_4082_4109
- Hypothesis: `x ◇ x = ((y ◇ x) ◇ x) ◇ z`
- Goal: `x ◇ x = ((y ◇ z) ◇ z) ◇ y`
- Recursive route status: no direct `h` midpoint found.

### true_2771_2775
- Hypothesis: `x = ((y ◇ z) ◇ (x ◇ x)) ◇ y`
- Goal: `x = ((y ◇ z) ◇ (x ◇ y)) ◇ y`
- Candidate family: `right_argument_erasure_seed`
- `x = y`
  - Outer context: `fun q => (((y ◇ z) ◇ (x ◇ q)) ◇ y)`
  - Classification: `unknown`
  - One mutation from v0.9.2 shape: `false`; shapes: none
- `(x ◇ x) = (x ◇ y)`
  - Outer context: `fun q => (((y ◇ z) ◇ q) ◇ y)`
  - Classification: `argument-erasure right`
  - One mutation from v0.9.2 shape: `true`; shapes: `a ◇ a = a ◇ b` (forward), `a ◇ b = a ◇ c` (forward), `a ◇ a = a ◇ b` (reverse), `a ◇ b = a ◇ c` (reverse)
- `((y ◇ z) ◇ (x ◇ x)) = ((y ◇ z) ◇ (x ◇ y))`
  - Outer context: `fun q => (q ◇ y)`
  - Classification: `argument-erasure right`
  - One mutation from v0.9.2 shape: `true`; shapes: `a ◇ b = a ◇ c` (forward), `a ◇ b = a ◇ c` (reverse)

### true_1874_4357
- Hypothesis: `x = (x ◇ (y ◇ z)) ◇ (y ◇ w)`
- Goal: `x ◇ (y ◇ z) = x ◇ (y ◇ w)`
- Recursive route status: not eligible. rotation_context_bridge is gated to hypotheses with at most 3 variables

### true_2055_2656
- Hypothesis: `x = ((x ◇ y) ◇ x) ◇ (y ◇ z)`
- Goal: `x = ((x ◇ x) ◇ (y ◇ z)) ◇ y`
- Recursive route status: direct `h` midpoint found, but no exact smaller outer context extracted.

### true_689_1350
- Hypothesis: `x = y ◇ (x ◇ ((z ◇ x) ◇ w))`
- Goal: `x = y ◇ (((z ◇ x) ◇ x) ◇ y)`
- Recursive route status: not eligible. rotation_context_bridge is gated to hypotheses with at most 3 variables

### true_674_668
- Hypothesis: `x = y ◇ (x ◇ ((x ◇ z) ◇ z))`
- Goal: `x = y ◇ (x ◇ ((x ◇ x) ◇ z))`
- Candidate family: `right_argument_erasure_seed`
- `z = x`
  - Outer context: `fun q => (y ◇ (x ◇ ((x ◇ q) ◇ z)))`
  - Classification: `unknown`
  - One mutation from v0.9.2 shape: `false`; shapes: none
- `(x ◇ z) = (x ◇ x)`
  - Outer context: `fun q => (y ◇ (x ◇ (q ◇ z)))`
  - Classification: `argument-erasure right`
  - One mutation from v0.9.2 shape: `true`; shapes: `a ◇ a = a ◇ b` (forward), `a ◇ b = a ◇ c` (forward), `a ◇ a = a ◇ b` (reverse), `a ◇ b = a ◇ c` (reverse)
- `((x ◇ z) ◇ z) = ((x ◇ x) ◇ z)`
  - Outer context: `fun q => (y ◇ (x ◇ q))`
  - Classification: `argument-erasure left`
  - One mutation from v0.9.2 shape: `true`; shapes: `b ◇ a = c ◇ a` (forward), `(a ◇ b) ◇ c = (a ◇ d) ◇ c` (forward), `b ◇ a = c ◇ a` (reverse), `(a ◇ b) ◇ c = (a ◇ d) ◇ c` (reverse)
- `(x ◇ ((x ◇ z) ◇ z)) = (x ◇ ((x ◇ x) ◇ z))`
  - Outer context: `fun q => (y ◇ q)`
  - Classification: `argument-erasure right`
  - One mutation from v0.9.2 shape: `true`; shapes: `a ◇ b = a ◇ c` (forward), `a ◇ (b ◇ c) = a ◇ (d ◇ c)` (forward), `a ◇ b = a ◇ c` (reverse), `a ◇ (b ◇ c) = a ◇ (d ◇ c)` (reverse)

### true_1636_1839
- Hypothesis: `x = (x ◇ x) ◇ ((y ◇ x) ◇ z)`
- Goal: `x = (x ◇ (x ◇ y)) ◇ (x ◇ z)`
- Recursive route status: direct `h` midpoint found, but no exact smaller outer context extracted.

## Groups By Candidate Invariance Family

| family | count | cases |
|---|---:|---|
| `no extracted outer context` | 16 | `true_3108_4642`, `true_1167_2000`, `true_1698_555`, `true_1604_1822`, `true_2111_1755`, `true_425_1630`, `true_2061_307`, `true_1738_1258`, `true_2135_2128`, `true_1500_498`, `true_691_1976`, `true_4082_4109`, `true_1874_4357`, `true_2055_2656`, `true_689_1350`, `true_1636_1839` |
| `nested_absorption` | 4 | `true_2942_5`, `true_2860_3458`, `true_2789_898`, `true_428_3725` |
| `right_argument_erasure_seed` | 2 | `true_2771_2775`, `true_674_668` |
| `left_argument_erasure_seed` | 1 | `true_2074_2082` |
| `remaining_false_countermodel_search` | 1 | `false_1682_411` |
| `unknown` | 1 | `true_130_1759` |

## v0.9.3 Recommendation

Smallest safe target: derive additional right-argument erasure seeds after exact inner-context extraction.

- Start with inner edges matching `a ◇ a = a ◇ b` or `a ◇ b = a ◇ c` directly, because `true_2771_2775` now exposes exactly `(x ◇ x) = (x ◇ y)` under `fun q => (((y ◇ z) ◇ q) ◇ y)`.
- Reuse the existing `rinv` application machinery from v0.9.2 once a seed is proven.
- Keep the route gated behind direct `h` midpoint + exact extracted context + one emitted lemma. Do not raise broad graph caps; the remaining evidence points to missing local seed lemmas rather than missing global terms.
