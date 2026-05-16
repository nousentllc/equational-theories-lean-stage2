# Session 3: cases I attempted and what I learned

This session: 1 new accepted proof (`true_1874_4357`). Below documents the
cases I started but couldn't crack and why — the structural diagnoses are
useful for the v0.8/v0.9.x architecture.

## What worked

### `true_1874_4357` ✅ accepted

The proof pattern (two h-instances, one congrArg):

```lean
have A : x ◇ (y ◇ z) = ((x ◇ (y ◇ z)) ◇ (y ◇ z)) ◇ (y ◇ w) :=
  h (x ◇ (y ◇ z)) y z w
have B : (x ◇ (y ◇ z)) ◇ (y ◇ z) = x := (h x y z z).symm
exact A.trans (congrArg (fun t => t ◇ (y ◇ w)) B)
```

This works because the goal LHS (`x ◇ (y◇z)`) appears as a self-substitution
in h's structure. Substituting `x → goal_LHS_subterm` makes the inner term
collapse to `x` via `h x y z z` (the y-arg z-arg case).

## Cases that need >2 h-instances (and why)

### `true_2074_2082` ❌ — 3+ lemma chain needed

- Hyp: `x = ((x ◇ y) ◇ z) ◇ (y ◇ x)`
- Goal: `x = ((x ◇ y) ◇ z) ◇ (w ◇ x)`

Difference: `(y ◇ x)` → `(w ◇ x)` with fresh `w`. Attempted `h(x, w, (x◇y)◇z)`
gives `x = ((x ◇ w) ◇ ((x ◇ y) ◇ z)) ◇ (w ◇ x)`. The prefix `(x ◇ w) ◇ ((x ◇ y) ◇ z)` 
must collapse to `(x ◇ y) ◇ z` — a "left identity" lemma needed. That
sub-lemma's proof requires another nested h-instance.

### `true_3108_4642` ❌ — argument-erasure on `a ◇ x ◇ x`

- Hyp: `x = (((y ◇ x) ◇ x) ◇ z) ◇ x`
- Goal: `(x ◇ y) ◇ x = (z ◇ x) ◇ x`

Goal requires showing `(a ◇ x) ◇ x` is independent of `a` (for two specific
values). The function `a → (a ◇ x) ◇ x` must be constant. This needs a
diagonal-constancy lemma derived from the structure of h.

### `true_4082_4109` ❌ — diagonal constancy

- Hyp: `x ◇ x = ((y ◇ x) ◇ x) ◇ z`
- Goal: `x ◇ x = ((y ◇ z) ◇ z) ◇ y`

By `h(z, y, y)`: `z ◇ z = ((y ◇ z) ◇ z) ◇ y`, so goal RHS = `z ◇ z`. Goal
becomes `x ◇ x = z ◇ z` — **constant diagonal** across all magma elements!
This needs to be derived from h, which says the diagonal `a ◇ a` is expressible
as `((b ◇ a) ◇ a) ◇ c` for any b, c. Constancy follows but requires a clever
chain.

### `true_2860_3458` ❌ — right-absorption derivation

- Hyp: `x = ((x ◇ (x ◇ y)) ◇ z) ◇ z`
- Goal: `x ◇ x = x ◇ ((x ◇ y) ◇ x)`

By congrArg `x ◇ ·`, suffices `x = (x ◇ y) ◇ x` — strong right-absorption.
Setting `z := x` in h gives `((x ◇ (x ◇ y)) ◇ x) ◇ x = x` — close but has an
extra `◇ x` and the inner is `x ◇ (x ◇ y)` not `x ◇ y`. Two collapse steps
required.

### `true_674_668` ❌ — local context invariance

- Hyp: `x = y ◇ (x ◇ ((x ◇ z) ◇ z))`
- Goal: `x = y ◇ (x ◇ ((x ◇ x) ◇ z))`

Difference is `(x ◇ z)` → `(x ◇ x)` inside `((· ◇ z))`. By repeated congrArg,
suffices `x ◇ z = x ◇ x` — right-arg-invariance on `x ◇ ·`. Strong claim; needs
deep derivation.

### `true_2135_2128`, `true_2055_2656`, `true_1738_1258`, `true_2111_1755`, others ❌

All require similar "inner equality" lemmas where the substitution map is
itself deep. The v0.9.1 paper called these out as "inner-edge proof
synthesis" — exactly what's missing.

## Pattern summary

All my successful proofs (now 6 of them) follow this template:

1. Identify a subterm `S` of the goal that appears inside `h(x → S, ...)`'s
   expansion.
2. Apply h with `x → S` as the substitution. The result expresses `S` as
   a longer term `T`.
3. Find a sub-term of `T` that collapses to a goal-relevant value via
   `(h <args>).symm`.
4. Use `congrArg` (often with a one- or two-hole context) to splice the
   collapse into the goal.

The cases I can't crack have a fourth step that needs to be done first:
**prove a derived rewrite edge between two goal-relevant terms that is not
itself a direct h-instance.** This is the v0.9.1 "inner-edge bottleneck."

## Architectural takeaway for v0.10

The next solver iteration should explicitly enumerate candidate
"inner-edge" lemmas of these shapes:

- `a ◇ b = a` (right-absorption)
- `a ◇ b ◇ a = a` (sandwich-absorption)
- `(a ◇ b) ◇ c = (a ◇ c) ◇ b` (argument-swap)
- `(a ◇ b) ◇ c = (a ◇ b') ◇ c` (left-arg-invariance of `(· ◇ c)`)
- `a ◇ a = b ◇ b` (constant diagonal)
- `a ◇ b = a ◇ c` (right-arg-invariance of `a ◇ ·`)

For each, attempt a proof using existing bounded engines + one more
h-instance than v0.6's projection_absorption_schemas allowed. The
empirical evidence is that 3-h-instance chains are the bottleneck:
v0.6 had 2, my hand-proofs use 2 for solved cases, the unsolved residue
needs 3.
