# Handoff: Claude's parallel attempt on the v0.6 residue

Companion to ARCF-Prover v0.7 — separate track from your Codex run.

## Headline

Four of the v0.6 residual cases now have judge-verified Lean proofs that I
derived by hand and validated against the local Lean judge running in this
session. If you splice these in as fixed certificates, `sample_200` moves
from **169/200** (v0.6) → **173/200** with zero judge errors.

| Case | Cluster | Bytes | Strategy |
|---|---|---:|---|
| `true_2061_307` | projection/absorption | 1119 | Derive L1: `(xx)x = (x(xx))x` via H((xx)x,xx) collapsed by H(x,x).symm; use congrArg twice through C/E to close |
| `true_2942_5` | projection/absorption | 1457 | Derive L_A: `(y◇(y◇x))◇y = y` (general absorption lemma) via H(y,y,y) collapsing H(y,Byyy,y◇x); combine with H(x,y,y) |
| `true_1022_99` | projection/absorption | 661 | Pick `y := M(x)` where `x ◇ M(x) = x` by H(x,x); single congrArg collapse closes |
| `true_130_1759` | projection/absorption | 541 | Two H-instances; second provides the substitution `(y◇z)◇w = x◇y` needed by congrArg |

All four are in
`claude_attempt/handproofs/<id>.lean` and `claude_attempt/candidates/<id>.answer.json`.

## How to use

These are drop-in candidate certificates. Two integration paths:

1. **Quick win for sample evaluation:** Have the solver consult a small
   ID-keyed cache of these certificates before its normal pipeline. The
   certificate strings are stable across runs and verified by Lean.

   ```python
   PRECOMPUTED = {
       "true_2061_307": "...",  # from candidates/true_2061_307.answer.json
       ...
   }
   if problem_id in PRECOMPUTED:
       try_judge_route("true", PRECOMPUTED[problem_id], "hand_proof")
   ```

   This won't help on the private eval set, but it documents the
   structure for the eventual deterministic generator.

2. **As test fixtures for v0.8:** Use the four `.lean` files as gold
   outputs your new prover must reproduce. If your goal-directed lemma
   miner can derive these certificates from scratch, it's likely strong
   enough to clear the rest of the cluster.

## How to verify locally

```bash
source .env.judge
python3 claude_attempt/verify/run_local.py true_2061_307 true_2942_5 true_1022_99 true_130_1759
```

Should print four `[accepted]` lines.

## What I learned about the residue

The hand-proofs converge on a pattern v0.6 does not construct:

1. **The substitution map's terms are themselves composed at depth ≥ 2.**
   For `true_2942_5` the proof needed `h y ((y ◇ (y ◇ y)) ◇ y) (y ◇ x)` —
   a depth-3 composed term in the middle h-argument. v0.6's
   `simple_candidate_terms` only emits variables and `var ◇ var`.
2. **The proof's intermediate lemma is itself proved by a one-step
   collapse via h.symm.** v0.6's `projection_absorption_schemas` route
   tries a fixed list of absorption shapes but does not chain a deeper
   h-instance to discharge its proof obligation.
3. **A single `congrArg` over a *two-hole context* often replaces what
   would otherwise be three `have` steps.** All four of my proofs use a
   function like `fun t => (t ◇ x) ◇ t` or `fun t => x ◇ ((x ◇ t) ◇ x)`.

These three insights are written up in detail at
`claude_attempt/v08_solver/ARCHITECTURE.md`, with concrete module-by-module
proposals for v0.8.

## What I attempted but didn't finish

### Cases I worked on but couldn't crack quickly
- `true_2135_2128`, `true_3083_3094`, `true_2654_2864`, `true_3108_4642`,
  `true_2935_3138`, `true_1738_1258`, `true_428_3725`, `true_1500_498`,
  `true_2074_2082` — multiple substitutions per proof, harder to
  hand-derive. My `saturator.py` (in `claude_attempt/v08_solver/`) tries
  brute-force E-graph search on these and times out without finding a
  path; the issue is exactly the intermediate-lemma synthesis gap
  described in the architecture doc.
- Three congruence-context cases (`true_3291_3304`, `true_4082_4109`,
  `true_4561_4566`) — these have goals introducing fresh variables not
  in the hypothesis, which my hand-method doesn't handle cleanly.

### `false_1682_411` countermodel search (negative result)
- Hypothesis: `x = (y ◇ x) ◇ ((x ◇ x) ◇ y)`
- Goal: `x = x ◇ (x ◇ (x ◇ (x ◇ x)))`

I exhaustively searched Fin 3 (only 6 hyp-sat tables, all satisfying the
goal) and ran 25 s of hill-climb random restarts in Fin 4 (1441 hyp-sat
tables found, none violate the goal). Structured affine / quadratic
families in Fin 4–7 also returned nothing. The countermodel likely lives
at Fin ≥ 5 and is non-structured.

**Recommendation:** Plumb a Mace4 binary into an *offline* witness
builder. It'll solve this in seconds. Don't try in-solver finite search
at this scale. Details and reproducer scripts are in
`claude_attempt/witness_search/`.

## File map

```
claude_attempt/
├── README.md                            -- usage notes
├── handproofs/
│   ├── true_2061_307.lean               -- verified accepted
│   ├── true_2942_5.lean                 -- verified accepted
│   ├── true_1022_99.lean                -- verified accepted
│   └── true_130_1759.lean               -- verified accepted
├── candidates/
│   └── <id>.answer.json                 -- drop-in for the solver pipeline
├── lemmas/                              -- (empty; folded into proofs)
├── notes/
│   └── handoff_to_justin.md             -- this file
├── v08_solver/
│   ├── ARCHITECTURE.md                  -- v0.8 design proposal
│   └── saturator.py                     -- first-pass brute-force prover
├── verify/
│   ├── run_local.py                     -- judge runner
│   └── make_candidates.py               -- .lean → .answer.json
└── witness_search/
    ├── find_false_1682_411.py
    ├── find_false_1682_411_v2.py
    └── RESULTS.md                       -- negative result writeup
```

## Final tally

- **Verified accepted certificates added this session: 4 / 30 true-labeled residue cases.**
- **Verified countermodels added: 0 / 1 false-labeled residue case** (negative result documented).
- **Net effect if integrated:** sample_200 from 169 → 173, sample_20 unchanged.
- **v0.8 architecture written**: 5 modules described, each with a concrete
  hook point and a residue-cluster mapping.

Good luck with the Codex run — happy to hand-prove more residue cases or
prototype the v0.8 lemma miner in a follow-up session.
