# Final Two Exact-Dependency Solver-Strengthening Report

Generated: 2026-05-22

## Current State

- Full `sample_20`: 20/20, true=10, false=10, no_attempt=0, `judge_errors=0`
- Full `sample_200`: 200/200, true=100, false=100, no_attempt=0, `judge_errors=0`
- Public-exact-disabled `sample_200`: 198/200, true=98, false=100, no_attempt=2, `judge_errors=0`

Remaining public-exact-disabled losses:

- `true_2789_898`
- `true_1500_498`

Both fail by abstention in public-exact-disabled mode. There are no judge errors and no emitted failing Lean certificates.

## Case Details

| case | eq1_id | eq2_id | hypothesis | goal | exact certificate | size bytes | lets | haves | h-instantiation mentions | Z3 raw proof | proof skeleton |
|---|---:|---:|---|---|---|---:|---:|---:|---:|---|---|
| `true_2789_898` | 2789 | 898 | `x = ((y ◇ z) ◇ (y ◇ x)) ◇ z` | `x = y ◇ ((x ◇ z) ◇ (z ◇ y))` | `z3_true_2789_898_min` | 31995 | 169 | 306 | 56 | qinst=2, trans=1, monotonicity=0, rewrite=3, raw proof length=10362 | Z3 finds a short contradiction, but Lean reconstruction expands into a 306-have alias chain. The final route proves `x = t4`, where `t4 = y ◇ ((x ◇ z) ◇ (z ◇ y))`, via `x = t12 = t20 = t26 = t23 = t4`. |
| `true_1500_498` | 1500 | 498 | `x = (y ◇ x) ◇ (z ◇ (x ◇ z))` | `x = y ◇ (x ◇ (z ◇ (w ◇ w)))` | `z3_true_1500_498_min` | 33893 | 158 | 326 | 54 | qinst=2, trans=1, monotonicity=0, rewrite=4, raw proof length=10499 | Z3 again finds a short contradiction, but the Lean proof expands into a broad projection/extension chain. It explicitly uses `h w w w` and other fresh-square controls, then rewrites to `x = t4`, where `t4 = y ◇ (x ◇ (z ◇ (w ◇ w)))`. |

## Existing Route Comparison

### `true_2789_898`

**Closest high-level motif:** rotation/context bridge plus local collapse.

- Argument erasure/context bridge: weak fit. The target has an outer `y ◇ _` shape, but the inner change is not an eraseR/eraseL edge; it moves and rotates a `y/z` block around `x`.
- Seed-collapse/contextual lift: weak fit. There are many local collapses in the proof, but not a compact direct seed plus one contextual lift.
- Square-anchor/anchored erasure: no useful match.
- Tail-shift/repeated-tail corridor: no useful match after the current corridor schemas.
- Two-local-edge local-theory bridge: no useful match; the proof is not an `l4/l15`-style local package.

Potential exact schema if forced:

```text
a = ((b ◇ c) ◇ (b ◇ a)) ◇ c
⊢ a = b ◇ ((a ◇ c) ◇ (c ◇ b))
```

This schema is alpha-renamable, but the proof object is not compact or clearly reusable. A stored-template route would emit a ~32 KB proof and would behave more like another exact certificate than a private-set motif.

Decision: **maybe distillable but high risk; do not implement now.**

### `true_1500_498`

**Closest high-level motif:** broad projection/extension local theory with fresh-square target.

- Argument erasure/context bridge: poor fit. No exact-context inner edge is one of the supported erasure families.
- Seed-collapse/contextual lift: poor fit. The proof uses many local equalities rather than a bounded seed-collapse pattern.
- Square-anchor/anchored erasure: misleading partial fit because the goal contains `w◇w`; this square is a fresh target, not an anchored-square tail.
- Tail-shift/repeated-tail corridor: no match.
- Two-local-edge local-theory bridge: no match. It is broader than the compact `l4/l15` package.

Potential exact schema if forced:

```text
a = (b ◇ a) ◇ (c ◇ (a ◇ c))
⊢ a = b ◇ (a ◇ (c ◇ (d ◇ d)))
```

The additional fresh variable `d` is the main risk. A generalized route for this would likely need broad projection/extension normalization, which is exactly the kind of route that has been avoided to preserve judge stability.

Decision: **exact-certificate only.**

## Reusable Motif Assessment

Neither remaining case should be converted into a generalized route in the current solver.

`true_2789_898` has a plausible semantic motif, but the accepted Lean certificate is a large proof-chain artifact. Distilling it safely would require a new compact rotation/context lemma, not another stored-template route.

`true_1500_498` is even less suitable. Its proof depends on a fresh-variable square and broad projection/extension behavior. A route that captures it would be difficult to guard without becoming a fragile local-theory normalizer.

Recommended public-exact-disabled stopping point: **198/200 reusable core**.

Keep the final two as exact public certificate routes:

- `z3_true_2789_898_min`
- `z3_true_1500_498_min`

## If We Revisit Later

Only revisit `true_2789_898` if a substantially shorter proof skeleton is found. The desired route would need to derive a compact local rotation/context bridge, not replay the current 306-have chain.

Possible future route guard:

- Match only `a = ((b◇c)◇(b◇a))◇c`
- Goal only `a = b◇((a◇c)◇(c◇b))`
- Require a generated proof under 12 KB
- Emit a genuine local bridge lemma, not a stored 30 KB chain

Do not revisit `true_1500_498` without a new theoretical insight or proof search that finds a small projection/extension lemma. The current proof is too broad to generalize safely.

## Next Solver-Strengthening Work

The private-set work should now shift away from public exact-certificate distillation and toward robustness infrastructure.

### 1. Generated Synthetic Regression Suite

Highest priority.

Generate alpha-renamed and size-preserving variants of every generalized route schema:

- argument-erasure/context bridge
- seed-collapse/contextual lift
- square-anchor/anchored erasure
- tail-shift/repeated-tail corridor
- two-local-edge local-theory bridge

For each generated case, run with public exact disabled and assert the intended route fires. This tests whether the routes are truly structural rather than accidentally public-case-shaped.

### 2. Motif Fuzzing / Alpha-Renamed Synthetic Variants

Pair the synthetic suite with fuzzing:

- alpha-renamings
- harmless variable order changes
- mirrored nonmatching near-misses
- compound-term substitutions where guards should abstain

This is the best way to protect private-set generalization while preserving judge safety.

### 3. Route Telemetry and Ordering Optimization

Use debug-only telemetry to measure:

- guard attempts
- guard failures
- proof generation failures
- emitted certificate sizes
- route latency

Then tune route order for private-like workloads. Public exact certificates should still remain ahead in normal mode.

### 4. Certificate-Size Budgeting

Add route-level budget reporting to the ablation report:

- generated proof body bytes
- full Lean certificate bytes
- judge time
- route marker

This would catch bloat early and prevent stored-template routes from drifting into exact-certificate territory.

### 5. Stronger Finite Countermodel Search

Lower priority for this exact public sample because false side is already complete. Still valuable for hidden/private sets:

- constraint-guided finite magma search
- seeded randomized repair
- small-domain SAT/SMT encodings
- witness-bank augmentation with structural guards

This should be a separate false-side project, not mixed into the true-route motif distillation work.

## Final Recommendation

Stop public-exact distillation at **198/200** under public-exact-disabled mode.

Do not implement generalized routes for `true_2789_898` or `true_1500_498` from the current certificates. Keep them as exact public certificates and invest the next engineering pass in synthetic regression generation, motif fuzzing, telemetry, and size-budget audits.
