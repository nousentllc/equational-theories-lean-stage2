# Claude's Parallel Attempt on ARCF-Prover Residue

Companion to Justin's ARCF-Prover (v0.7 in flight). I'm a separate track — not
the Codex run that produced v0.7. My goal here is to close as many of the v0.6
residual 31 cases as I can by hand, then sketch an alternative v0.8.

## Layout

- `handproofs/` — Lean proof files I derive for individual residual cases.
  One file per case, named `<problem_id>.lean`. Each file contains the full
  Lean wrapper (`def submission : Goal := by …`) so it can be fed to the judge
  unchanged.
- `candidates/` — JSON-formatted candidate answers in the judge's expected
  `{"verdict": ..., "code": ...}` shape, ready to splice into `solver.py`.
- `lemmas/` — Intermediate lemma library (proven absorption / projection
  identities I've derived; not always wrapped as full submissions). When a
  lemma proves useful across cases I record it once.
- `witness_search/` — Python search code + raw output for `false_1682_411`.
- `v08_solver/` — Sketch of an alternative v0.8 architecture, including
  motivating notes and a draft solver.
- `verify/` — `run_local.py` runner that drives `judge/verify.py` against the
  candidates in this folder. Use it from the repo root with `.env.judge`
  sourced.
- `notes/` — Working notes, case classification, lessons learned.

## How to verify a single proof candidate

```bash
source .env.judge
python3 claude_attempt/verify/run_local.py true_2061_307
```

This loads the problem from `examples/problems/sample_200.json`, the answer
from `claude_attempt/candidates/true_2061_307.answer.json`, and invokes the
real Lean judge.

## Status

See `notes/status.md` for the latest tally.
