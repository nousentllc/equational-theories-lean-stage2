# ATP Proof Discovery Report

## Inputs

- Problems: `/Users/jc/Downloads/LandDesk/equational-theories-lean-stage2/examples/problems/sample_200.json`
- Results: `/Users/jc/Downloads/LandDesk/equational-theories-lean-stage2/pipeline/results/arcf_sample200_v0913.json`
- Solver: `/Users/jc/Downloads/LandDesk/equational-theories-lean-stage2/submissions/arcf_prover/solver.py`
- Export directory: `/Users/jc/Downloads/LandDesk/equational-theories-lean-stage2/analysis/remaining_true_atp_export`

## Local Prover Availability

- `prover9`: not installed
- `mace4`: not installed
- `eprover`: not installed
- `vampire`: not installed
- `z3`: not installed
- `cvc5`: not installed
- `z3_python`: `z3-solver 4.16.0`

## Result

- Cases exported: `14`
- ATP proofs found: `13`
- Lean translations produced: `0` pending manual translation

Raw Z3 proofs use a clean first-order/equational encoding: one uninterpreted sort `G`, one binary uninterpreted function `f`, the universal hypothesis as an axiom, and a skolemized disequality for the negated goal.

## Case Table

| id | eqs | motif guess | candidate local lemmas | ATP status |
|---|---:|---|---|---|
| `true_1698_555` | 1698→555 | idempotence/absorption, extension, context shift, local theory | idempotence, absorption, extension/local collapse, context bridge | z3 unsat; qinst=3; proof_len=10575 |
| `true_2860_3458` | 2860→3458 | idempotence/absorption, context shift | idempotence, absorption, context bridge | z3 unsat; qinst=2; proof_len=10391 |
| `true_1738_1258` | 1738→1258 | idempotence/absorption, extension, context shift, tail-shift, local theory | idempotence, absorption, extension/local collapse, context bridge, tail replacement | z3 unsat; qinst=2; proof_len=10483 |
| `true_2789_898` | 2789→898 | idempotence/absorption, extension, context shift, local theory | idempotence, absorption, extension/local collapse, context bridge | z3 unsat; qinst=2; proof_len=10362 |
| `true_2135_2128` | 2135→2128 | idempotence/absorption, extension, context shift, tail-shift, local theory | idempotence, absorption, extension/local collapse, context bridge, tail replacement | z3 unsat; qinst=2; proof_len=10635 |
| `true_1500_498` | 1500→498 | idempotence/absorption, extension, context shift, local theory | idempotence, absorption, extension/local collapse, context bridge | z3 unsat; qinst=2; proof_len=10499 |
| `true_691_1976` | 691→1976 | idempotence/absorption, extension, context shift, tail-shift, local theory | idempotence, absorption, extension/local collapse, context bridge, tail replacement | z3 unsat; qinst=2; proof_len=10575 |
| `true_2074_2082` | 2074→2082 | idempotence/absorption, extension, context shift, local theory | idempotence, absorption, extension/local collapse, context bridge | z3 unsat; qinst=2; proof_len=10381 |
| `true_4082_4109` | 4082→4109 | idempotence/absorption, tail-shift | idempotence, absorption, tail replacement | z3 unsat; qinst=3; proof_len=10967 |
| `true_2771_2775` | 2771→2775 | idempotence/absorption, extension, context shift, local theory | idempotence, absorption, extension/local collapse, context bridge | z3 unsat; qinst=2; proof_len=10379 |
| `true_2055_2656` | 2055→2656 | idempotence/absorption, extension, context shift, local theory | idempotence, absorption, extension/local collapse, context bridge | no proof |
| `true_689_1350` | 689→1350 | idempotence/absorption, extension, context shift, tail-shift, local theory | idempotence, absorption, extension/local collapse, context bridge, tail replacement | z3 unsat; qinst=3; proof_len=10228 |
| `true_674_668` | 674→668 | idempotence/absorption, extension, context shift, local theory | idempotence, absorption, extension/local collapse, context bridge | z3 unsat; qinst=2; proof_len=10497 |
| `true_1636_1839` | 1636→1839 | idempotence/absorption, extension, context shift, local theory | idempotence, absorption, extension/local collapse, context bridge | z3 unsat; qinst=3; proof_len=10556 |

## Raw Proof Hits

