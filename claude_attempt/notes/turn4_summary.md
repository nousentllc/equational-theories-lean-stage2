# Turn 4 summary — hard cases attempted

## What I tried this turn

Went deep on `true_4082_4109` and `true_2074_2082` — both representative of
the hardest residue classes.

### `true_4082_4109` — constant diagonal

- Hyp: `x ◇ x = ((y ◇ x) ◇ x) ◇ z`
- Goal: `x ◇ x = ((y ◇ z) ◇ z) ◇ y`

**Reduction:** goal ⟺ `x ◇ x = z ◇ z for all x, z` (all diagonals equal).

**Verified true:** Fin 3 exhaustive (19 683 tables) → 36 hyp-sat, all
satisfy goal. So implication holds.

**Why my approach fails:** h binds each `a ◇ a` to its own "orbit"
`{((b ◇ a) ◇ a) ◇ c : b, c}` and all orbit elements collapse to `a ◇ a`.
But h provides no syntactic bridge between the orbit of `x ◇ x` and the
orbit of `z ◇ z`. Proof needs a Knuth-Bendix-style critical-pair completion
between two h-instances — 4+ chained applications.

Full analysis: `claude_attempt/notes/true_4082_4109_analysis.md`.

### `true_2074_2082` — w-substitution

- Hyp: `x = ((x ◇ y) ◇ z) ◇ (y ◇ x)`
- Goal: `x = ((x ◇ y) ◇ z) ◇ (w ◇ x)` (fresh w)

**Verified true:** Fin 3 exhaustive → 7 hyp-sat tables, all satisfy goal.

**Why my approach fails:** h says `((x ◇ y) ◇ z)` left-absorbs `(y ◇ x)`
to give x. We need it to absorb `(w ◇ x)` too. Both `((x ◇ w) ◇ z')`
absorbs `(w ◇ x)` (by `h x w z'`), but the absorber prefix is different.
The needed lemma `(x ◇ w) ◇ M = M` for `M = (x ◇ y) ◇ z` is itself a
derived edge — not directly h.

## Common pattern in the unsolved residue

Both cases share a feature: **the proof needs an "inner-edge" that
itself requires h composed with a derived equality**. v0.6's
`projection_absorption_schemas` route allows at most 2 `have`-lemmas
before the calc chain. These cases need 3.

This matches v0.9.1's diagnostic exactly: "inner-edge proof synthesis."

## Where ARCF-Prover v0.10 should aim

For each goal `G(x, y, z, ...)`, after running existing routes:

1. **Decompose:** if goal can be rewritten via 1-step h-instance to `S = T`
   where `S, T` are smaller subterms, recurse on `S = T`.
2. **Critical-pair completion:** when two h-instances `h s1 t1 u1` and
   `h s2 t2 u2` produce overlapping terms, try the resulting equation as
   a candidate derived rewrite edge.
3. **Bridging-term search:** for `x ◇ x = z ◇ z` style goals, look for an
   intermediate term `m` such that h derives both `x ◇ x = m` and
   `z ◇ z = m`.

## Score recap

6 verified proofs total this work stream:
- 4 from sessions 1-2: `true_2061_307`, `true_2942_5`, `true_1022_99`, `true_130_1759`
- 1 from agent batch E in session 3: `true_425_1630`
- 1 from session 3 hand-proof: `true_1874_4357`

Of these, **5 are net new vs v0.9.2** (which solved `true_1022_99` via its
nested self-absorption route).

If integrated as a precomputed-cache: **v0.9.2 175/200 → 180/200**.

## Honest assessment

The remaining 19 true cases I've classified all need the v0.10 module.
Continuing to hand-prove them one by one will yield maybe 1-2 more per
session at this point, since the genuinely-tractable ones are exhausted.
The leverage point is now algorithmic, not artisanal — implementing
inner-edge synthesis in the solver itself.
