# false_1682_411 Strong Constraint-Guided Search

- Hypothesis: `x = (y ◇ x) ◇ ((x ◇ x) ◇ y)`
- Goal: `x = x ◇ (x ◇ (x ◇ (x ◇ x)))`
- Domains configured: `Fin 2` through `Fin 10`.
- Search policy: stop at the first locally validated and pipeline-judge-accepted witness.
- Elapsed seconds: `79.9`
- Constraint solvers: Z3 unavailable; OR-Tools unavailable; used custom anti-goal-forced min-conflicts search.

## Result

Found a locally validated `Fin 5` countermodel.
- Goal violator: `0`
- Pipeline judge status: `accepted`
- Current solver integration check: `submissions/arcf_prover` solved `false_1682_411` as `false` with one judge call.

Table:

```python
[[4,0,3,1,2],[3,1,3,0,4],[1,0,2,4,2],[2,2,2,3,0],[0,4,3,1,1]]
```

Compact Python fragment written to `analysis/false_1682_411_table.pyfrag`.

Lean certificate:

```lean
import JudgeProblem
import JudgeDecide.DecideBang
import JudgeFinOp.MemoFinOp
open MemoFinOp

set_option maxRecDepth 1000000

def submission : Goal := by
  let m : Magma (Fin 5) := {
    op := finOpTable "[[4,0,3,1,2],[3,1,3,0,4],[1,0,2,4,2],[2,2,2,3,0],[0,4,3,1,1]]"
  }
  refine ⟨Fin 5, m, ?_⟩
  decideFin!

```

## Strategy Log

| n | strategy | checked/iterations | hyp-sat seen | best/notes | result |
|---:|---|---:|---:|---|---|
| 2 | structured_existing_affine_quadratic | 16 | 2 |  | no hit |
| 2 | anti_goal_forced_min_conflicts | 3101274 | 0 | seconds=12.0; branches=621; best_bad=2; best_branch={0: 1, 1: 1} | no hit |
| 3 | structured_existing_affine_quadratic | 19683 | 6 |  | no hit |
| 3 | anti_goal_forced_min_conflicts | 2009720 | 0 | seconds=12.0; branches=402; best_bad=1; best_branch={0: 2, 2: 1, 1: 1} | no hit |
| 4 | structured_existing_affine_quadratic | 258 | 16 |  | no hit |
| 4 | anti_goal_forced_min_conflicts | 1513923 | 0 | seconds=12.0; branches=303; best_bad=1; best_branch={0: 1, 1: 2, 2: 0} | no hit |
| 5 | structured_existing_affine_quadratic | 627 | 20 |  | no hit |
| 5 | anti_goal_forced_min_conflicts | 1714200 | 1 | seconds=60.0; branches=343; best_bad=0; best_branch={0: 4, 4: 2, 2: 3, 3: 1} | hit |
