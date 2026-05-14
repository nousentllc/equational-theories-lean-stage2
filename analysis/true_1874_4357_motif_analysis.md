# true_1874_4357 Proof Motif Analysis

## Verification

Source proof:

- `/Users/jc/Downloads/LandDesk/equational-theories-lean-stage2/claude_attempt/handproofs/true_1874_4357.lean`

Sample problem:

- `id`: `true_1874_4357`
- `eq1_id`: `1874`
- `eq2_id`: `4357`
- `answer`: `true`
- hypothesis: `x = (x ◇ (y ◇ z)) ◇ (y ◇ w)`
- goal: `x ◇ (y ◇ z) = x ◇ (y ◇ w)`

This exactly matches the requested hypothesis and goal.

## Lean Proof

```lean
def submission : Goal := by
  intro G _ h
  intro x y z w
  have A : x ◇ (y ◇ z) =
      ((x ◇ (y ◇ z)) ◇ (y ◇ z)) ◇ (y ◇ w) :=
    h (x ◇ (y ◇ z)) y z w
  have B : (x ◇ (y ◇ z)) ◇ (y ◇ z) = x := (h x y z z).symm
  exact A.trans (congrArg (fun t => t ◇ (y ◇ w)) B)
```

## Proof Decomposition

Local lemmas:

| name | statement | source |
| --- | --- | --- |
| `A` | `x ◇ (y ◇ z) = ((x ◇ (y ◇ z)) ◇ (y ◇ z)) ◇ (y ◇ w)` | `h (x ◇ (y ◇ z)) y z w` |
| `B` | `(x ◇ (y ◇ z)) ◇ (y ◇ z) = x` | `(h x y z z).symm` |

Uses of `h`:

1. `h (x ◇ (y ◇ z)) y z w`
   - Expands the goal LHS into a midpoint with the same right outer tail as the goal RHS.
2. `h x y z z`
   - Instantiates the hypothesis with `w := z`.
   - Its symmetric form collapses the inner prefix:
     `(x ◇ (y ◇ z)) ◇ (y ◇ z) = x`.

Congruence context:

```lean
fun t => t ◇ (y ◇ w)
```

This lifts `B` into:

```lean
((x ◇ (y ◇ z)) ◇ (y ◇ z)) ◇ (y ◇ w)
  = x ◇ (y ◇ w)
```

Transitivity/final closure:

```lean
exact A.trans (congrArg (fun t => t ◇ (y ◇ w)) B)
```

The proof is a two-step equality chain:

```lean
x ◇ (y ◇ z)
  = ((x ◇ (y ◇ z)) ◇ (y ◇ z)) ◇ (y ◇ w)   -- A
  = x ◇ (y ◇ w)                            -- congrArg over B
```

## Motif Classification

Primary motif:

- **two-lemma local-theory composition**
- More specifically: **direct-h expansion plus direct-h inner-collapse contextual lift**

Secondary interpretation:

- It resembles **right argument erasure**, because the goal erases the difference between `z` and `w` in:
  `x ◇ (y ◇ z) = x ◇ (y ◇ w)`.
- However, the proof does not derive a global erasure lemma such as:
  `∀ a b c, a ◇ b = a ◇ c`.
- Instead, it uses the hypothesis twice to create and collapse a repeated anchored prefix.

It is not primarily:

- plain projection,
- standalone idempotence,
- singleton collapse,
- broad rotation/context shift.

## Why v0.9.6 Misses It

`analysis/v096_route_audit.json` reports for `true_1874_4357`:

```text
first_failure_point: route not attempted
direct_h_midpoints: 0
exact_contexts: 0
supported_inner_edges: 0
```

That is informative because the hand proof has a compact direct `h` midpoint:

```lean
h (x ◇ (y ◇ z)) y z w
```

The missing midpoint is:

```lean
((x ◇ (y ◇ z)) ◇ (y ◇ z)) ◇ (y ◇ w)
```

Compared with the goal RHS:

```lean
x ◇ (y ◇ w)
```

these share the exact one-hole context:

```lean
fun t => t ◇ (y ◇ w)
```

with inner edge:

```lean
(x ◇ (y ◇ z)) ◇ (y ◇ z) = x
```

That inner edge is directly provable by `(h x y z z).symm`. The current v0.9.6 argument-erasure route is looking for supported erasure shapes after an already extracted outer context. This proof needs an earlier and narrower bridge:

1. find a direct `h` expansion from the goal LHS,
2. extract an exact context between the expansion RHS and the goal RHS,
3. prove the inner edge by direct `h` or `(h ...).symm`,
4. close by `trans` plus `congrArg`.

## Comparison To Remaining Failures

This motif is closest to remaining failures that already have:

- a direct `h` expansion from one side of the goal,
- a large exact context shared by the expansion midpoint and the other goal side,
- a missing inner edge that might be direct `h`, symmetric `h`, or one compact local lemma.

Likely similar but harder cases:

| case | similarity | likely extra requirement |
| --- | --- | --- |
| `true_2771_2775` | high outer-context similarity | inner edge resembles `x ◇ x = x ◇ y`; needs argument erasure |
| `true_674_668` | high outer-context similarity | inner edge is a contexted argument-erasure/collapse |
| `true_2654_2864` | similar recursive-context shape | already solved in v0.9.2 by inner-edge invariance |
| `true_2074_2082` | similar `x = C[x]` expansion shape | inner edge likely needs erasure rather than direct collapse |
| `true_3108_4642` | local-theory flavor | likely needs projection/absorption before final bridge |

The notable difference is that `true_1874_4357` has an especially cheap inner edge:

```lean
(h x y z z).symm
```

So it should be treated as an easier subcase than the broader v0.9.6 argument-erasure family.

## Candidate Solver Route

Recommended route name:

```text
direct_h_inner_collapse_context_lift
```

Narrow activation pattern:

1. Target goal is `lhs = rhs`.
2. Generate a small set of direct `h` instantiations where the hypothesis LHS becomes `lhs`.
3. For each proof `A : lhs = midpoint`, extract an exact one-hole context:
   `midpoint = C[s]` and `rhs = C[t]`.
4. Try to prove `s = t` by direct `h ...` or `(h ...).symm`.
5. Emit:

```lean
have A : <lhs> = <midpoint> := h <args1>
have B : <s> = <t> := <h args2 or (h args2).symm>
exact A.trans (congrArg (fun q => <C[q]>) B)
```

Symmetric variant:

```lean
have A : <rhs> = <midpoint> := h <args1>
have B : <s> = <t> := <h args2 or (h args2).symm>
exact (A.trans (congrArg (fun q => <C[q]>) B)).symm
```

Suggested caps:

- max direct `h` midpoint candidates: 30
- max exact contexts per midpoint: 8
- max inner direct-`h` attempts: 100
- max emitted local lemmas: 2
- max code size: current conservative gate

## Recommendation

Embed this as a narrowly gated route rather than as a one-off hardcoded proof.

The route is a small, judge-stable subcase of the existing two-lemma local-theory composer:

- one direct `h` expansion,
- one direct/symmetric `h` inner collapse,
- one exact `congrArg` lift,
- one transitivity closure.

This is lower risk than broadening argument-erasure schemas, because every generated proof step is an explicit `h` instantiation or an exact context lift. `true_1874_4357` should remain a regression exemplar for the route.

