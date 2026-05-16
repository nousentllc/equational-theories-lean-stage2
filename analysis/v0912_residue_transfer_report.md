# v0.9.12 Residue-Transfer Report

## Inputs
- current: `pipeline/results/arcf_sample200_v0912.json`
- prior: `pipeline/results/arcf_sample200_v0911.json`
- problems: `examples/problems/sample_200.json`
- solver: `submissions/arcf_prover/solver.py`
- prior_report: `analysis/v0911_local_theory_transfer_report.json`

## Delta
| run | accepted | true proofs | false countermodels | no_judge_attempt | judge_errors |
|---|---:|---:|---:|---:|---:|
| v0.9.11 | 184 | 85 | 99 | 16 | 0 |
| v0.9.12 | 185 | 86 | 99 | 15 | 0 |

- Newly solved: `true_2111_1755`
- Regressions: `none`
- `false_1682_411` remains separate from proof-side routing.

## true_2111_1755 Motif
Hypothesis: `x = ((y ◇ x) ◇ z) ◇ (y ◇ x)`

Goal: `x = (y ◇ z) ◇ ((x ◇ x) ◇ x)`

Route used: `local_theory_normalizer_nested_tail`

| local edge | source | role |
|---|---|---|
| `shiftTail` | `direct h instance: h ((x ◇ x) ◇ x) (y ◇ z) (y ◇ z)` | repeated-tail expansion of the tail T = (x◇x)◇x through the target prefix y◇z. |
| `liftTail` | `two congrArg lifts of shiftTail` | nested congrArg replacement of both tail occurrences in the h-expanded anchor. |
| `proof_core step 1` | `h x (x ◇ x) (x ◇ x)` | expand the goal anchor into the repeated-tail source form. |
| `symmetric collapse` | `(h ((y ◇ z) ◇ ((x ◇ x) ◇ x)) (((y ◇ z) ◇ ((x ◇ x) ◇ x)) ◇ (y ◇ z)) (x ◇ x)).symm` | symmetric hypothesis collapse closes the final calc. |

Proof flow:
1. Expand the repeated tail `((x ◇ x) ◇ x)` through the target prefix `(y ◇ z)` using a direct `h` instance.
2. Lift that tail replacement twice with nested `congrArg`, replacing both occurrences inside `(((x◇x)◇x)◇(x◇x))◇((x◇x)◇x)`.
3. Expand `x` into the repeated-tail source form with `h x (x ◇ x) (x ◇ x)`.
4. Use the lifted tail replacement as the middle calc step.
5. Collapse the expanded target by a symmetric hypothesis instance.

Compact accepted proof excerpt:
```lean
import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x y z
  have shiftTail : ((x ◇ x) ◇ x) = ((((y ◇ z) ◇ ((x ◇ x) ◇ x)) ◇ (y ◇ z)) ◇ ((y ◇ z) ◇ ((x ◇ x) ◇ x))) := h ((x ◇ x) ◇ x) (y ◇ z) (y ◇ z)
  have liftTail : (((x ◇ x) ◇ x) ◇ (x ◇ x)) ◇ ((x ◇ x) ◇ x) = (((((y ◇ z) ◇ ((x ◇ x) ◇ x)) ◇ (y ◇ z)) ◇ ((y ◇ z) ◇ ((x ◇ x) ◇ x))) ◇ (x ◇ x)) ◇ ((((y ◇ z) ◇ ((x ◇ x) ◇ x)) ◇ (y ◇ z)) ◇ ((y ◇ z) ◇ ((x ◇ x) ◇ x))) := by
    have left : ((x ◇ x) ◇ x) ◇ (x ◇ x) = ((((y ◇ z) ◇ ((x ◇ x) ◇ x)) ◇ (y ◇ z)) ◇ ((y ◇ z) ◇ ((x ◇ x) ◇ x))) ◇ (x ◇ x) := congrArg (fun t => t ◇ (x ◇ x)) shiftTail
    exact (congrArg (fun t => t ◇ ((x ◇ x) ◇ x)) left).trans (congrArg (fun t => (((((y ◇ z) ◇ ((x ◇ x) ◇ x)) ◇ (y ◇ z)) ◇ ((y ◇ z) ◇ ((x ◇ x) ◇ x))) ◇ (x ◇ x)) ◇ t) shiftTail)
  have proof_core : x = ((y ◇ z) ◇ ((x ◇ x) ◇ x)) := by
    calc
      x = (((x ◇ x) ◇ x) ◇ (x ◇ x)) ◇ ((x ◇ x) ◇ x) := h x (x ◇ x) (x ◇ x)
      _ = (((((y ◇ z) ◇ ((x ◇ x) ◇ x)) ◇ (y ◇ z)) ◇ ((y ◇ z) ◇ ((x ◇ x) ◇ x))) ◇ (x ◇ x)) ◇ ((((y ◇ z) ◇ ((x ◇ x) ◇ x)) ◇ (y ◇ z)) ◇ ((y ◇ z) ◇ ((x ◇ x) ◇ x))) := liftTail
      _ = ((y ◇ z) ◇ ((x ◇ x) ◇ x)) := (h ((y ◇ z) ◇ ((x ◇ x) ◇ x)) (((y ◇ z) ◇ ((x ◇ x) ◇ x)) ◇ (y ◇ z)) (x ◇ x)).symm
  exact proof_core
```

## Remaining Unsolved
- Total unsolved: 15
- True failures: 14
- False failures: `false_1682_411`

