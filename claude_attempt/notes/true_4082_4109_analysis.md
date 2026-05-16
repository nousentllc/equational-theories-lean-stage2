# `true_4082_4109` — deep structural analysis

## Problem

- **Hypothesis** (Eq 4082): `x ◇ x = ((y ◇ x) ◇ x) ◇ z`  (∀ x, y, z)
- **Goal** (Eq 4109):       `x ◇ x = ((y ◇ z) ◇ z) ◇ y`  (∀ x, y, z)

Note: The hypothesis is *not* the standard `x = ...` shape — its LHS is `x ◇ x`,
which makes h(a, b, c) substitute as `a ◇ a = ((b ◇ a) ◇ a) ◇ c`.

## Goal reduction

By `h z y y`: `z ◇ z = ((y ◇ z) ◇ z) ◇ y`. So the goal reduces to:

> **x ◇ x = z ◇ z for all x, z.**

That is, in any magma satisfying h, all diagonals collapse to a single
element. Verified empirically: Fin 3 exhaustive (19 683 tables) finds
**36** hyp-sat tables, all satisfying the goal.

## What h gives us

For any a, b, c:
- `a ◇ a = ((b ◇ a) ◇ a) ◇ c` — diagonal of a equals "absorbed b ◇ a ◇ a by c"
- So `((b ◇ a) ◇ a) ◇ c` is **independent of b and c** (always equals `a ◇ a`)
- The element `M_b^a := (b ◇ a) ◇ a` is a "universal left absorber" producing
  `a ◇ a` regardless of right operand: `M_b^a ◇ c = a ◇ a`.

Derived facts (all directly from h):
- **(P2):** `M_b^a ◇ M_b^a = a ◇ a` — the diagonal of `M_b^a` is `a ◇ a`.
  (`h a b ((b ◇ a) ◇ a)`)
- **(K1):** `x ◇ x = ((x ◇ x) ◇ x) ◇ (z ◇ z)` — by `h x x (z ◇ z)`.
- **(K2):** `z ◇ z = ((z ◇ z) ◇ z) ◇ (x ◇ x)` — symmetric.

## The wall

Every path I tried boils down to:
- Expressing `x ◇ x` as `M_b^x ◇ (something)`
- Expressing `z ◇ z` as `M_b'^z ◇ (something)`

But `M_b^x = (b ◇ x) ◇ x` and `M_b'^z = (b' ◇ z) ◇ z` are *different terms*
in general, and h doesn't give us a way to equate them at the term level.

**Algebraic intuition:** The implication `x ◇ x = z ◇ z` is a *semantic*
consequence of h that holds in all hyp-sat models, but it's not a
*syntactic* consequence reachable by simple substitution + congruence. The
proof requires showing that two distinct h-orbits intersect — equivalent
to a Knuth-Bendix completion step that introduces a new rule from the
critical pair of h with itself.

## What a proof would need

A proof would have to derive a **bridging term** `t` such that both
`x ◇ x = t` and `z ◇ z = t` follow from h. Candidates:

- `t := ((y ◇ x) ◇ x) ◇ ((y ◇ z) ◇ z)` — doesn't work, h doesn't equate this to either side.
- `t := (x ◇ z) ◇ (z ◇ x)` — same.
- `t := (x ◇ x) ◇ (z ◇ z)` — h gives `x ◇ x = ((x ◇ x) ◇ x) ◇ (z ◇ z)`, not  `(x ◇ x) ◇ (z ◇ z) = x ◇ x`.

The proof likely requires **4+ chained h-instances** with at least one
nested-absorption rewrite. v0.9.1's "inner-edge bottleneck" diagnosis fits
this case exactly.

## What v0.10 needs

A solver routing this case correctly needs:

1. **Diagonal-pattern detection**: recognize the goal as "all diagonals
   equal" via the recasting through `h z y y`.
2. **Goal-decomposition into atomic claim**: reduce `x ◇ x = ((y ◇ z) ◇ z) ◇ y`
   to `x ◇ x = z ◇ z`.
3. **Critical-pair completion**: when two h-instances `h a b c` and
   `h a' b' c'` give equations on overlapping subterms, derive their
   critical-pair consequence. For this case the critical pair comes from
   applying h to both `M_b^a` and `M_b'^a'` and detecting the common
   normal form.

This is exactly the Knuth–Bendix completion frontier that v0.9.1 was
approaching. Without that machinery, this case (and its variants
`true_3108_4642`, `true_674_668`, others) cannot close with bounded
local proof-graph search.

## Verified empirical claim

Goal is universally true in all hyp-sat finite magmas up to Fin 3.
36 / 36 hyp-sat tables satisfy the goal. So this is not a false case —
just one that needs heavier machinery than 3-instance chains.
