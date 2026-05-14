# v0.9.3 Delta And Residue Report

## Delta

| metric | v0.9.2 | v0.9.3 | delta |
|---|---:|---:|---:|
| accepted | 175 | 178 | +3 |
| true proofs | 76 | 79 | +3 |
| false countermodels | 99 | 99 | +0 |
| no judge attempt | 25 | 22 | -3 |
| judge errors | 0 | 0 | +0 |

- Newly solved: `true_2942_5`, `true_130_1759`, `true_2061_307`
- Regressions: none

## Newly Solved Motifs

| case | eq1 | eq2 | route | motif | note |
|---|---:|---:|---|---|---|
| `true_2942_5` | 2942 | 5 | `true_claude_hand_proof` | `nested absorption` | Derives y = (y◇(y◇x))◇y via a composed h-substitution and collapse, then rewrites h x y y to prove x = y◇x. |
| `true_130_1759` | 130 | 1759 | `true_claude_hand_proof` | `rotation/context bridge` | Uses h on x◇y to build the exact inner substitution, then lifts step_xy.symm through a nested context for x. |
| `true_2061_307` | 2061 | 307 | `true_claude_hand_proof` | `nested absorption` | Derives an intermediate self-expansion edge (xx)x = (x(xx))x, then lifts it with a two-hole congrArg to close xx = x(xx). |

## Remaining Unsolved

Remaining: 22 total, 21 true-labeled, 1 false-labeled.

| id | expected | eq1 | eq2 | near-miss families | outer context |
|---|---:|---:|---:|---|---:|
| `true_3108_4642` | true | 3108 | 4642 | `no extracted outer context` | false |
| `true_1167_2000` | true | 1167 | 2000 | `no extracted outer context` | false |
| `true_1698_555` | true | 1698 | 555 | `no extracted outer context` | false |
| `true_1604_1822` | true | 1604 | 1822 | `no extracted outer context` | false |
| `true_2111_1755` | true | 2111 | 1755 | `no extracted outer context` | false |
| `true_425_1630` | true | 425 | 1630 | `no extracted outer context` | false |
| `true_2860_3458` | true | 2860 | 3458 | `nested absorption` | true |
| `true_1738_1258` | true | 1738 | 1258 | `no extracted outer context` | false |
| `true_2789_898` | true | 2789 | 898 | `nested absorption` | true |
| `true_2135_2128` | true | 2135 | 2128 | `no extracted outer context` | false |
| `true_428_3725` | true | 428 | 3725 | `nested absorption` | true |
| `true_1500_498` | true | 1500 | 498 | `no extracted outer context` | false |
| `true_691_1976` | true | 691 | 1976 | `no extracted outer context` | false |
| `true_2074_2082` | true | 2074 | 2082 | `b◇a = c◇a` | true |
| `true_4082_4109` | true | 4082 | 4109 | `no extracted outer context` | false |
| `true_2771_2775` | true | 2771 | 2775 | `a◇a = a◇b`, `a◇b = a◇c` | true |
| `false_1682_411` | false | 1682 | 411 | `remaining false countermodel` | false |
| `true_1874_4357` | true | 1874 | 4357 | `no extracted outer context` | false |
| `true_2055_2656` | true | 2055 | 2656 | `no extracted outer context` | false |
| `true_689_1350` | true | 689 | 1350 | `no extracted outer context` | false |
| `true_674_668` | true | 674 | 668 | `a◇a = a◇b`, `a◇b = a◇c`, `b◇a = c◇a`, `(a◇b)◇c = (a◇d)◇c`, `a◇(b◇c) = a◇(d◇c)` | true |
| `true_1636_1839` | true | 1636 | 1839 | `no extracted outer context` | false |

## Groups By Near-Miss Family

| family | count | cases |
|---|---:|---|
| `a◇b = a◇c` | 2 | `true_2771_2775`, `true_674_668` |
| `a◇a = a◇b` | 2 | `true_2771_2775`, `true_674_668` |
| `b◇a = c◇a` | 2 | `true_2074_2082`, `true_674_668` |
| `(a◇b)◇c = (a◇d)◇c` | 1 | `true_674_668` |
| `a◇(b◇c) = a◇(d◇c)` | 1 | `true_674_668` |
| `nested absorption` | 3 | `true_2860_3458`, `true_2789_898`, `true_428_3725` |
| `no extracted outer context` | 15 | `true_3108_4642`, `true_1167_2000`, `true_1698_555`, `true_1604_1822`, `true_2111_1755`, `true_425_1630`, `true_1738_1258`, `true_2135_2128`, `true_1500_498`, `true_691_1976`, `true_4082_4109`, `true_1874_4357`, `true_2055_2656`, `true_689_1350`, `true_1636_1839` |
| `remaining false countermodel` | 1 | `false_1682_411` |

## Right-Argument Invariance Status

v0.9.3 did **not** exhaust the right-argument invariance family.
Remaining right-argument invariance cases: `true_2771_2775`, `true_674_668`.
The current solver can apply `rinv` once a seed is available, but these remaining cases still need a deterministic way to prove the seed itself under their hypotheses.

## v0.9.4 Recommendation

Smallest safe target: generalize the Claude hand-proof pattern into a local intermediate-lemma miner for nested absorption seeds.

- Start with `true_2942_5`-style proofs: composed `h` substitutions, one local collapse via `h.symm`, then a final `congrArg` rewrite.
- Keep it gated behind exact extracted local edges and at most two `h` instances plus one `congrArg`; do not raise broad graph caps.
- This also gives a path toward the remaining right-argument invariance cases, because `true_2771_2775` and `true_674_668` appear blocked on proving the erasure seed, not on applying it.
