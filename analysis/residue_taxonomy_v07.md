# ARCF-Prover v0.7 Residue Taxonomy

Inputs:
- `pipeline/results/arcf_sample200_v07.json`
- `pipeline/results/arcf_sample200_v06.json`
- `analysis/failure_report_v06.md`
- `examples/problems/sample_200.json`

No finite probes were rerun. Proof-graph notes are copied from the cached v0.6 diagnostics.

## Summary

- v0.7 unsolved cases: **30**
- Remaining true-labeled cases: **29**
- Remaining false-labeled cases: **1**
- Newly solved vs v0.6: `true_2935_3138`
- Regressions vs v0.6: **0**

`true_2935_3138` was previously clustered as `likely_projection_or_absorption` in the v0.6 report. v0.7 solved it with a goal-directed context-shift proof.

## Remaining Cases

| id | expected | eq1_id | eq2_id | residue family |
|---|---:|---:|---:|---|
| `true_2942_5` | True | 2942 | 5 | projection/direct absorption |
| `true_3108_4642` | True | 3108 | 4642 | projection |
| `true_1167_2000` | True | 1167 | 2000 | nested right absorption |
| `true_3291_3304` | True | 3291 | 3304 | congruence-context |
| `true_1698_555` | True | 1698 | 555 | nested left/tail absorption |
| `true_1604_1822` | True | 1604 | 1822 | nested right absorption |
| `true_2111_1755` | True | 2111 | 1755 | nested right absorption |
| `true_3083_3094` | True | 3083 | 3094 | context-shift |
| `true_1022_99` | True | 1022 | 99 | projection under context |
| `true_425_1630` | True | 425 | 1630 | projection under context |
| `true_2860_3458` | True | 2860 | 3458 | context-shift |
| `true_130_1759` | True | 130 | 1759 | nested right absorption |
| `true_2061_307` | True | 2061 | 307 | idempotent/nested absorption |
| `true_1738_1258` | True | 1738 | 1258 | projection plus nested absorption |
| `true_2654_2864` | True | 2654 | 2864 | nested left/tail absorption |
| `true_2789_898` | True | 2789 | 898 | mixed context-shift |
| `true_2135_2128` | True | 2135 | 2128 | mixed context-shift |
| `true_428_3725` | True | 428 | 3725 | projection/direct absorption |
| `true_1500_498` | True | 1500 | 498 | nested right absorption |
| `true_691_1976` | True | 691 | 1976 | nested right absorption |
| `true_2074_2082` | True | 2074 | 2082 | nested right absorption |
| `true_4082_4109` | True | 4082 | 4109 | congruence-context |
| `true_2771_2775` | True | 2771 | 2775 | nested left/tail absorption |
| `true_4561_4566` | True | 4561 | 4566 | congruence-context |
| `false_1682_411` | False | 1682 | 411 | missing finite countermodel |
| `true_1874_4357` | True | 1874 | 4357 | nested left/tail absorption |
| `true_2055_2656` | True | 2055 | 2656 | nested left/tail absorption |
| `true_689_1350` | True | 689 | 1350 | context-shift |
| `true_674_668` | True | 674 | 668 | context-shift |
| `true_1636_1839` | True | 1636 | 1839 | nested right absorption |

## True-Case Residue Detail

All rows below had both LHS and RHS present in the cached v0.6 proof graph, but disconnected.

