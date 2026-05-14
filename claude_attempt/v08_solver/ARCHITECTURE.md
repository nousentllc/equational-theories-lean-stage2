# Alt v0.8 Architecture Sketch

A parallel-track proposal for the next ARCF-Prover increment, distilled from
hand-proving four of the v0.6 residual cases against the local Lean judge.

## What the residue actually needs

I solved `true_2061_307`, `true_2942_5`, `true_1022_99`, and `true_130_1759`
by hand. The proofs share a common shape that v0.6 does **not** yet
construct:

1. **Pick an h-instantiation whose substitution is itself a composed term.**
   The substitution terms my proofs needed were not just variables or
   length-1 compositions — they were `(x ◇ x) ◇ x`, `(y ◇ z)`, `(x ◇ (x ◇ x)) ◇ x`,
   even `((y ◇ (y ◇ y)) ◇ y)`. v0.6's `simple_candidate_terms` produces only
   `var | var ◇ var`. Even `calc_candidate_terms` saturates from subterms but
   often misses goal-driven compositions like "the inner first-occurrence-of-h
   instantiation."
2. **Derive an intermediate absorption lemma whose proof itself needs a
   collapse step.** For `true_2942_5` the critical lemma was
   `(y ◇ (y ◇ x)) ◇ y = y`, but proving it took two h-instances plus a
   `congrArg`-driven inner collapse. v0.6's `projection_absorption_schemas`
   route tries small absorption shapes but does not chain them through a
   compound h-instance to discharge the proof obligation.
3. **Substitute a single derived equality into multiple positions of the
   goal RHS via one `congrArg (fun t => …t…t…)` call.** This trick keeps
   the certificate under 2 KB even when the witness term repeats.

## Proposed v0.8 modules

The order below is roughly cheap → expensive; gate each via byte/depth caps
just like v0.6.

### M1. Goal-shape pattern bank (cheap, deterministic)

For every goal, before invoking any search, extract the *replacement
candidates* — pairs `(subterm_in_LHS, subterm_in_RHS)` that occupy
identical one-hole contexts. This is essentially what `goal_context_pairs`
already does in v0.6, but I'd extend it:

- Allow contexts with **two** identical holes (i.e., `fun t => f(t, t)`).
  All four of my hand-proofs used a two-hole context at some calc step.
- Allow contexts that include the goal's universally quantified variables
  as constants. This catches cases like
  `fun t => (t ◇ x) ◇ t` where `x` is a goal-level variable, not a free term.

### M2. Composed-term substitution generator

A new candidate-term enumerator that explicitly emits terms of two flavours:

- **Goal-derived compositions:** every `(a ◇ b)` where `a, b` are subterms
  of LHS_G ∪ RHS_G, then iterate one more depth.
- **H-image compositions:** evaluate `RHS_H[σ]` for σ ranging over the
  current term universe, then add those *and their subterms* back into
  the universe. Two rounds of this generates the depth-3 composites my
  proofs needed.

Cap at, say, 500 terms with size ≤ 14 and depth ≤ 5.

### M3. Intermediate-lemma prover with `have`-chain emission

Given a candidate absorption lemma `L : s = t` (proposed by M1), try to
prove `s = t` itself by:

1. Searching for a single h-instance σ with `LHS_H[σ] = s ∧ RHS_H[σ] = t`
   (or with sides swapped).
2. Searching for a *two-step* derivation via an intermediate composed
   term `m`: `s = m` by h, `m = t` by h or `congrArg`.
3. Substituting via an already-derived lemma in the local context.

If the lemma proves, emit it as `have absN : s = t := proof`. Compose at
most three such `have`s before the final `calc`.

### M4. Two-hole `congrArg` calc emitter

Replace the single-position rewriter with one that, given a sequence of
local lemmas `[L1, L2, L3]` and a goal `lhs = rhs`, tries to fold each
`Li` into a `calc` step whose function is allowed to repeat the bound
variable. `fun t => (t ◇ x) ◇ t` and `fun t => x ◇ ((x ◇ t) ◇ x)` are
the two patterns I needed most.

### M5. Symmetric-direction search

Both `s = t` and `t = s` need to be available — my `true_2942_5` proof
crucially uses `(h y y y).symm` as the seed. Track each derived equality
with both orientations from the start.

## Concrete priority for the next iteration

Tackle one residue cluster at a time:

1. **Cluster A — pure absorption `a = b ◇ a`**: cases like
   `true_2942_5`, `true_3108_4642`, `true_428_3725`. Module M1 + M3
   should clear most of these.
2. **Cluster B — nested absorption `a = b ◇ (… ◇ a)` depth ≤ 3**:
   `true_1167_2000`, `true_130_1759`, `true_2061_307`, `true_1500_498`,
   `true_2074_2082`, `true_2135_2128`, `true_1636_1839`. Module M2 + M4
   are necessary.
3. **Cluster C — congruence-context with variable mismatch**:
   `true_3291_3304`, `true_4082_4109`, `true_4561_4566`. These have the
   goal introducing fresh variables not in the hypothesis. Module M1's
   two-hole extension is the key.

## Differences from the Codex track

I deliberately keep this architecture deterministic. Where the Codex track
might prompt an LLM to propose lemma schemas, this design picks them
syntactically from the goal — and is therefore reproducible byte-for-byte
across runs. The lemma prover at M3 is the only place where search depth
matters, and it can be capped hard.

If we want to add LLM augmentation later, M1 is the right hook: have the
LLM propose additional candidate substitutions `σ : hvars → composed terms`
based on natural-language summary of the goal RHS, then validate via M3
exactly as the deterministic core does.

## Status

- `saturator.py` in this folder is a first-pass brute-force prover. It
  does pure equality-graph BFS with deep substitutions. It successfully
  finds proofs for some cases but timed out on the harder residue —
  exactly because it lacks M3-style intermediate-lemma synthesis. The
  hand-proofs in `../handproofs/` are the gold standard the v0.8 prover
  needs to match.