| id | tool | proof length | quant-inst | equality steps | Lean translation sketch |
|---|---|---:|---:|---|---|
| `true_689_1350` | z3_python | 10228 | 3 | trans=3, cong=2, rewrite=4 | instantiate `h` at Z3 qinst terms, then compress equality propagation into local `have` + `calc` chain |
| `true_2789_898` | z3_python | 10362 | 2 | trans=1, cong=0, rewrite=3 | instantiate `h` at Z3 qinst terms, then compress equality propagation into local `have` + `calc` chain |
| `true_2771_2775` | z3_python | 10379 | 2 | trans=4, cong=3, rewrite=3 | instantiate `h` at Z3 qinst terms, then compress equality propagation into local `have` + `calc` chain |
| `true_2074_2082` | z3_python | 10381 | 2 | trans=1, cong=0, rewrite=4 | instantiate `h` at Z3 qinst terms, then compress equality propagation into local `have` + `calc` chain |
| `true_2860_3458` | z3_python | 10391 | 2 | trans=2, cong=1, rewrite=3 | instantiate `h` at Z3 qinst terms, then compress equality propagation into local `have` + `calc` chain |
| `true_1738_1258` | z3_python | 10483 | 2 | trans=3, cong=4, rewrite=4 | instantiate `h` at Z3 qinst terms, then compress equality propagation into local `have` + `calc` chain |
| `true_674_668` | z3_python | 10497 | 2 | trans=1, cong=0, rewrite=4 | instantiate `h` at Z3 qinst terms, then compress equality propagation into local `have` + `calc` chain |
| `true_1500_498` | z3_python | 10499 | 2 | trans=1, cong=0, rewrite=4 | instantiate `h` at Z3 qinst terms, then compress equality propagation into local `have` + `calc` chain |
| `true_1636_1839` | z3_python | 10556 | 3 | trans=3, cong=2, rewrite=5 | instantiate `h` at Z3 qinst terms, then compress equality propagation into local `have` + `calc` chain |
| `true_1698_555` | z3_python | 10575 | 3 | trans=3, cong=2, rewrite=5 | instantiate `h` at Z3 qinst terms, then compress equality propagation into local `have` + `calc` chain |
| `true_691_1976` | z3_python | 10575 | 2 | trans=1, cong=0, rewrite=3 | instantiate `h` at Z3 qinst terms, then compress equality propagation into local `have` + `calc` chain |
| `true_2135_2128` | z3_python | 10635 | 2 | trans=1, cong=0, rewrite=4 | instantiate `h` at Z3 qinst terms, then compress equality propagation into local `have` + `calc` chain |
| `true_4082_4109` | z3_python | 10967 | 3 | trans=4, cong=5, rewrite=5 | instantiate `h` at Z3 qinst terms, then compress equality propagation into local `have` + `calc` chain |

## Ranked Candidates

Ranked by raw ATP proof availability first, then smaller exported equation size and motif reuse potential.

| rank | id | shortest-Lean outlook | judge stability | motif reuse | notes |
|---:|---|---|---|---|---|
| 1 | `true_1738_1258` | unknown until raw proof translation | medium | high | idempotence/absorption, extension, context shift, tail-shift, local theory |
| 2 | `true_2135_2128` | unknown until raw proof translation | medium | high | idempotence/absorption, extension, context shift, tail-shift, local theory |
| 3 | `true_691_1976` | unknown until raw proof translation | medium | high | idempotence/absorption, extension, context shift, tail-shift, local theory |
| 4 | `true_689_1350` | unknown until raw proof translation | medium | high | idempotence/absorption, extension, context shift, tail-shift, local theory |
| 5 | `true_1698_555` | unknown until raw proof translation | medium | high | idempotence/absorption, extension, context shift, local theory |
| 6 | `true_2789_898` | unknown until raw proof translation | medium | high | idempotence/absorption, extension, context shift, local theory |
| 7 | `true_1500_498` | unknown until raw proof translation | medium | high | idempotence/absorption, extension, context shift, local theory |
| 8 | `true_2074_2082` | unknown until raw proof translation | medium | high | idempotence/absorption, extension, context shift, local theory |
| 9 | `true_2771_2775` | unknown until raw proof translation | medium | high | idempotence/absorption, extension, context shift, local theory |
| 10 | `true_674_668` | unknown until raw proof translation | medium | high | idempotence/absorption, extension, context shift, local theory |
| 11 | `true_1636_1839` | unknown until raw proof translation | medium | high | idempotence/absorption, extension, context shift, local theory |
| 12 | `true_2860_3458` | unknown until raw proof translation | medium | medium | idempotence/absorption, context shift |
| 13 | `true_4082_4109` | unknown until raw proof translation | medium | medium | idempotence/absorption, tail-shift |
| 14 | `true_2055_2656` | no ATP proof yet | n/a | high | idempotence/absorption, extension, context shift, local theory |

## Translation Map

- Z3 `quant-inst` nodes correspond to concrete instantiations of the universal hypothesis `h`.
- Z3 `trans` nodes correspond to `Eq.trans` or `calc` equality chains.
- Z3 `monotonicity` nodes correspond to `congrArg` over the displayed one-hole context.
- Z3 `rewrite` nodes are mostly orientation/boolean cleanup and should be eliminated or represented by `.symm` when translating to Lean.

The most Lean-friendly proofs are the two-`quant-inst` cases with few or no `monotonicity` nodes: `true_2789_898`, `true_2074_2082`, `true_674_668`, `true_1500_498`, `true_691_1976`, `true_2135_2128`, and `true_2860_3458`.

## Recommended Solver Motif

Implement a Z3-proof-skeleton extractor for compact two-instantiation local equality chains: extract the two concrete `h` instantiations, orient them with `.symm` as needed, then close the target with a short `calc` and optional `congrArg`. Treat `true_4082_4109` as a separate diagonal-constancy/tail-shift candidate because its proof uses more congruence structure.

The only remaining ATP miss in this run is `true_2055_2656`; try a longer timeout or a native Prover9/E/Vampire install for that case.
