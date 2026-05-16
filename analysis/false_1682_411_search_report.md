# false_1682_411 Targeted Countermodel Search

- Hypothesis: `x = (y ◇ x) ◇ ((x ◇ x) ◇ y)`
- Goal: `x = x ◇ (x ◇ (x ◇ (x ◇ x)))`
- Domains searched: `Fin 2` through `Fin 8`
- Elapsed seconds: `163.9`

## Result

No finite countermodel was found within the configured offline budgets.

`analysis/false_1682_411_table.pyfrag` was written as `None`.

## Strategy Log

Note: for `Fin 2` and `Fin 3`, the solver candidate generator already
includes exhaustive table enumeration. The later `exhaustive` rows are
therefore deduplicated to zero additional tables.

| n | strategy | checked/trials/nodes | hyp-sat seen | best/notes | result |
|---:|---|---:|---:|---|---|
| 2 | structured | 16 | 2 |  | no hit |
| 2 | exhaustive | 0 | 0 | complete | no hit |
| 2 | backtracking_partial_completion | 11 | 0 | best_assigned=4 | no hit |
| 2 | random_repair:pure:seed=1682 | 26520 | 134424 | best_score=4/4 | no hit |
| 2 | random_repair:pure:seed=411 | 25801 | 131414 | best_score=4/4 | no hit |
| 2 | random_repair:pure:seed=2026 | 26237 | 133621 | best_score=4/4 | no hit |
| 2 | random_repair:pure:seed=314159 | 26370 | 134088 | best_score=4/4 | no hit |
| 2 | random_repair:pure:seed=271828 | 26247 | 133714 | best_score=4/4 | no hit |
| 2 | random_repair:idempotent:seed=1682 | 22261 | 140260 | best_score=4/4 | no hit |
| 2 | random_repair:idempotent:seed=411 | 22211 | 139781 | best_score=4/4 | no hit |
| 2 | random_repair:idempotent:seed=2026 | 22242 | 139726 | best_score=4/4 | no hit |
| 2 | random_repair:idempotent:seed=314159 | 22296 | 140326 | best_score=4/4 | no hit |
| 2 | random_repair:idempotent:seed=271828 | 22348 | 140650 | best_score=4/4 | no hit |
| 2 | random_repair:left_projection_biased:seed=1682 | 23356 | 135502 | best_score=4/4 | no hit |
| 2 | random_repair:left_projection_biased:seed=411 | 23335 | 135632 | best_score=4/4 | no hit |
| 2 | random_repair:left_projection_biased:seed=2026 | 23309 | 135400 | best_score=4/4 | no hit |
| 2 | random_repair:left_projection_biased:seed=314159 | 23316 | 135364 | best_score=4/4 | no hit |
| 2 | random_repair:left_projection_biased:seed=271828 | 23305 | 135145 | best_score=4/4 | no hit |
| 2 | random_repair:right_projection_biased:seed=1682 | 23131 | 139988 | best_score=4/4 | no hit |
| 2 | random_repair:right_projection_biased:seed=411 | 23102 | 140197 | best_score=4/4 | no hit |
| 2 | random_repair:right_projection_biased:seed=2026 | 23096 | 139623 | best_score=4/4 | no hit |
| 2 | random_repair:right_projection_biased:seed=314159 | 23056 | 139745 | best_score=4/4 | no hit |
| 2 | random_repair:right_projection_biased:seed=271828 | 23019 | 139561 | best_score=4/4 | no hit |
| 2 | random_repair:left_zero_biased:seed=1682 | 22341 | 132391 | best_score=4/4 | no hit |
| 2 | random_repair:left_zero_biased:seed=411 | 22391 | 132629 | best_score=4/4 | no hit |
| 2 | random_repair:left_zero_biased:seed=2026 | 22353 | 132841 | best_score=4/4 | no hit |
| 2 | random_repair:left_zero_biased:seed=314159 | 22457 | 133298 | best_score=4/4 | no hit |
| 2 | random_repair:left_zero_biased:seed=271828 | 22420 | 132837 | best_score=4/4 | no hit |
| 2 | random_repair:right_zero_biased:seed=1682 | 22156 | 139017 | best_score=4/4 | no hit |
| 2 | random_repair:right_zero_biased:seed=411 | 22151 | 138966 | best_score=4/4 | no hit |
| 2 | random_repair:right_zero_biased:seed=2026 | 22149 | 139331 | best_score=4/4 | no hit |
| 2 | random_repair:right_zero_biased:seed=314159 | 22185 | 139051 | best_score=4/4 | no hit |
| 2 | random_repair:right_zero_biased:seed=271828 | 22172 | 139343 | best_score=4/4 | no hit |
| 3 | structured | 19683 | 6 |  | no hit |
| 3 | exhaustive | 0 | 0 | complete | no hit |
| 3 | backtracking_partial_completion | 167 | 0 | best_assigned=9 | no hit |
| 3 | random_repair:pure:seed=1682 | 8104 | 16925 | best_score=9/9 | no hit |
| 3 | random_repair:pure:seed=411 | 8101 | 17016 | best_score=9/9 | no hit |
| 3 | random_repair:pure:seed=2026 | 8116 | 16754 | best_score=9/9 | no hit |
| 3 | random_repair:pure:seed=314159 | 8121 | 16418 | best_score=9/9 | no hit |
| 3 | random_repair:pure:seed=271828 | 8041 | 17769 | best_score=9/9 | no hit |
| 3 | random_repair:idempotent:seed=1682 | 7587 | 29622 | best_score=9/9 | no hit |
| 3 | random_repair:idempotent:seed=411 | 7510 | 29715 | best_score=9/9 | no hit |
| 3 | random_repair:idempotent:seed=2026 | 7589 | 29586 | best_score=9/9 | no hit |
| 3 | random_repair:idempotent:seed=314159 | 7552 | 29984 | best_score=9/9 | no hit |
| 3 | random_repair:idempotent:seed=271828 | 7618 | 29358 | best_score=9/9 | no hit |
| 3 | random_repair:left_projection_biased:seed=1682 | 7855 | 19995 | best_score=9/9 | no hit |
| 3 | random_repair:left_projection_biased:seed=411 | 7870 | 19684 | best_score=9/9 | no hit |
| 3 | random_repair:left_projection_biased:seed=2026 | 7913 | 19558 | best_score=9/9 | no hit |
| 3 | random_repair:left_projection_biased:seed=314159 | 7846 | 20051 | best_score=9/9 | no hit |
| 3 | random_repair:left_projection_biased:seed=271828 | 7873 | 19864 | best_score=9/9 | no hit |
| 3 | random_repair:right_projection_biased:seed=1682 | 8226 | 17467 | best_score=9/9 | no hit |
| 3 | random_repair:right_projection_biased:seed=411 | 8238 | 17153 | best_score=9/9 | no hit |
| 3 | random_repair:right_projection_biased:seed=2026 | 8197 | 17448 | best_score=9/9 | no hit |
| 3 | random_repair:right_projection_biased:seed=314159 | 8324 | 16530 | best_score=9/9 | no hit |
| 3 | random_repair:right_projection_biased:seed=271828 | 8260 | 17454 | best_score=9/9 | no hit |
| 3 | random_repair:left_zero_biased:seed=1682 | 7742 | 18769 | best_score=9/9 | no hit |
| 3 | random_repair:left_zero_biased:seed=411 | 7724 | 18798 | best_score=9/9 | no hit |
| 3 | random_repair:left_zero_biased:seed=2026 | 7731 | 18572 | best_score=9/9 | no hit |
| 3 | random_repair:left_zero_biased:seed=314159 | 7732 | 18194 | best_score=9/9 | no hit |
| 3 | random_repair:left_zero_biased:seed=271828 | 7773 | 18459 | best_score=9/9 | no hit |
| 3 | random_repair:right_zero_biased:seed=1682 | 7694 | 19018 | best_score=9/9 | no hit |
| 3 | random_repair:right_zero_biased:seed=411 | 7595 | 20268 | best_score=9/9 | no hit |
| 3 | random_repair:right_zero_biased:seed=2026 | 7567 | 20233 | best_score=9/9 | no hit |
| 3 | random_repair:right_zero_biased:seed=314159 | 7645 | 19708 | best_score=9/9 | no hit |
| 3 | random_repair:right_zero_biased:seed=271828 | 7593 | 20222 | best_score=9/9 | no hit |
| 4 | structured | 258 | 16 |  | no hit |
| 4 | backtracking_partial_completion | 11314 | 0 | best_assigned=16 | no hit |
| 4 | random_repair:pure:seed=1682 | 2059 | 1813 | best_score=16/16 | no hit |
| 4 | random_repair:pure:seed=411 | 2036 | 1930 | best_score=16/16 | no hit |
| 4 | random_repair:pure:seed=2026 | 2049 | 1597 | best_score=16/16 | no hit |
| 4 | random_repair:pure:seed=314159 | 2050 | 2026 | best_score=16/16 | no hit |
| 4 | random_repair:pure:seed=271828 | 2051 | 1538 | best_score=16/16 | no hit |
| 4 | random_repair:idempotent:seed=1682 | 2151 | 6552 | best_score=16/16 | no hit |
| 4 | random_repair:idempotent:seed=411 | 2163 | 5556 | best_score=16/16 | no hit |
| 4 | random_repair:idempotent:seed=2026 | 2140 | 6247 | best_score=16/16 | no hit |
| 4 | random_repair:idempotent:seed=314159 | 2161 | 5902 | best_score=16/16 | no hit |
| 4 | random_repair:idempotent:seed=271828 | 2145 | 6070 | best_score=16/16 | no hit |
| 4 | random_repair:left_projection_biased:seed=1682 | 2139 | 1346 | best_score=16/16 | no hit |
| 4 | random_repair:left_projection_biased:seed=411 | 2136 | 1484 | best_score=16/16 | no hit |
| 4 | random_repair:left_projection_biased:seed=2026 | 2147 | 1292 | best_score=16/16 | no hit |
| 4 | random_repair:left_projection_biased:seed=314159 | 2170 | 1326 | best_score=16/16 | no hit |
| 4 | random_repair:left_projection_biased:seed=271828 | 2136 | 1502 | best_score=16/16 | no hit |
| 4 | random_repair:right_projection_biased:seed=1682 | 2190 | 1359 | best_score=16/16 | no hit |
| 4 | random_repair:right_projection_biased:seed=411 | 2198 | 1338 | best_score=16/16 | no hit |
| 4 | random_repair:right_projection_biased:seed=2026 | 2199 | 1487 | best_score=16/16 | no hit |
| 4 | random_repair:right_projection_biased:seed=314159 | 2198 | 1144 | best_score=16/16 | no hit |
| 4 | random_repair:right_projection_biased:seed=271828 | 2199 | 1180 | best_score=16/16 | no hit |
| 4 | random_repair:left_zero_biased:seed=1682 | 2008 | 1228 | best_score=16/16 | no hit |
| 4 | random_repair:left_zero_biased:seed=411 | 1997 | 1574 | best_score=16/16 | no hit |
| 4 | random_repair:left_zero_biased:seed=2026 | 2033 | 1259 | best_score=16/16 | no hit |
| 4 | random_repair:left_zero_biased:seed=314159 | 2025 | 1327 | best_score=16/16 | no hit |
| 4 | random_repair:left_zero_biased:seed=271828 | 2036 | 1091 | best_score=16/16 | no hit |
| 4 | random_repair:right_zero_biased:seed=1682 | 1993 | 2141 | best_score=16/16 | no hit |
| 4 | random_repair:right_zero_biased:seed=411 | 2020 | 1759 | best_score=16/16 | no hit |
| 4 | random_repair:right_zero_biased:seed=2026 | 2011 | 1406 | best_score=16/16 | no hit |
| 4 | random_repair:right_zero_biased:seed=314159 | 2012 | 1697 | best_score=16/16 | no hit |
| 4 | random_repair:right_zero_biased:seed=271828 | 2030 | 1900 | best_score=16/16 | no hit |
| 5 | structured | 627 | 20 |  | no hit |
| 5 | backtracking_partial_completion | 45996 | 0 | best_assigned=23 | no hit |
| 5 | random_repair:pure:seed=1682 | 628 | 100 | best_score=25/25 | no hit |
| 5 | random_repair:pure:seed=411 | 607 | 0 | best_score=24/25 | no hit |
| 5 | random_repair:pure:seed=2026 | 643 | 101 | best_score=25/25 | no hit |
| 5 | random_repair:pure:seed=314159 | 623 | 29 | best_score=25/25 | no hit |
| 5 | random_repair:pure:seed=271828 | 621 | 123 | best_score=25/25 | no hit |
| 5 | random_repair:idempotent:seed=1682 | 707 | 1031 | best_score=25/25 | no hit |
| 5 | random_repair:idempotent:seed=411 | 712 | 474 | best_score=25/25 | no hit |
| 5 | random_repair:idempotent:seed=2026 | 702 | 513 | best_score=25/25 | no hit |
| 5 | random_repair:idempotent:seed=314159 | 704 | 848 | best_score=25/25 | no hit |
| 5 | random_repair:idempotent:seed=271828 | 703 | 596 | best_score=25/25 | no hit |
| 5 | random_repair:left_projection_biased:seed=1682 | 684 | 0 | best_score=24/25 | no hit |
| 5 | random_repair:left_projection_biased:seed=411 | 682 | 35 | best_score=25/25 | no hit |
| 5 | random_repair:left_projection_biased:seed=2026 | 677 | 77 | best_score=25/25 | no hit |
| 5 | random_repair:left_projection_biased:seed=314159 | 677 | 85 | best_score=25/25 | no hit |
| 5 | random_repair:left_projection_biased:seed=271828 | 674 | 60 | best_score=25/25 | no hit |
| 5 | random_repair:right_projection_biased:seed=1682 | 672 | 0 | best_score=24/25 | no hit |
| 5 | random_repair:right_projection_biased:seed=411 | 676 | 130 | best_score=25/25 | no hit |
| 5 | random_repair:right_projection_biased:seed=2026 | 685 | 0 | best_score=24/25 | no hit |
| 5 | random_repair:right_projection_biased:seed=314159 | 666 | 106 | best_score=25/25 | no hit |
| 5 | random_repair:right_projection_biased:seed=271828 | 677 | 65 | best_score=25/25 | no hit |
| 5 | random_repair:left_zero_biased:seed=1682 | 623 | 34 | best_score=25/25 | no hit |
| 5 | random_repair:left_zero_biased:seed=411 | 612 | 36 | best_score=25/25 | no hit |
| 5 | random_repair:left_zero_biased:seed=2026 | 615 | 0 | best_score=24/25 | no hit |
| 5 | random_repair:left_zero_biased:seed=314159 | 618 | 31 | best_score=25/25 | no hit |
| 5 | random_repair:left_zero_biased:seed=271828 | 613 | 69 | best_score=25/25 | no hit |
| 5 | random_repair:right_zero_biased:seed=1682 | 620 | 77 | best_score=25/25 | no hit |
| 5 | random_repair:right_zero_biased:seed=411 | 619 | 32 | best_score=25/25 | no hit |
| 5 | random_repair:right_zero_biased:seed=2026 | 608 | 95 | best_score=25/25 | no hit |
| 5 | random_repair:right_zero_biased:seed=314159 | 603 | 93 | best_score=25/25 | no hit |
| 5 | random_repair:right_zero_biased:seed=271828 | 609 | 177 | best_score=25/25 | no hit |
| 6 | structured | 1298 | 0 |  | no hit |
| 6 | backtracking_partial_completion | 18089 | 0 | best_assigned=23 | no hit |
| 6 | random_repair:pure:seed=1682 | 237 | 0 | best_score=34/36 | no hit |
| 6 | random_repair:pure:seed=411 | 235 | 0 | best_score=33/36 | no hit |
| 6 | random_repair:pure:seed=2026 | 235 | 0 | best_score=33/36 | no hit |
| 6 | random_repair:pure:seed=314159 | 239 | 0 | best_score=33/36 | no hit |
| 6 | random_repair:pure:seed=271828 | 244 | 0 | best_score=34/36 | no hit |
| 6 | random_repair:idempotent:seed=1682 | 266 | 0 | best_score=35/36 | no hit |
| 6 | random_repair:idempotent:seed=411 | 271 | 106 | best_score=36/36 | no hit |
| 6 | random_repair:idempotent:seed=2026 | 270 | 0 | best_score=35/36 | no hit |
| 6 | random_repair:idempotent:seed=314159 | 269 | 0 | best_score=35/36 | no hit |
| 6 | random_repair:idempotent:seed=271828 | 265 | 0 | best_score=35/36 | no hit |
| 6 | random_repair:left_projection_biased:seed=1682 | 257 | 0 | best_score=35/36 | no hit |
| 6 | random_repair:left_projection_biased:seed=411 | 255 | 0 | best_score=35/36 | no hit |
| 6 | random_repair:left_projection_biased:seed=2026 | 256 | 0 | best_score=34/36 | no hit |
| 6 | random_repair:left_projection_biased:seed=314159 | 258 | 0 | best_score=35/36 | no hit |
| 6 | random_repair:left_projection_biased:seed=271828 | 259 | 0 | best_score=35/36 | no hit |
| 6 | random_repair:right_projection_biased:seed=1682 | 257 | 0 | best_score=34/36 | no hit |
| 6 | random_repair:right_projection_biased:seed=411 | 248 | 0 | best_score=34/36 | no hit |
| 6 | random_repair:right_projection_biased:seed=2026 | 249 | 0 | best_score=34/36 | no hit |
| 6 | random_repair:right_projection_biased:seed=314159 | 257 | 0 | best_score=35/36 | no hit |
| 6 | random_repair:right_projection_biased:seed=271828 | 257 | 0 | best_score=34/36 | no hit |
| 6 | random_repair:left_zero_biased:seed=1682 | 235 | 0 | best_score=35/36 | no hit |
| 6 | random_repair:left_zero_biased:seed=411 | 237 | 0 | best_score=34/36 | no hit |
| 6 | random_repair:left_zero_biased:seed=2026 | 234 | 0 | best_score=34/36 | no hit |
| 6 | random_repair:left_zero_biased:seed=314159 | 226 | 0 | best_score=35/36 | no hit |
| 6 | random_repair:left_zero_biased:seed=271828 | 233 | 0 | best_score=33/36 | no hit |
| 6 | random_repair:right_zero_biased:seed=1682 | 228 | 0 | best_score=35/36 | no hit |
| 6 | random_repair:right_zero_biased:seed=411 | 230 | 0 | best_score=35/36 | no hit |
| 6 | random_repair:right_zero_biased:seed=2026 | 230 | 0 | best_score=35/36 | no hit |
| 6 | random_repair:right_zero_biased:seed=314159 | 230 | 0 | best_score=33/36 | no hit |
| 6 | random_repair:right_zero_biased:seed=271828 | 232 | 0 | best_score=35/36 | no hit |
| 7 | structured | 2403 | 0 |  | no hit |
| 7 | backtracking_partial_completion | 9303 | 0 | best_assigned=24 | no hit |
| 7 | random_repair:pure:seed=1682 | 103 | 0 | best_score=45/49 | no hit |
| 7 | random_repair:pure:seed=411 | 104 | 0 | best_score=43/49 | no hit |
| 7 | random_repair:pure:seed=2026 | 108 | 0 | best_score=44/49 | no hit |
| 7 | random_repair:pure:seed=314159 | 109 | 0 | best_score=45/49 | no hit |
| 7 | random_repair:pure:seed=271828 | 105 | 0 | best_score=46/49 | no hit |
| 7 | random_repair:idempotent:seed=1682 | 116 | 0 | best_score=47/49 | no hit |
| 7 | random_repair:idempotent:seed=411 | 118 | 0 | best_score=48/49 | no hit |
| 7 | random_repair:idempotent:seed=2026 | 122 | 0 | best_score=46/49 | no hit |
| 7 | random_repair:idempotent:seed=314159 | 116 | 0 | best_score=48/49 | no hit |
| 7 | random_repair:idempotent:seed=271828 | 119 | 0 | best_score=46/49 | no hit |
| 7 | random_repair:left_projection_biased:seed=1682 | 112 | 0 | best_score=46/49 | no hit |
| 7 | random_repair:left_projection_biased:seed=411 | 111 | 0 | best_score=45/49 | no hit |
| 7 | random_repair:left_projection_biased:seed=2026 | 113 | 0 | best_score=46/49 | no hit |
| 7 | random_repair:left_projection_biased:seed=314159 | 112 | 0 | best_score=45/49 | no hit |
| 7 | random_repair:left_projection_biased:seed=271828 | 117 | 0 | best_score=44/49 | no hit |
| 7 | random_repair:right_projection_biased:seed=1682 | 106 | 0 | best_score=46/49 | no hit |
| 7 | random_repair:right_projection_biased:seed=411 | 112 | 0 | best_score=46/49 | no hit |
| 7 | random_repair:right_projection_biased:seed=2026 | 113 | 0 | best_score=46/49 | no hit |
| 7 | random_repair:right_projection_biased:seed=314159 | 111 | 0 | best_score=45/49 | no hit |
| 7 | random_repair:right_projection_biased:seed=271828 | 107 | 0 | best_score=46/49 | no hit |
| 7 | random_repair:left_zero_biased:seed=1682 | 102 | 0 | best_score=44/49 | no hit |
| 7 | random_repair:left_zero_biased:seed=411 | 102 | 0 | best_score=45/49 | no hit |
| 7 | random_repair:left_zero_biased:seed=2026 | 100 | 0 | best_score=44/49 | no hit |
| 7 | random_repair:left_zero_biased:seed=314159 | 99 | 0 | best_score=46/49 | no hit |
| 7 | random_repair:left_zero_biased:seed=271828 | 97 | 0 | best_score=44/49 | no hit |
| 7 | random_repair:right_zero_biased:seed=1682 | 102 | 0 | best_score=46/49 | no hit |
| 7 | random_repair:right_zero_biased:seed=411 | 101 | 0 | best_score=48/49 | no hit |
| 7 | random_repair:right_zero_biased:seed=2026 | 102 | 0 | best_score=45/49 | no hit |
| 7 | random_repair:right_zero_biased:seed=314159 | 96 | 0 | best_score=46/49 | no hit |
| 7 | random_repair:right_zero_biased:seed=271828 | 95 | 0 | best_score=47/49 | no hit |
| 8 | structured | 4098 | 0 |  | no hit |
| 8 | backtracking_partial_completion | 4701 | 0 | best_assigned=28 | no hit |
| 8 | random_repair:pure:seed=1682 | 48 | 0 | best_score=53/64 | no hit |
| 8 | random_repair:pure:seed=411 | 50 | 0 | best_score=53/64 | no hit |
| 8 | random_repair:pure:seed=2026 | 51 | 0 | best_score=50/64 | no hit |
| 8 | random_repair:pure:seed=314159 | 51 | 0 | best_score=57/64 | no hit |
| 8 | random_repair:pure:seed=271828 | 50 | 0 | best_score=53/64 | no hit |
| 8 | random_repair:idempotent:seed=1682 | 56 | 0 | best_score=62/64 | no hit |
| 8 | random_repair:idempotent:seed=411 | 57 | 0 | best_score=62/64 | no hit |
| 8 | random_repair:idempotent:seed=2026 | 57 | 0 | best_score=62/64 | no hit |
| 8 | random_repair:idempotent:seed=314159 | 60 | 0 | best_score=62/64 | no hit |
| 8 | random_repair:idempotent:seed=271828 | 60 | 0 | best_score=60/64 | no hit |
| 8 | random_repair:left_projection_biased:seed=1682 | 51 | 0 | best_score=62/64 | no hit |
| 8 | random_repair:left_projection_biased:seed=411 | 56 | 0 | best_score=56/64 | no hit |
| 8 | random_repair:left_projection_biased:seed=2026 | 53 | 0 | best_score=57/64 | no hit |
| 8 | random_repair:left_projection_biased:seed=314159 | 54 | 0 | best_score=57/64 | no hit |
| 8 | random_repair:left_projection_biased:seed=271828 | 55 | 0 | best_score=57/64 | no hit |
| 8 | random_repair:right_projection_biased:seed=1682 | 54 | 0 | best_score=56/64 | no hit |
| 8 | random_repair:right_projection_biased:seed=411 | 53 | 0 | best_score=58/64 | no hit |
| 8 | random_repair:right_projection_biased:seed=2026 | 54 | 0 | best_score=59/64 | no hit |
| 8 | random_repair:right_projection_biased:seed=314159 | 52 | 0 | best_score=57/64 | no hit |
| 8 | random_repair:right_projection_biased:seed=271828 | 53 | 0 | best_score=58/64 | no hit |
| 8 | random_repair:left_zero_biased:seed=1682 | 53 | 0 | best_score=54/64 | no hit |
| 8 | random_repair:left_zero_biased:seed=411 | 48 | 0 | best_score=54/64 | no hit |
| 8 | random_repair:left_zero_biased:seed=2026 | 53 | 0 | best_score=57/64 | no hit |
| 8 | random_repair:left_zero_biased:seed=314159 | 51 | 0 | best_score=57/64 | no hit |
| 8 | random_repair:left_zero_biased:seed=271828 | 50 | 0 | best_score=54/64 | no hit |
| 8 | random_repair:right_zero_biased:seed=1682 | 49 | 0 | best_score=60/64 | no hit |
| 8 | random_repair:right_zero_biased:seed=411 | 48 | 0 | best_score=54/64 | no hit |
| 8 | random_repair:right_zero_biased:seed=2026 | 52 | 0 | best_score=57/64 | no hit |
| 8 | random_repair:right_zero_biased:seed=314159 | 49 | 0 | best_score=56/64 | no hit |
| 8 | random_repair:right_zero_biased:seed=271828 | 49 | 0 | best_score=53/64 | no hit |