| id | closest older motif | repeated tail | nested congrArg | compact tail context | symm collapse | short calc | cluster |
|---|---|---|---|---|---|---|---|
| `true_1698_555` | two-h contextual lift | yes | yes | yes | yes | yes | `two-h contextual lift` |
| `true_2860_3458` | argument erasure / anchored projection | yes | yes | yes | no | yes | `anchored-right erasure` |
| `true_1738_1258` | local-theory normalization | yes | yes | yes | yes | yes | `lifted tail-shift collapse` |
| `true_2789_898` | rotation/context shift | no | yes | yes | yes | yes | `two-h contextual lift` |
| `true_2135_2128` | anchored-right erasure | yes | yes | yes | yes | no | `anchored-right erasure` |
| `true_1500_498` | two-h contextual lift | yes | yes | yes | no | yes | `two-h contextual lift` |
| `true_691_1976` | recursive seed-collapse | yes | yes | yes | yes | yes | `nested congrArg / tail replacement` |
| `true_2074_2082` | argument erasure / eraseL | no | yes | yes | no | yes | `anchored-right erasure` |
| `true_4082_4109` | diagonal constancy / local theory | yes | no | no | yes | no | `local-theory/idempotence/extension` |
| `true_2771_2775` | argument erasure / eraseR | yes | yes | yes | no | yes | `nested congrArg / tail replacement` |
| `true_2055_2656` | local-theory normalization | yes | yes | yes | yes | yes | `lifted tail-shift collapse` |
| `true_689_1350` | two-h contextual lift | yes | yes | yes | yes | yes | `nested congrArg / tail replacement` |
| `true_674_668` | argument erasure / context invariance | yes | yes | yes | no | yes | `anchored-right erasure` |
| `true_1636_1839` | local-theory normalization | yes | yes | yes | yes | yes | `local-theory/idempotence/extension` |

## Clusters
| likely next proof object | count | cases |
|---|---:|---|
| `anchored-right erasure` | 4 | `true_2860_3458`, `true_2135_2128`, `true_2074_2082`, `true_674_668` |
| `nested congrArg / tail replacement` | 3 | `true_691_1976`, `true_2771_2775`, `true_689_1350` |
| `two-h contextual lift` | 3 | `true_1698_555`, `true_2789_898`, `true_1500_498` |
| `lifted tail-shift collapse` | 2 | `true_1738_1258`, `true_2055_2656` |
| `local-theory/idempotence/extension` | 2 | `true_4082_4109`, `true_1636_1839` |

## Tractability Ranking
Top 5 easiest-looking targets:

| rank | id | cluster | score | implementation risk | judge-error risk | why |
|---:|---|---|---:|---|---|---|
| 1 | `true_1738_1258` | `lifted tail-shift collapse` | 9 | medium | low | Closest remaining true_2111-style case: target is x = x◇C[x] with an idempotent right tail. |
| 2 | `true_2055_2656` | `lifted tail-shift collapse` | 9 | medium | low-medium | High-value transfer target: resembles multi-local-edge calc with tail shift and symmetric collapse. |
| 3 | `true_2771_2775` | `nested congrArg / tail replacement` | 8 | medium | low-medium | The context is exact and compact; blocker is proving x◇x = x◇y, not the outer lift. |
| 4 | `true_2860_3458` | `anchored-right erasure` | 8 | medium | low-medium | Likely needs right absorption or argument erasure after a seed expansion; not a direct true_2111 tail-shift. |
| 5 | `true_689_1350` | `nested congrArg / tail replacement` | 8 | medium | low-medium | Outer y◇ context is already visible; likely needs a true_2111-like inner tail replacement after one seed. |

Top 5 hardest-looking targets:

| rank | id | cluster | score | implementation risk | judge-error risk | why |
|---:|---|---|---:|---|---|---|
| 1 | `true_4082_4109` | `local-theory/idempotence/extension` | 3 | high | medium | Likely requires constant diagonal, a different local-theory object than tail-shift collapse. |
| 2 | `true_1500_498` | `two-h contextual lift` | 5 | medium-high | medium | Fresh w◇w target suggests diagonal/argument erasure before tail replacement. |
| 3 | `true_2789_898` | `two-h contextual lift` | 5 | medium-high | medium | Needs movement of a y/z block through a nested context; tail-shift alone is not enough. |
| 4 | `true_1698_555` | `two-h contextual lift` | 6 | medium | low-medium | Shares the direct seed-plus-collapse shape, but the target context is right-nested rather than the exact repeated-tail block solved in v0.9.12. |
| 5 | `true_674_668` | `anchored-right erasure` | 6 | medium-high | medium | Outer lift exists but inner x◇z = x◇x has remained the hard edge. |

## v0.9.13 Recommendation
Recommended target: **generalize lifted tail-shift collapse for one more exact schema family**.

First structural targets: `true_1738_1258`, `true_2055_2656`, `true_689_1350`.

true_2111_1755 produced a compact, accepted proof using three h instances and nested congrArg. The closest remaining true cases still have repeated-tail replacement plus symmetric collapse, while broad erasure and diagonal-constancy cases remain higher risk.

Safety gates:
- Do not use broad automation or graph-cap increases.
- Activate only when the hypothesis and goal match an exact repeated-tail schema.
- Emit at most one tail expansion edge, one nested congrArg lift, one symmetric h collapse, and a calc of length <= 4.
- Abstain if code length exceeds the existing gate or if the exact symmetric collapse h instance is unavailable.

false_1682_411 remains separate. This proof-side report does not run or recommend mixing the targeted countermodel search into v0.9.13 proof routing.
