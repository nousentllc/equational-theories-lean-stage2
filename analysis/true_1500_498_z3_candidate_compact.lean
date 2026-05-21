import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x
  intro y
  intro z
  intro w
  let t1 : G := w ◇ w
  let t2 : G := z ◇ t1
  let t3 : G := x ◇ t2
  let t4 : G := y ◇ t3
  let t5 : G := w ◇ t1
  let t6 : G := t1 ◇ t5
  let t7 : G := t6 ◇ x
  let t8 : G := t2 ◇ t6
  let t9 : G := t6 ◇ t8
  let t10 : G := t3 ◇ t9
  let t11 : G := x ◇ t10
  let t12 : G := t10 ◇ t11
  let t13 : G := t7 ◇ t12
  let t14 : G := t3 ◇ t3
  let t15 : G := t13 ◇ t7
  let t16 : G := t7 ◇ t6
  let t17 : G := t6 ◇ t16
  let t18 : G := t15 ◇ t17
  let t19 : G := x ◇ t7
  let t20 : G := t6 ◇ t19
  let t21 : G := t19 ◇ t7
  let t22 : G := t7 ◇ t21
  let t23 : G := t20 ◇ t22
  let t24 : G := t13 ◇ t19
  let t25 : G := t1 ◇ t3
  let t26 : G := t3 ◇ t14
  let t27 : G := t25 ◇ t26
  let t28 : G := t19 ◇ t27
  let t29 : G := t27 ◇ t28
  let t30 : G := t24 ◇ t29
  let t31 : G := t6 ◇ t13
  let t32 : G := t13 ◇ t31
  let t33 : G := t16 ◇ t32
  let t34 : G := t13 ◇ t27
  let t35 : G := t27 ◇ t34
  let t36 : G := t31 ◇ t35
  let t37 : G := t10 ◇ t6
  let t38 : G := t6 ◇ t27
  let t39 : G := t27 ◇ t38
  let t40 : G := t37 ◇ t39
  let t41 : G := t10 ◇ t39
  let t42 : G := t39 ◇ t27
  let t43 : G := t27 ◇ t42
  let t44 : G := t41 ◇ t43
  let t45 : G := z ◇ t6
  let t46 : G := t45 ◇ t39
  let t47 : G := t1 ◇ t6
  let t48 : G := t6 ◇ t1
  let t49 : G := t1 ◇ t48
  let t50 : G := t47 ◇ t49
  let t51 : G := t6 ◇ t6
  let t52 : G := t51 ◇ t49
  let t53 : G := t6 ◇ t47
  let t54 : G := t2 ◇ t53
  let t55 : G := w ◇ t2
  let t56 : G := t2 ◇ t55
  let t57 : G := t27 ◇ t56
  let t58 : G := t56 ◇ t27
  let t59 : G := t27 ◇ t58
  let t60 : G := t57 ◇ t59
  let t61 : G := t6 ◇ t56
  let t62 : G := t61 ◇ t59
  let t63 : G := t1 ◇ t56
  let t64 : G := t4 ◇ t27
  let t65 : G := t27 ◇ t14
  let t66 : G := t14 ◇ t65
  let t67 : G := t64 ◇ t66
  let t68 : G := y ◇ t27
  let t69 : G := t68 ◇ t66
  let t70 : G := t27 ◇ t27
  let t71 : G := t27 ◇ t70
  let t72 : G := t70 ◇ t71
  let t73 : G := t10 ◇ t55
  let t74 : G := t55 ◇ t6
  let t75 : G := t6 ◇ t74
  let t76 : G := t73 ◇ t75
  let t77 : G := t27 ◇ t6
  let t78 : G := t6 ◇ t77
  let t79 : G := t70 ◇ t78
  let t80 : G := t4 ◇ t55
  let t81 : G := t80 ◇ t75
  let t82 : G := t68 ◇ t78
  let t83 : G := t6 ◇ t2
  let t84 : G := t83 ◇ t9
  let t85 : G := t7 ◇ t56
  let t86 : G := t85 ◇ t59
  let t87 : G := t13 ◇ t10
  let t88 : G := t10 ◇ t56
  let t89 : G := t56 ◇ t88
  let t90 : G := t87 ◇ t89
  let t91 : G := t56 ◇ t57
  let t92 : G := t70 ◇ t91
  let t93 : G := t2 ◇ t83
  let t94 : G := t45 ◇ t93
  let t95 : G := t27 ◇ t4
  let t96 : G := t4 ◇ t95
  let t97 : G := t95 ◇ t27
  let t98 : G := t27 ◇ t97
  let t99 : G := t96 ◇ t98
  let t100 : G := t99 ◇ t99
  let t101 : G := t99 ◇ t19
  let t102 : G := t19 ◇ t101
  let t103 : G := t100 ◇ t102
  let t104 : G := t7 ◇ z
  let t105 : G := z ◇ t10
  let t106 : G := t10 ◇ t105
  let t107 : G := t104 ◇ t106
  let t108 : G := t107 ◇ t96
  let t109 : G := t96 ◇ t99
  let t110 : G := t99 ◇ t109
  let t111 : G := t108 ◇ t110
  let t112 : G := t27 ◇ t111
  let t113 : G := t111 ◇ t112
  let t114 : G := t70 ◇ t113
  let t115 : G := t27 ◇ t64
  let t116 : G := t95 ◇ t115
  let t117 : G := t99 ◇ t111
  let t118 : G := t111 ◇ t117
  let t119 : G := t111 ◇ t118
  let t120 : G := t118 ◇ t27
  let t121 : G := t27 ◇ t120
  let t122 : G := t119 ◇ t121
  let t123 : G := t4 ◇ t99
  let t124 : G := t123 ◇ t118
  let t125 : G := t117 ◇ t99
  let t126 : G := t99 ◇ t125
  let t127 : G := t118 ◇ t126
  let t128 : G := t27 ◇ t99
  let t129 : G := t99 ◇ t128
  let t130 : G := t68 ◇ t129
  let t131 : G := t99 ◇ t117
  let t132 : G := t131 ◇ t126
  let t133 : G := t99 ◇ t123
  let t134 : G := t95 ◇ t133
  let t135 : G := t111 ◇ t99
  let t136 : G := t99 ◇ t135
  let t137 : G := t117 ◇ t136
  let t138 : G := t99 ◇ t27
  let t139 : G := t27 ◇ t138
  let t140 : G := t109 ◇ t139
  let t141 : G := t27 ◇ z
  let t142 : G := t141 ◇ t27
  let t143 : G := t142 ◇ t96
  let t144 : G := t27 ◇ t107
  let t145 : G := t107 ◇ t6
  let t146 : G := t6 ◇ t145
  let t147 : G := t144 ◇ t146
  let t148 : G := t70 ◇ t96
  let t149 : G := t27 ◇ t13
  let t150 : G := t13 ◇ t149
  let t151 : G := t68 ◇ t150
  let t152 : G := t100 ◇ t118
  let t153 : G := t4 ◇ t111
  let t154 : G := t111 ◇ t153
  let t155 : G := t95 ◇ t154
  let t156 : G := t68 ◇ t96
  let t157 : G := t37 ◇ t19
  let t158 : G := t21 ◇ t17
  have e2 : x = t13 := by
    exact h x t6 t10
  have e5 : t7 = t18 := by
    exact h t7 t13 t6
  have e9 : t13 = x := by
    exact e2.symm
  have e8 : t15 = t19 := by
    exact congrArg (fun q => q ◇ t7) (e9)
  have e10 : t19 = t30 := by
    exact h t19 t13 t27
  have e15 : t13 = t36 := by
    exact h t13 t6 t27
  have e19 : t31 = t7 := by
    exact congrArg (fun q => t6 ◇ q) (e9)
  have e18 : t7 = t31 := by
    exact e19.symm
  have e21 : t6 = t40 := by
    exact h t6 t10 t27
  have e28 : t2 = t10 := by
    exact h t2 x t6
  have e27 : t10 = t2 := by
    exact e28.symm
  have e32 : t6 = t50 := by
    exact h t6 t1 t1
  have e39 : w = t6 := by
    exact h w w w
  have e38 : t6 = w := by
    exact e39.symm
  have e37 : t51 = t1 := by
    calc
      t51 = (w ◇ t6) := congrArg (fun q => q ◇ t6) (e38)
      _ = t1 := congrArg (fun q => w ◇ q) (e38)
  have e36 : t1 = t51 := by
    exact e37.symm
  have e42 : t48 = t5 := by
    exact congrArg (fun q => q ◇ t1) (e38)
  have e41 : t49 = t6 := by
    exact congrArg (fun q => t1 ◇ q) (e42)
  have e40 : t6 = t49 := by
    exact e41.symm
  have e35 : t47 = t52 := by
    calc
      t47 = (t51 ◇ t6) := congrArg (fun q => q ◇ t6) (e36)
      _ = t52 := congrArg (fun q => t51 ◇ q) (e40)
  have e44 : t6 = t52 := by
    exact h t6 t6 t1
  have e43 : t52 = t6 := by
    exact e44.symm
  have e34 : t47 = w := by
    calc
      t47 = t52 := e35
      _ = t6 := e43
      _ = w := e38
  have e45 : t49 = w := by
    calc
      t49 = t6 := e41
      _ = w := e38
  have e33 : t50 = t1 := by
    calc
      t50 = (w ◇ t49) := congrArg (fun q => q ◇ t49) (e34)
      _ = t1 := congrArg (fun q => w ◇ q) (e45)
  have e31 : t6 = t1 := by
    calc
      t6 = t50 := e32
      _ = t1 := e33
  have e30 : t45 = t2 := by
    exact congrArg (fun q => z ◇ q) (e31)
  have e29 : t2 = t45 := by
    exact e30.symm
  have e26 : t10 = t45 := by
    calc
      t10 = t2 := e27
      _ = t45 := e29
  have e25 : t41 = t46 := by
    exact congrArg (fun q => q ◇ t39) (e26)
  have e47 : t6 = t46 := by
    exact h t6 z t27
  have e46 : t46 = t6 := by
    exact e47.symm
  have e48 : t1 = t54 := by
    exact h t1 z t6
  have e53 : t53 = t1 := by
    calc
      t53 = (w ◇ t47) := congrArg (fun q => q ◇ t47) (e38)
      _ = t1 := congrArg (fun q => w ◇ q) (e34)
  have e52 : t1 = t53 := by
    exact e53.symm
  have e51 : t6 = t53 := by
    calc
      t6 = t50 := e32
      _ = t1 := e33
      _ = t53 := e52
  have e50 : t37 = t54 := by
    calc
      t37 = (t2 ◇ t6) := congrArg (fun q => q ◇ t6) (e27)
      _ = t54 := congrArg (fun q => t2 ◇ q) (e51)
  have e49 : t54 = t37 := by
    exact e50.symm
  have e24 : t41 = t37 := by
    calc
      t41 = t46 := e25
      _ = t6 := e46
      _ = t50 := e32
      _ = t1 := e33
      _ = t54 := e48
      _ = t37 := e49
  have e60 : t56 = t62 := by
    exact h t56 t6 t27
  have e64 : t1 = t50 := by
    exact e33.symm
  have e65 : t50 = t6 := by
    exact e32.symm
  have e66 : w = t63 := by
    exact h w w t2
  have e68 : t61 = t63 := by
    exact congrArg (fun q => q ◇ t56) (e31)
  have e67 : t63 = t61 := by
    exact e68.symm
  have e63 : t1 = t61 := by
    calc
      t1 = t50 := e64
      _ = t6 := e65
      _ = w := e38
      _ = t63 := e66
      _ = t61 := e67
  have e70 : t3 = t27 := by
    exact h t3 t1 t3
  have e71 : t27 = t67 := by
    exact h t27 t4 t14
  have e75 : t27 = t69 := by
    exact h t27 y t14
  have e80 : t27 = t3 := by
    exact e70.symm
  have e79 : t68 = t4 := by
    exact congrArg (fun q => y ◇ q) (e80)
  have e78 : t4 = t68 := by
    exact e79.symm
  have e82 : t27 = t72 := by
    exact h t27 t27 t27
  have e86 : t70 = t14 := by
    calc
      t70 = (t3 ◇ t27) := congrArg (fun q => q ◇ t27) (e80)
      _ = t14 := congrArg (fun q => t3 ◇ q) (e80)
  have e85 : t14 = t70 := by
    exact e86.symm
  have e88 : t65 = t26 := by
    exact congrArg (fun q => q ◇ t14) (e80)
  have e90 : t71 = t26 := by
    calc
      t71 = (t3 ◇ t70) := congrArg (fun q => q ◇ t70) (e80)
      _ = t26 := congrArg (fun q => t3 ◇ q) (e86)
  have e89 : t26 = t71 := by
    exact e90.symm
  have e87 : t65 = t71 := by
    calc
      t65 = t26 := e88
      _ = t71 := e89
  have e84 : t66 = t72 := by
    calc
      t66 = (t70 ◇ t65) := congrArg (fun q => q ◇ t65) (e85)
      _ = t72 := congrArg (fun q => t70 ◇ q) (e87)
  have e83 : t72 = t66 := by
    exact e84.symm
  have e81 : t27 = t66 := by
    calc
      t27 = t72 := e82
      _ = t66 := e83
  have e77 : t64 = t69 := by
    calc
      t64 = (t68 ◇ t27) := congrArg (fun q => q ◇ t27) (e78)
      _ = t69 := congrArg (fun q => t68 ◇ q) (e81)
  have e76 : t69 = t64 := by
    exact e77.symm
  have e74 : t3 = t64 := by
    calc
      t3 = t27 := e70
      _ = t69 := e75
      _ = t64 := e76
  have e91 : t3 = t66 := by
    calc
      t3 = t27 := e70
      _ = t72 := e82
      _ = t66 := e83
  have e73 : t14 = t67 := by
    calc
      t14 = (t64 ◇ t3) := congrArg (fun q => q ◇ t3) (e74)
      _ = t67 := congrArg (fun q => t64 ◇ q) (e91)
  have e72 : t67 = t14 := by
    exact e73.symm
  have e97 : t73 = t56 := by
    exact congrArg (fun q => q ◇ t55) (e27)
  have e96 : t56 = t73 := by
    exact e97.symm
  have e99 : t27 = t79 := by
    exact h t27 t27 t6
  have e112 : t8 = t54 := by
    exact congrArg (fun q => t2 ◇ q) (e51)
  have e113 : t54 = t1 := by
    exact e48.symm
  have e111 : t8 = w := by
    calc
      t8 = t54 := e112
      _ = t1 := e113
      _ = t50 := e64
      _ = t6 := e65
      _ = w := e38
  have e110 : t9 = t1 := by
    calc
      t9 = (w ◇ t8) := congrArg (fun q => q ◇ t8) (e38)
      _ = t1 := congrArg (fun q => w ◇ q) (e111)
  have e109 : t1 = t9 := by
    exact e110.symm
  have e108 : t6 = t9 := by
    calc
      t6 = t50 := e32
      _ = t1 := e33
      _ = t9 := e109
  have e107 : t77 = t10 := by
    calc
      t77 = (t3 ◇ t6) := congrArg (fun q => q ◇ t6) (e80)
      _ = t10 := congrArg (fun q => t3 ◇ q) (e108)
  have e106 : t77 = t2 := by
    calc
      t77 = t10 := e107
      _ = t2 := e27
  have e105 : t78 = t55 := by
    calc
      t78 = (w ◇ t77) := congrArg (fun q => q ◇ t77) (e38)
      _ = t55 := congrArg (fun q => w ◇ q) (e106)
  have e104 : t55 = t78 := by
    exact e105.symm
  have e103 : t80 = t82 := by
    calc
      t80 = (t68 ◇ t55) := congrArg (fun q => q ◇ t55) (e78)
      _ = t82 := congrArg (fun q => t68 ◇ q) (e104)
  have e115 : t27 = t82 := by
    exact h t27 y t6
  have e114 : t82 = t27 := by
    exact e115.symm
  have e102 : t80 = t70 := by
    calc
      t80 = t82 := e103
      _ = t27 := e114
      _ = t67 := e71
      _ = t14 := e72
      _ = t70 := e85
  have e121 : t83 = t55 := by
    exact congrArg (fun q => q ◇ t2) (e38)
  have e120 : t55 = t83 := by
    exact e121.symm
  have e119 : t74 = t84 := by
    calc
      t74 = (t83 ◇ t6) := congrArg (fun q => q ◇ t6) (e120)
      _ = t84 := congrArg (fun q => t83 ◇ q) (e108)
  have e123 : t2 = t84 := by
    exact h t2 t6 t6
  have e122 : t84 = t2 := by
    exact e123.symm
  have e118 : t74 = t2 := by
    calc
      t74 = t84 := e119
      _ = t2 := e122
  have e117 : t75 = t55 := by
    calc
      t75 = (w ◇ t74) := congrArg (fun q => q ◇ t74) (e38)
      _ = t55 := congrArg (fun q => w ◇ q) (e118)
  have e116 : t75 = t78 := by
    calc
      t75 = t55 := e117
      _ = t78 := e104
  have e101 : t81 = t79 := by
    calc
      t81 = (t70 ◇ t75) := congrArg (fun q => q ◇ t75) (e102)
      _ = t79 := congrArg (fun q => t70 ◇ q) (e116)
  have e100 : t79 = t81 := by
    exact e101.symm
  have e125 : t55 = t81 := by
    exact h t55 t4 t6
  have e124 : t81 = t55 := by
    exact e125.symm
  have e126 : t55 = t75 := by
    exact e117.symm
  have e98 : t27 = t75 := by
    calc
      t27 = t79 := e99
      _ = t81 := e100
      _ = t55 := e124
      _ = t75 := e126
  have e95 : t58 = t76 := by
    calc
      t58 = (t73 ◇ t27) := congrArg (fun q => q ◇ t27) (e96)
      _ = t76 := congrArg (fun q => t73 ◇ q) (e98)
  have e128 : t55 = t76 := by
    exact h t55 t10 t6
  have e127 : t76 = t55 := by
    exact e128.symm
  have e129 : t79 = t27 := by
    exact e99.symm
  have e94 : t58 = t3 := by
    calc
      t58 = t76 := e95
      _ = t55 := e127
      _ = t81 := e125
      _ = t79 := e101
      _ = t27 := e129
      _ = t3 := e80
  have e93 : t59 = t14 := by
    calc
      t59 = (t3 ◇ t58) := congrArg (fun q => q ◇ t58) (e80)
      _ = t14 := congrArg (fun q => t3 ◇ q) (e94)
  have e92 : t14 = t59 := by
    exact e93.symm
  have e69 : t3 = t59 := by
    calc
      t3 = t27 := e70
      _ = t67 := e71
      _ = t14 := e72
      _ = t59 := e92
  have e62 : t25 = t62 := by
    calc
      t25 = (t61 ◇ t3) := congrArg (fun q => q ◇ t3) (e63)
      _ = t62 := congrArg (fun q => t61 ◇ q) (e69)
  have e61 : t62 = t25 := by
    exact e62.symm
  have e131 : t38 = t25 := by
    calc
      t38 = (t1 ◇ t27) := congrArg (fun q => q ◇ t27) (e31)
      _ = t25 := congrArg (fun q => t1 ◇ q) (e80)
  have e130 : t25 = t38 := by
    exact e131.symm
  have e59 : t56 = t38 := by
    calc
      t56 = t62 := e60
      _ = t25 := e61
      _ = t38 := e130
  have e58 : t57 = t39 := by
    exact congrArg (fun q => t27 ◇ q) (e59)
  have e57 : t39 = t57 := by
    exact e58.symm
  have e132 : t27 = t59 := by
    calc
      t27 = t67 := e71
      _ = t14 := e72
      _ = t59 := e92
  have e56 : t42 = t60 := by
    calc
      t42 = (t57 ◇ t27) := congrArg (fun q => q ◇ t27) (e57)
      _ = t60 := congrArg (fun q => t57 ◇ q) (e132)
  have e134 : t56 = t60 := by
    exact h t56 t27 t27
  have e133 : t60 = t56 := by
    exact e134.symm
  have e55 : t42 = t38 := by
    calc
      t42 = t60 := e56
      _ = t56 := e133
      _ = t62 := e60
      _ = t25 := e61
      _ = t38 := e130
  have e54 : t43 = t39 := by
    exact congrArg (fun q => t27 ◇ q) (e55)
  have e23 : t44 = t40 := by
    calc
      t44 = (t37 ◇ t43) := congrArg (fun q => q ◇ t43) (e24)
      _ = t40 := congrArg (fun q => t37 ◇ q) (e54)
  have e22 : t40 = t44 := by
    exact e23.symm
  have e136 : t39 = t44 := by
    exact h t39 t10 t27
  have e135 : t44 = t39 := by
    exact e136.symm
  have e146 : t11 = t3 := by
    exact congrArg (fun q => x ◇ q) (e27)
  have e145 : t11 = t55 := by
    calc
      t11 = t3 := e146
      _ = t27 := e70
      _ = t79 := e99
      _ = t81 := e100
      _ = t55 := e124
  have e144 : t12 = t56 := by
    calc
      t12 = (t2 ◇ t11) := congrArg (fun q => q ◇ t11) (e27)
      _ = t56 := congrArg (fun q => t2 ◇ q) (e145)
  have e143 : t56 = t12 := by
    exact e144.symm
  have e142 : t85 = t13 := by
    exact congrArg (fun q => t7 ◇ q) (e143)
  have e141 : t13 = t85 := by
    exact e142.symm
  have e140 : t34 = t86 := by
    calc
      t34 = (t85 ◇ t27) := congrArg (fun q => q ◇ t27) (e141)
      _ = t86 := congrArg (fun q => t85 ◇ q) (e132)
  have e148 : t56 = t86 := by
    exact h t56 t7 t27
  have e147 : t86 = t56 := by
    exact e148.symm
  have e139 : t34 = t38 := by
    calc
      t34 = t86 := e140
      _ = t56 := e147
      _ = t62 := e60
      _ = t25 := e61
      _ = t38 := e130
  have e138 : t35 = t39 := by
    exact congrArg (fun q => t27 ◇ q) (e139)
  have e137 : t39 = t35 := by
    exact e138.symm
  have e20 : t6 = t35 := by
    calc
      t6 = t40 := e21
      _ = t44 := e22
      _ = t39 := e135
      _ = t35 := e137
  have e17 : t16 = t36 := by
    calc
      t16 = (t31 ◇ t6) := congrArg (fun q => q ◇ t6) (e18)
      _ = t36 := congrArg (fun q => t31 ◇ q) (e20)
  have e16 : t36 = t16 := by
    exact e17.symm
  have e14 : t13 = t16 := by
    calc
      t13 = t36 := e15
      _ = t16 := e16
  have e150 : t32 = t19 := by
    calc
      t32 = (x ◇ t31) := congrArg (fun q => q ◇ t31) (e9)
      _ = t19 := congrArg (fun q => x ◇ q) (e19)
  have e149 : t19 = t32 := by
    exact e150.symm
  have e13 : t24 = t33 := by
    calc
      t24 = (t16 ◇ t19) := congrArg (fun q => q ◇ t19) (e14)
      _ = t33 := congrArg (fun q => t16 ◇ q) (e149)
  have e152 : t6 = t33 := by
    exact h t6 t7 t13
  have e151 : t33 = t6 := by
    exact e152.symm
  have e155 : t10 = t90 := by
    exact h t10 t13 t56
  have e158 : t87 = t3 := by
    calc
      t87 = (x ◇ t10) := congrArg (fun q => q ◇ t10) (e9)
      _ = t3 := congrArg (fun q => x ◇ q) (e27)
  have e157 : t87 = t70 := by
    calc
      t87 = t3 := e158
      _ = t27 := e70
      _ = t67 := e71
      _ = t14 := e72
      _ = t70 := e85
  have e163 : t93 = t56 := by
    exact congrArg (fun q => t2 ◇ q) (e121)
  have e162 : t56 = t93 := by
    exact e163.symm
  have e161 : t88 = t94 := by
    calc
      t88 = (t45 ◇ t56) := congrArg (fun q => q ◇ t56) (e26)
      _ = t94 := congrArg (fun q => t45 ◇ q) (e162)
  have e165 : t6 = t94 := by
    exact h t6 z t2
  have e164 : t94 = t6 := by
    exact e165.symm
  have e160 : t88 = t57 := by
    calc
      t88 = t94 := e161
      _ = t6 := e164
      _ = t40 := e21
      _ = t44 := e22
      _ = t39 := e135
      _ = t57 := e57
  have e159 : t89 = t91 := by
    exact congrArg (fun q => t56 ◇ q) (e160)
  have e156 : t90 = t92 := by
    calc
      t90 = (t70 ◇ t89) := congrArg (fun q => q ◇ t89) (e157)
      _ = t92 := congrArg (fun q => t70 ◇ q) (e159)
  have e167 : t27 = t92 := by
    exact h t27 t27 t56
  have e166 : t92 = t27 := by
    exact e167.symm
  have e154 : t2 = t3 := by
    calc
      t2 = t10 := e28
      _ = t90 := e155
      _ = t92 := e156
      _ = t27 := e166
      _ = t3 := e80
  have e168 : t53 = t9 := by
    calc
      t53 = t1 := e53
      _ = t9 := e109
  have e153 : t54 = t10 := by
    calc
      t54 = (t3 ◇ t53) := congrArg (fun q => q ◇ t53) (e154)
      _ = t10 := congrArg (fun q => t3 ◇ q) (e168)
  have e12 : t24 = t3 := by
    calc
      t24 = t33 := e13
      _ = t6 := e151
      _ = t50 := e32
      _ = t1 := e33
      _ = t54 := e48
      _ = t10 := e153
      _ = t90 := e155
      _ = t92 := e156
      _ = t27 := e166
      _ = t3 := e80
  have e172 : t27 = t114 := by
    exact h t27 t27 t111
  have e175 : t27 = t70 := by
    calc
      t27 = t67 := e71
      _ = t14 := e72
      _ = t70 := e85
  have e177 : t4 = t116 := by
    exact h t4 t27 t27
  have e184 : t96 = t111 := by
    exact h t96 t107 t99
  have e183 : t111 = t96 := by
    exact e184.symm
  have e188 : t95 = t99 := by
    exact h t95 t4 t27
  have e187 : t99 = t95 := by
    exact e188.symm
  have e186 : t123 = t96 := by
    exact congrArg (fun q => t4 ◇ q) (e187)
  have e185 : t96 = t123 := by
    exact e186.symm
  have e182 : t111 = t123 := by
    calc
      t111 = t96 := e183
      _ = t123 := e185
  have e181 : t119 = t124 := by
    exact congrArg (fun q => q ◇ t118) (e182)
  have e190 : t99 = t124 := by
    exact h t99 t4 t111
  have e189 : t124 = t99 := by
    exact e190.symm
  have e180 : t119 = t95 := by
    calc
      t119 = t124 := e181
      _ = t99 := e189
      _ = t95 := e187
  have e196 : t27 = t130 := by
    exact h t27 y t99
  have e203 : t123 = t111 := by
    calc
      t123 = t96 := e186
      _ = t111 := e184
  have e202 : t133 = t117 := by
    exact congrArg (fun q => t99 ◇ q) (e203)
  have e201 : t117 = t133 := by
    exact e202.symm
  have e200 : t131 = t134 := by
    calc
      t131 = (t95 ◇ t117) := congrArg (fun q => q ◇ t117) (e187)
      _ = t134 := congrArg (fun q => t95 ◇ q) (e201)
  have e205 : t4 = t134 := by
    exact h t4 t27 t99
  have e204 : t134 = t4 := by
    exact e205.symm
  have e199 : t131 = t68 := by
    calc
      t131 = t134 := e200
      _ = t4 := e204
      _ = t68 := e78
  have e211 : t99 = t140 := by
    exact h t99 t96 t27
  have e225 : t69 = t27 := by
    exact e75.symm
  have e224 : t64 = t3 := by
    calc
      t64 = t69 := e77
      _ = t27 := e225
      _ = t3 := e80
  have e223 : t115 = t14 := by
    calc
      t115 = (t3 ◇ t64) := congrArg (fun q => q ◇ t64) (e80)
      _ = t14 := congrArg (fun q => t3 ◇ q) (e224)
  have e222 : t14 = t115 := by
    exact e223.symm
  have e221 : t27 = t115 := by
    calc
      t27 = t67 := e71
      _ = t14 := e72
      _ = t115 := e222
  have e220 : t97 = t116 := by
    exact congrArg (fun q => t95 ◇ q) (e221)
  have e226 : t116 = t4 := by
    exact e177.symm
  have e219 : t97 = t4 := by
    calc
      t97 = t116 := e220
      _ = t4 := e226
  have e218 : t98 = t95 := by
    exact congrArg (fun q => t27 ◇ q) (e219)
  have e217 : t95 = t98 := by
    exact e218.symm
  have e216 : t99 = t98 := by
    calc
      t99 = t95 := e187
      _ = t98 := e217
  have e215 : t109 = t99 := by
    exact congrArg (fun q => t96 ◇ q) (e216)
  have e214 : t99 = t109 := by
    exact e215.symm
  have e228 : t135 = t99 := by
    calc
      t135 = (t96 ◇ t99) := congrArg (fun q => q ◇ t99) (e183)
      _ = t99 := congrArg (fun q => t96 ◇ q) (e216)
  have e232 : t138 = t116 := by
    calc
      t138 = (t95 ◇ t27) := congrArg (fun q => q ◇ t27) (e187)
      _ = t116 := congrArg (fun q => t95 ◇ q) (e221)
  have e231 : t138 = t4 := by
    calc
      t138 = t116 := e232
      _ = t4 := e226
  have e230 : t139 = t95 := by
    exact congrArg (fun q => t27 ◇ q) (e231)
  have e229 : t95 = t139 := by
    exact e230.symm
  have e227 : t135 = t139 := by
    calc
      t135 = t99 := e228
      _ = t95 := e187
      _ = t139 := e229
  have e213 : t136 = t140 := by
    calc
      t136 = (t109 ◇ t135) := congrArg (fun q => q ◇ t135) (e214)
      _ = t140 := congrArg (fun q => t109 ◇ q) (e227)
  have e212 : t140 = t136 := by
    exact e213.symm
  have e210 : t99 = t136 := by
    calc
      t99 = t140 := e211
      _ = t136 := e212
  have e209 : t125 = t137 := by
    exact congrArg (fun q => t117 ◇ q) (e210)
  have e234 : t111 = t137 := by
    exact h t111 t99 t99
  have e233 : t137 = t111 := by
    exact e234.symm
  have e208 : t125 = t111 := by
    calc
      t125 = t137 := e209
      _ = t111 := e233
  have e207 : t126 = t117 := by
    exact congrArg (fun q => t99 ◇ q) (e208)
  have e239 : t27 = t143 := by
    exact h t27 t141 t4
  have e243 : t107 = t147 := by
    exact h t107 t27 t6
  have e249 : z = t107 := by
    exact h z t7 t10
  have e248 : t107 = z := by
    exact e249.symm
  have e247 : t144 = t141 := by
    exact congrArg (fun q => t27 ◇ q) (e248)
  have e246 : t141 = t144 := by
    exact e247.symm
  have e253 : t145 = t2 := by
    calc
      t145 = (z ◇ t6) := congrArg (fun q => q ◇ t6) (e248)
      _ = t2 := congrArg (fun q => z ◇ q) (e31)
  have e252 : t146 = t55 := by
    calc
      t146 = (w ◇ t145) := congrArg (fun q => q ◇ t145) (e38)
      _ = t55 := congrArg (fun q => w ◇ q) (e253)
  have e251 : t55 = t146 := by
    exact e252.symm
  have e250 : t27 = t146 := by
    calc
      t27 = t79 := e99
      _ = t81 := e100
      _ = t55 := e124
      _ = t146 := e251
  have e245 : t142 = t147 := by
    calc
      t142 = (t144 ◇ t27) := congrArg (fun q => q ◇ t27) (e246)
      _ = t147 := congrArg (fun q => t144 ◇ q) (e250)
  have e244 : t147 = t142 := by
    exact e245.symm
  have e242 : t107 = t142 := by
    calc
      t107 = t147 := e243
      _ = t142 := e244
  have e241 : t108 = t143 := by
    exact congrArg (fun q => q ◇ t96) (e242)
  have e240 : t143 = t108 := by
    exact e241.symm
  have e238 : t27 = t108 := by
    calc
      t27 = t143 := e239
      _ = t108 := e240
  have e257 : t109 = t139 := by
    calc
      t109 = t99 := e215
      _ = t95 := e187
      _ = t139 := e229
  have e256 : t110 = t140 := by
    calc
      t110 = (t109 ◇ t109) := congrArg (fun q => q ◇ t109) (e214)
      _ = t140 := congrArg (fun q => t109 ◇ q) (e257)
  have e255 : t140 = t110 := by
    exact e256.symm
  have e254 : t99 = t110 := by
    calc
      t99 = t140 := e211
      _ = t110 := e255
  have e237 : t128 = t111 := by
    calc
      t128 = (t108 ◇ t99) := congrArg (fun q => q ◇ t99) (e238)
      _ = t111 := congrArg (fun q => t108 ◇ q) (e254)
  have e236 : t129 = t117 := by
    exact congrArg (fun q => t99 ◇ q) (e237)
  have e235 : t117 = t129 := by
    exact e236.symm
  have e206 : t126 = t129 := by
    calc
      t126 = t117 := e207
      _ = t129 := e235
  have e198 : t132 = t130 := by
    calc
      t132 = (t68 ◇ t126) := congrArg (fun q => q ◇ t126) (e199)
      _ = t130 := congrArg (fun q => t68 ◇ q) (e206)
  have e197 : t130 = t132 := by
    exact e198.symm
  have e259 : t117 = t132 := by
    exact h t117 t99 t99
  have e258 : t132 = t117 := by
    exact e259.symm
  have e260 : t117 = t126 := by
    exact e207.symm
  have e195 : t27 = t126 := by
    calc
      t27 = t130 := e196
      _ = t132 := e197
      _ = t117 := e258
      _ = t126 := e260
  have e194 : t120 = t127 := by
    exact congrArg (fun q => t118 ◇ q) (e195)
  have e262 : t117 = t127 := by
    exact h t117 t111 t99
  have e261 : t127 = t117 := by
    exact e262.symm
  have e263 : t130 = t27 := by
    exact e196.symm
  have e193 : t120 = t3 := by
    calc
      t120 = t127 := e194
      _ = t117 := e261
      _ = t132 := e259
      _ = t130 := e198
      _ = t27 := e263
      _ = t3 := e80
  have e192 : t121 = t14 := by
    calc
      t121 = (t3 ◇ t120) := congrArg (fun q => q ◇ t120) (e80)
      _ = t14 := congrArg (fun q => t3 ◇ q) (e193)
  have e191 : t121 = t115 := by
    calc
      t121 = t14 := e192
      _ = t115 := e222
  have e179 : t122 = t116 := by
    calc
      t122 = (t95 ◇ t121) := congrArg (fun q => q ◇ t121) (e180)
      _ = t116 := congrArg (fun q => t95 ◇ q) (e191)
  have e178 : t116 = t122 := by
    exact e179.symm
  have e265 : t118 = t122 := by
    exact h t118 t111 t27
  have e264 : t122 = t118 := by
    exact e265.symm
  have e269 : t112 = t148 := by
    calc
      t112 = (t70 ◇ t111) := congrArg (fun q => q ◇ t111) (e175)
      _ = t148 := congrArg (fun q => t70 ◇ q) (e183)
  have e271 : t27 = t148 := by
    exact h t27 t27 t4
  have e270 : t148 = t27 := by
    exact e271.symm
  have e268 : t112 = t117 := by
    calc
      t112 = t148 := e269
      _ = t27 := e270
      _ = t130 := e196
      _ = t132 := e197
      _ = t117 := e258
  have e267 : t113 = t118 := by
    exact congrArg (fun q => t111 ◇ q) (e268)
  have e266 : t118 = t113 := by
    exact e267.symm
  have e176 : t4 = t113 := by
    calc
      t4 = t116 := e177
      _ = t122 := e178
      _ = t118 := e264
      _ = t113 := e266
  have e174 : t95 = t114 := by
    calc
      t95 = (t70 ◇ t4) := congrArg (fun q => q ◇ t4) (e175)
      _ = t114 := congrArg (fun q => t70 ◇ q) (e176)
  have e173 : t114 = t95 := by
    exact e174.symm
  have e274 : t99 = t139 := by
    calc
      t99 = t95 := e187
      _ = t139 := e229
  have e273 : t100 = t140 := by
    calc
      t100 = (t109 ◇ t99) := congrArg (fun q => q ◇ t99) (e214)
      _ = t140 := congrArg (fun q => t109 ◇ q) (e274)
  have e272 : t140 = t100 := by
    exact e273.symm
  have e171 : t27 = t100 := by
    calc
      t27 = t114 := e172
      _ = t95 := e173
      _ = t99 := e188
      _ = t140 := e211
      _ = t100 := e272
  have e277 : t27 = t151 := by
    exact h t27 y t13
  have e281 : t99 = t152 := by
    exact h t99 t99 t111
  have e284 : t95 = t100 := by
    calc
      t95 = t99 := e188
      _ = t140 := e211
      _ = t100 := e272
  have e287 : t153 = t156 := by
    calc
      t153 = (t68 ◇ t111) := congrArg (fun q => q ◇ t111) (e78)
      _ = t156 := congrArg (fun q => t68 ◇ q) (e183)
  have e289 : t27 = t156 := by
    exact h t27 y t4
  have e288 : t156 = t27 := by
    exact e289.symm
  have e286 : t153 = t117 := by
    calc
      t153 = t156 := e287
      _ = t27 := e288
      _ = t130 := e196
      _ = t132 := e197
      _ = t117 := e258
  have e285 : t154 = t118 := by
    exact congrArg (fun q => t111 ◇ q) (e286)
  have e283 : t155 = t152 := by
    calc
      t155 = (t100 ◇ t154) := congrArg (fun q => q ◇ t154) (e284)
      _ = t152 := congrArg (fun q => t100 ◇ q) (e285)
  have e282 : t152 = t155 := by
    exact e283.symm
  have e291 : t4 = t155 := by
    exact h t4 t27 t111
  have e290 : t155 = t4 := by
    exact e291.symm
  have e280 : t99 = t68 := by
    calc
      t99 = t152 := e281
      _ = t155 := e282
      _ = t4 := e290
      _ = t68 := e78
  have e296 : t92 = t90 := by
    exact e156.symm
  have e297 : t90 = t10 := by
    exact e155.symm
  have e298 : t10 = t54 := by
    exact e153.symm
  have e295 : t27 = t6 := by
    calc
      t27 = t92 := e167
      _ = t90 := e296
      _ = t10 := e297
      _ = t54 := e298
      _ = t1 := e113
      _ = t50 := e64
      _ = t6 := e65
  have e294 : t149 = t7 := by
    calc
      t149 = (t6 ◇ t13) := congrArg (fun q => q ◇ t13) (e295)
      _ = t7 := congrArg (fun q => t6 ◇ q) (e9)
  have e293 : t150 = t19 := by
    calc
      t150 = (x ◇ t149) := congrArg (fun q => q ◇ t149) (e9)
      _ = t19 := congrArg (fun q => x ◇ q) (e294)
  have e292 : t19 = t150 := by
    exact e293.symm
  have e279 : t101 = t151 := by
    calc
      t101 = (t68 ◇ t19) := congrArg (fun q => q ◇ t19) (e280)
      _ = t151 := congrArg (fun q => t68 ◇ q) (e292)
  have e278 : t151 = t101 := by
    exact e279.symm
  have e276 : t27 = t101 := by
    calc
      t27 = t151 := e277
      _ = t101 := e278
  have e275 : t28 = t102 := by
    exact congrArg (fun q => t19 ◇ q) (e276)
  have e170 : t29 = t103 := by
    calc
      t29 = (t100 ◇ t28) := congrArg (fun q => q ◇ t28) (e171)
      _ = t103 := congrArg (fun q => t100 ◇ q) (e275)
  have e300 : t99 = t103 := by
    exact h t99 t99 t19
  have e299 : t103 = t99 := by
    exact e300.symm
  have e301 : t114 = t27 := by
    exact e172.symm
  have e169 : t29 = t3 := by
    calc
      t29 = t103 := e170
      _ = t99 := e299
      _ = t95 := e187
      _ = t114 := e174
      _ = t27 := e301
      _ = t3 := e80
  have e11 : t30 = t14 := by
    calc
      t30 = (t3 ◇ t29) := congrArg (fun q => q ◇ t29) (e12)
      _ = t14 := congrArg (fun q => t3 ◇ q) (e169)
  have e302 : t67 = t27 := by
    exact e71.symm
  have e303 : t6 = t157 := by
    exact h t6 t10 x
  have e306 : t6 = t37 := by
    calc
      t6 = t50 := e32
      _ = t1 := e33
      _ = t54 := e48
      _ = t37 := e49
  have e305 : t20 = t157 := by
    exact congrArg (fun q => q ◇ t19) (e306)
  have e304 : t157 = t20 := by
    exact e305.symm
  have e7 : t15 = t20 := by
    calc
      t15 = t19 := e8
      _ = t30 := e10
      _ = t14 := e11
      _ = t67 := e73
      _ = t27 := e302
      _ = t92 := e167
      _ = t90 := e296
      _ = t10 := e297
      _ = t54 := e298
      _ = t1 := e113
      _ = t50 := e64
      _ = t6 := e65
      _ = t157 := e303
      _ = t20 := e304
  have e310 : t36 = t13 := by
    exact e15.symm
  have e309 : t16 = x := by
    calc
      t16 = t36 := e17
      _ = t13 := e310
      _ = x := e9
  have e308 : t17 = t7 := by
    exact congrArg (fun q => t6 ◇ q) (e309)
  have e311 : t7 = t158 := by
    exact h t7 t19 t6
  have e317 : t19 = t15 := by
    exact e8.symm
  have e318 : t7 = t17 := by
    exact e308.symm
  have e316 : t21 = t18 := by
    calc
      t21 = (t15 ◇ t7) := congrArg (fun q => q ◇ t7) (e317)
      _ = t18 := congrArg (fun q => t15 ◇ q) (e318)
  have e315 : t18 = t21 := by
    exact e316.symm
  have e314 : t7 = t21 := by
    calc
      t7 = t18 := e5
      _ = t21 := e315
  have e320 : t18 = t7 := by
    exact e5.symm
  have e319 : t21 = t17 := by
    calc
      t21 = t18 := e316
      _ = t7 := e320
      _ = t17 := e318
  have e313 : t22 = t158 := by
    calc
      t22 = (t21 ◇ t21) := congrArg (fun q => q ◇ t21) (e314)
      _ = t158 := congrArg (fun q => t21 ◇ q) (e319)
  have e312 : t158 = t22 := by
    exact e313.symm
  have e307 : t17 = t22 := by
    calc
      t17 = t7 := e308
      _ = t158 := e311
      _ = t22 := e312
  have e6 : t18 = t23 := by
    calc
      t18 = (t20 ◇ t17) := congrArg (fun q => q ◇ t17) (e7)
      _ = t23 := congrArg (fun q => t20 ◇ q) (e307)
  have e322 : t19 = t23 := by
    exact h t19 t6 t7
  have e321 : t23 = t19 := by
    exact e322.symm
  have e4 : t7 = t3 := by
    calc
      t7 = t18 := e5
      _ = t23 := e6
      _ = t19 := e321
      _ = t30 := e10
      _ = t14 := e11
      _ = t67 := e73
      _ = t27 := e302
      _ = t3 := e80
  have e325 : t85 = x := by
    calc
      t85 = t13 := e142
      _ = x := e9
  have e326 : t59 = t2 := by
    calc
      t59 = t14 := e93
      _ = t67 := e73
      _ = t27 := e302
      _ = t92 := e167
      _ = t90 := e296
      _ = t10 := e297
      _ = t2 := e27
  have e324 : t86 = t3 := by
    calc
      t86 = (x ◇ t59) := congrArg (fun q => q ◇ t59) (e325)
      _ = t3 := congrArg (fun q => x ◇ q) (e326)
  have e323 : t12 = t3 := by
    calc
      t12 = t56 := e144
      _ = t86 := e148
      _ = t3 := e324
  have e3 : t13 = t14 := by
    calc
      t13 = (t3 ◇ t12) := congrArg (fun q => q ◇ t12) (e4)
      _ = t14 := congrArg (fun q => t3 ◇ q) (e323)
  have e1 : x = t4 := by
    calc
      x = t13 := e2
      _ = t14 := e3
      _ = t67 := e73
      _ = t27 := e302
      _ = t114 := e172
      _ = t95 := e173
      _ = t99 := e188
      _ = t152 := e281
      _ = t155 := e282
      _ = t4 := e290
  exact e1