| id | likely missing derived lemma | edge type | cached graph |
|---|---|---|---|
| `true_2942_5` | `∀ a b, a = b ◇ a` or `∀ a b, a ◇ b = b` | absorption/projection | lhs+rhs present; disconnected |
| `true_3108_4642` | `∀ a b, a ◇ b = b`, applied under `(· ◇ x)` | projection | lhs+rhs present; disconnected |
| `true_1167_2000` | `∀ a b c, a = b ◇ (c ◇ a)` | nested absorption | lhs+rhs present; disconnected |
| `true_3291_3304` | two paths proving `x ◇ w = w ◇ u` inside `y ◇ (z ◇ ·)` | congruence-context | lhs+rhs present; disconnected |
| `true_1698_555` | `∀ a b c, a = (b ◇ a) ◇ c` | nested absorption | lhs+rhs present; disconnected |
| `true_1604_1822` | inner rewrite from `w ◇ (x ◇ y)` to `(w ◇ w) ◇ y` under `(y ◇ z) ◇ ·` | nested absorption | lhs+rhs present; disconnected |
| `true_2111_1755` | `∀ a b c, a = b ◇ (c ◇ a)` with repeated `x` filler | nested absorption | lhs+rhs present; disconnected |
| `true_3083_3094` | swap/shift of repeated tail variables inside `(((x ◇ y) ◇ ·) ◇ ·)` | context-shift | lhs+rhs present; disconnected |
| `true_1022_99` | `∀ a b, a ◇ b = a`, applied inside `x ◇ ((·) ◇ x)` | projection | lhs+rhs present; disconnected |
| `true_425_1630` | repeated left projection collapse under nested right context | projection | lhs+rhs present; disconnected |
| `true_2860_3458` | `a = a ◇ b` / `a = b ◇ a` used to grow `x ◇ x` under context | context-shift | lhs+rhs present; disconnected |
| `true_130_1759` | `∀ a b c, a = b ◇ (c ◇ a)` | nested absorption | lhs+rhs present; disconnected |
| `true_2061_307` | `∀ a, a ◇ a = a ◇ (a ◇ a)` | nested absorption | lhs+rhs present; disconnected |
| `true_1738_1258` | left projection plus `a = b ◇ (... ◇ a)` | projection | lhs+rhs present; disconnected |
| `true_2654_2864` | `∀ a b c, a = (b ◇ a) ◇ c` | nested absorption | lhs+rhs present; disconnected |
| `true_2789_898` | mixed `a = (... ◇ a) ◇ b` and `a = b ◇ (... ◇ a)` | context-shift | lhs+rhs present; disconnected |
| `true_2135_2128` | mixed nested absorption on both sides of a product | context-shift | lhs+rhs present; disconnected |
| `true_428_3725` | `∀ a b, a = a ◇ b`, used on `a := x ◇ y` | absorption/projection | lhs+rhs present; disconnected |
| `true_1500_498` | `∀ a b c, a = b ◇ (c ◇ a)` | nested absorption | lhs+rhs present; disconnected |
| `true_691_1976` | `∀ a b c, a = b ◇ (c ◇ a)` | nested absorption | lhs+rhs present; disconnected |
| `true_2074_2082` | context replacement of `y ◇ x` by `w ◇ x` under `((x ◇ y) ◇ z) ◇ ·` | nested absorption | lhs+rhs present; disconnected |
| `true_4082_4109` | two-level equality under `((· ◇ ·) ◇ ·)` context | congruence-context | lhs+rhs present; disconnected |
| `true_2771_2775` | tail absorption changing `(x ◇ x)` to `(x ◇ y)` under fixed outer context | nested absorption | lhs+rhs present; disconnected |
| `true_4561_4566` | replace `w ◇ x` by `w ◇ y` under `(· ◇ u)` | congruence-context | lhs+rhs present; disconnected |
| `true_1874_4357` | context-invariance for `x ◇ (y ◇ ·)` after tail absorption | nested absorption | lhs+rhs present; disconnected |
| `true_2055_2656` | tail absorption moving `x` across `((· ◇ ·) ◇ ·)` | nested absorption | lhs+rhs present; disconnected |
| `true_689_1350` | direct absorption plus nested context shift under `y ◇ ·` | context-shift | lhs+rhs present; disconnected |
| `true_674_668` | direct absorption plus nested context shift under `y ◇ (x ◇ ·)` | context-shift | lhs+rhs present; disconnected |
| `true_1636_1839` | `∀ a b c, a = b ◇ (c ◇ a)` under left-nested context | nested absorption | lhs+rhs present; disconnected |

## Recurring Lemma Families

| lemma family | cases covered | example cases | candidate Lean proof shape |
|---|---:|---|---|
| Nested right absorption: `a = b ◇ (... ◇ a)` | 8 | `true_1167_2000`, `true_130_1759`, `true_1636_1839` | `have nr : ∀ (a b c : G), a = b ◇ (c ◇ a) := by intro a b c; exact <h/calc>; exact congrArg (fun t => C[t]) (nr ... )` |
| Projection/direct absorption: `a ◇ b = a`, `a ◇ b = b`, `a = b ◇ a`, `a = a ◇ b` | 6 | `true_2942_5`, `true_3108_4642`, `true_1022_99` | `have proj : ∀ (a b : G), a ◇ b = a := by intro a b; exact <h-chain>; calc C[a ◇ b] = C[a] := congrArg (fun t => C[t]) (proj a b)` |
| Context-shift / reassociation by derived absorption | 6 | `true_3083_3094`, `true_2860_3458`, `true_689_1350` | `calc C[b ◇ (a ◇ c)] = ... := <h step>; _ = C[(b ◇ a) ◇ c] := <h.symm/congrArg step>` |
| Nested left/tail absorption: `a = (... ◇ a) ◇ b` | 5 | `true_1698_555`, `true_2654_2864`, `true_2055_2656` | `have nl : ∀ (a b c : G), a = (b ◇ a) ◇ c := by intro a b c; exact <h/calc>; exact congrArg (fun t => C[t]) (nl ... )` |
| Two-level congruence-context replacement | 3 | `true_3291_3304`, `true_4082_4109`, `true_4561_4566` | `have edge : s = t := calc s = n := <path1>; _ = t := <path2>.symm; exact congrArg (fun q => C[q]) edge` |
| Idempotent/nested expansion: `a ◇ a = a ◇ (a ◇ a)` | 1 | `true_2061_307` | `have grow : ∀ a, a ◇ a = a ◇ (a ◇ a) := by intro a; exact <short calc>; exact grow x` |
| Missing false witness bank entry | 1 false | `false_1682_411` | Offline finite-magma search only; no true-proof certificate route. |

## Recommended v0.8 Targets

1. **Nested absorption lemma miner.** Add goal-seeded proof search for `a = b ◇ (... ◇ a)` and `a = (... ◇ a) ◇ b` up to depth 3, then apply the derived lemma under extracted one-hole contexts. This directly targets 13 remaining true residues and indirectly helps several context-shift cases.

2. **Two-level context-shift/congruence route.** Generalize the v0.7 `true_2935_3138` rotation proof into a bounded `C[b ◇ (a ◇ c)] ↔ C[(b ◇ a) ◇ c]` calc-chain extractor, plus common-normal-form congruence for the three context-gap cases.
