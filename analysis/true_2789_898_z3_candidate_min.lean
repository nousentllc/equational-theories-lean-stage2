import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x y z
  let t1 : G := x ◇ z
  let t2 : G := z ◇ y
  let t3 : G := t1 ◇ t2
  let t4 : G := y ◇ t3
  let t5 : G := t2 ◇ t2
  let t6 : G := t5 ◇ y
  let t7 : G := t1 ◇ t1
  let t8 : G := t7 ◇ z
  let t9 : G := t6 ◇ t8
  let t10 : G := t6 ◇ x
  let t11 : G := t9 ◇ t10
  let t12 : G := t11 ◇ t8
  let t13 : G := t6 ◇ t12
  let t14 : G := t4 ◇ t4
  let t15 : G := t14 ◇ t3
  let t16 : G := t6 ◇ t15
  let t17 : G := t13 ◇ t16
  let t18 : G := t17 ◇ t12
  let t19 : G := t18 ◇ t18
  let t20 : G := t19 ◇ t12
  let t21 : G := t12 ◇ t12
  let t22 : G := t14 ◇ t14
  let t23 : G := t22 ◇ t4
  let t24 : G := t12 ◇ t23
  let t25 : G := t21 ◇ t24
  let t26 : G := t25 ◇ t12
  let t27 : G := t3 ◇ t3
  let t28 : G := t27 ◇ t2
  let t29 : G := t28 ◇ t15
  let t30 : G := t28 ◇ t5
  let t31 : G := t29 ◇ t30
  let t32 : G := t31 ◇ t15
  let t33 : G := t27 ◇ t28
  let t34 : G := t27 ◇ t15
  let t35 : G := t33 ◇ t34
  let t36 : G := t35 ◇ t28
  let t37 : G := t14 ◇ t15
  let t38 : G := t37 ◇ t37
  let t39 : G := t38 ◇ t15
  let t40 : G := t5 ◇ t5
  let t41 : G := t5 ◇ t28
  let t42 : G := t40 ◇ t41
  let t43 : G := t42 ◇ t5
  let t44 : G := t28 ◇ t28
  let t45 : G := t44 ◇ t44
  let t46 : G := t45 ◇ t28
  let t47 : G := t33 ◇ t33
  let t48 : G := t47 ◇ t28
  let t49 : G := t6 ◇ t5
  let t50 : G := t49 ◇ t13
  let t51 : G := t50 ◇ t5
  let t52 : G := t51 ◇ t51
  let t53 : G := t52 ◇ t5
  let t54 : G := x ◇ t23
  let t55 : G := x ◇ t15
  let t56 : G := t55 ◇ t54
  let t57 : G := t56 ◇ t56
  let t58 : G := t57 ◇ t54
  let t59 : G := t54 ◇ t54
  let t60 : G := t59 ◇ t23
  let t61 : G := t59 ◇ t58
  let t62 : G := t60 ◇ t61
  let t63 : G := t62 ◇ t23
  let t64 : G := t7 ◇ t7
  let t65 : G := t64 ◇ t1
  let t66 : G := t65 ◇ t58
  let t67 : G := t65 ◇ t23
  let t68 : G := t66 ◇ t67
  let t69 : G := t68 ◇ t58
  let t70 : G := x ◇ t8
  let t71 : G := t70 ◇ t54
  let t72 : G := t71 ◇ t8
  let t73 : G := t5 ◇ t65
  let t74 : G := t5 ◇ t23
  let t75 : G := t73 ◇ t74
  let t76 : G := t1 ◇ t28
  let t77 : G := t7 ◇ t76
  let t78 : G := t77 ◇ t65
  let t79 : G := t78 ◇ t78
  let t80 : G := t79 ◇ t65
  let t81 : G := t77 ◇ t1
  let t82 : G := t5 ◇ t6
  let t83 : G := t82 ◇ t82
  let t84 : G := t83 ◇ t23
  let t85 : G := t83 ◇ t83
  let t86 : G := t84 ◇ t85
  let t87 : G := t86 ◇ t23
  let t88 : G := t87 ◇ t87
  let t89 : G := t88 ◇ t23
  let t90 : G := t6 ◇ t6
  let t91 : G := t90 ◇ t16
  let t92 : G := t28 ◇ t6
  let t93 : G := t92 ◇ t30
  let t94 : G := t93 ◇ t6
  let t95 : G := t41 ◇ t82
  let t96 : G := t95 ◇ t28
  let t97 : G := t30 ◇ t30
  let t98 : G := t97 ◇ t5
  let t99 : G := t5 ◇ t8
  let t100 : G := t74 ◇ t99
  let t101 : G := t100 ◇ t23
  let t102 : G := t28 ◇ t8
  let t103 : G := t28 ◇ t65
  let t104 : G := t102 ◇ t103
  let t105 : G := t104 ◇ t8
  let t106 : G := t6 ◇ t28
  let t107 : G := t16 ◇ t106
  let t108 : G := t7 ◇ t15
  let t109 : G := t108 ◇ t64
  let t110 : G := t109 ◇ t15
  let t111 : G := t110 ◇ t28
  let t112 : G := t110 ◇ t8
  let t113 : G := t111 ◇ t112
  let t114 : G := t76 ◇ t7
  let t115 : G := t114 ◇ t28
  let t116 : G := t115 ◇ t115
  let t117 : G := t116 ◇ t28
  let t118 : G := t8 ◇ t8
  let t119 : G := t8 ◇ t6
  let t120 : G := t118 ◇ t119
  let t121 : G := t120 ◇ t8
  let t122 : G := t106 ◇ t106
  let t123 : G := t122 ◇ t28
  let t124 : G := t7 ◇ t8
  let t125 : G := t124 ◇ t124
  let t126 : G := t82 ◇ t41
  let t127 : G := t125 ◇ t28
  let t128 : G := t125 ◇ t8
  let t129 : G := t127 ◇ t128
  let t130 : G := t129 ◇ t28
  let t131 : G := t41 ◇ t73
  let t132 : G := t110 ◇ t65
  let t133 : G := t110 ◇ t15
  let t134 : G := t132 ◇ t133
  let t135 : G := t134 ◇ t65
  let t136 : G := t29 ◇ t44
  let t137 : G := t136 ◇ t15
  let t138 : G := t64 ◇ t65
  let t139 : G := t138 ◇ t138
  let t140 : G := t139 ◇ t65
  let t141 : G := t40 ◇ t73
  let t142 : G := t141 ◇ t5
  let t143 : G := t73 ◇ t40
  let t144 : G := t133 ◇ t132
  let t145 : G := t144 ◇ t15
  let t146 : G := t29 ◇ t29
  let t147 : G := t146 ◇ t15
  let t148 : G := t124 ◇ t108
  let t149 : G := t148 ◇ t8
  let t150 : G := t149 ◇ t149
  let t151 : G := t150 ◇ t8
  let t152 : G := t57 ◇ t58
  let t153 : G := t152 ◇ t152
  let t154 : G := t153 ◇ t58
  let t155 : G := t22 ◇ t22
  let t156 : G := t155 ◇ t14
  let t157 : G := t15 ◇ t65
  let t158 : G := t15 ◇ t156
  let t159 : G := t157 ◇ t158
  let t160 : G := t159 ◇ t65
  let t161 : G := t73 ◇ t41
  let t162 : G := t161 ◇ t65
  let t163 : G := t22 ◇ t37
  let t164 : G := t163 ◇ t14
  let t165 : G := t37 ◇ t22
  let t166 : G := t165 ◇ t15
  let t167 : G := t166 ◇ t166
  let t168 : G := t167 ◇ t15
  let t169 : G := t143 ◇ t65
  have e2 : x = t12 := by
    exact h x t6 t8
  have e3 : t12 = t20 := by
    exact h t12 t17 t12
  have e9 : t15 = t18 := by
    exact h t15 t6 t12
  have e8 : t18 = t15 := by
    exact e9.symm
  have e11 : t3 = t15 := by
    exact h t3 y t3
  have e10 : t15 = t3 := by
    exact e11.symm
  have e7 : t18 = t3 := by
    calc
      t18 = t15 := e8
      _ = t3 := e10
  have e6 : t19 = t27 := by
    calc
      t19 = (t3 ◇ t18) := congrArg (fun q => q ◇ t18) (e7)
      _ = t27 := congrArg (fun q => t3 ◇ q) (e7)
  have e14 : t15 = t36 := by
    exact h t15 t27 t28
  have e21 : t2 = t28 := by
    exact h t2 t1 t2
  have e20 : t28 = t2 := by
    exact e21.symm
  have e19 : t33 = t28 := by
    exact congrArg (fun q => t27 ◇ q) (e20)
  have e18 : t28 = t33 := by
    exact e19.symm
  have e23 : t15 = t39 := by
    exact h t15 t14 t15
  have e29 : t37 = t15 := by
    exact congrArg (fun q => t14 ◇ q) (e10)
  have e28 : t37 = t3 := by
    calc
      t37 = t15 := e29
      _ = t3 := e10
  have e27 : t38 = t27 := by
    calc
      t38 = (t3 ◇ t37) := congrArg (fun q => q ◇ t37) (e28)
      _ = t27 := congrArg (fun q => t3 ◇ q) (e28)
  have e26 : t27 = t38 := by
    exact e27.symm
  have e25 : t34 = t39 := by
    exact congrArg (fun q => q ◇ t15) (e26)
  have e24 : t39 = t34 := by
    exact e25.symm
  have e22 : t15 = t34 := by
    calc
      t15 = t39 := e23
      _ = t34 := e24
  have e17 : t29 = t35 := by
    calc
      t29 = (t33 ◇ t15) := congrArg (fun q => q ◇ t15) (e18)
      _ = t35 := congrArg (fun q => t33 ◇ q) (e22)
  have e33 : t28 = t46 := by
    exact h t28 t28 t28
  have e38 : t44 = t5 := by
    calc
      t44 = (t2 ◇ t28) := congrArg (fun q => q ◇ t28) (e20)
      _ = t5 := congrArg (fun q => t2 ◇ q) (e20)
  have e37 : t5 = t44 := by
    exact e38.symm
  have e36 : t40 = t45 := by
    calc
      t40 = (t44 ◇ t5) := congrArg (fun q => q ◇ t5) (e37)
      _ = t45 := congrArg (fun q => t44 ◇ q) (e37)
  have e43 : t33 = t2 := by
    calc
      t33 = t28 := e19
      _ = t2 := e20
  have e42 : t47 = t5 := by
    calc
      t47 = (t2 ◇ t33) := congrArg (fun q => q ◇ t33) (e43)
      _ = t5 := congrArg (fun q => t2 ◇ q) (e43)
  have e41 : t5 = t47 := by
    exact e42.symm
  have e40 : t41 = t48 := by
    exact congrArg (fun q => q ◇ t28) (e41)
  have e45 : t28 = t48 := by
    exact h t28 t27 t28
  have e44 : t48 = t28 := by
    exact e45.symm
  have e39 : t41 = t28 := by
    calc
      t41 = t48 := e40
      _ = t28 := e44
  have e35 : t42 = t46 := by
    calc
      t42 = (t45 ◇ t41) := congrArg (fun q => q ◇ t41) (e36)
      _ = t46 := congrArg (fun q => t45 ◇ q) (e39)
  have e34 : t46 = t42 := by
    exact e35.symm
  have e32 : t28 = t42 := by
    calc
      t28 = t46 := e33
      _ = t42 := e34
  have e31 : t30 = t43 := by
    exact congrArg (fun q => q ◇ t5) (e32)
  have e47 : t28 = t43 := by
    exact h t28 t5 t5
  have e46 : t43 = t28 := by
    exact e47.symm
  have e30 : t30 = t28 := by
    calc
      t30 = t43 := e31
      _ = t28 := e46
  have e16 : t31 = t36 := by
    calc
      t31 = (t35 ◇ t30) := congrArg (fun q => q ◇ t30) (e17)
      _ = t36 := congrArg (fun q => t35 ◇ q) (e30)
  have e15 : t36 = t31 := by
    exact e16.symm
  have e13 : t3 = t31 := by
    calc
      t3 = t15 := e11
      _ = t36 := e14
      _ = t31 := e15
  have e12 : t27 = t32 := by
    calc
      t27 = (t31 ◇ t3) := congrArg (fun q => q ◇ t3) (e13)
      _ = t32 := congrArg (fun q => t31 ◇ q) (e11)
  have e49 : t5 = t32 := by
    exact h t5 t28 t15
  have e48 : t32 = t5 := by
    exact e49.symm
  have e50 : t5 = t53 := by
    exact h t5 t50 t5
  have e56 : t12 = t51 := by
    exact h t12 t6 t5
  have e55 : t51 = t12 := by
    exact e56.symm
  have e54 : t52 = t21 := by
    calc
      t52 = (t12 ◇ t51) := congrArg (fun q => q ◇ t51) (e55)
      _ = t21 := congrArg (fun q => t12 ◇ q) (e55)
  have e53 : t21 = t52 := by
    exact e54.symm
  have e59 : t12 = x := by
    exact e2.symm
  have e58 : t24 = t54 := by
    exact congrArg (fun q => q ◇ t23) (e59)
  have e60 : t54 = t58 := by
    exact h t54 t55 t54
  have e61 : t58 = t63 := by
    exact h t58 t59 t23
  have e67 : t23 = t60 := by
    exact h t23 x t23
  have e66 : t60 = t23 := by
    exact e67.symm
  have e68 : t23 = t72 := by
    exact h t23 x t8
  have e74 : t1 = t65 := by
    exact h t1 t1 t1
  have e73 : t65 = t1 := by
    exact e74.symm
  have e78 : z = t8 := by
    exact h z x z
  have e77 : t8 = z := by
    exact e78.symm
  have e76 : t70 = t1 := by
    exact congrArg (fun q => x ◇ q) (e77)
  have e75 : t1 = t70 := by
    exact e76.symm
  have e72 : t65 = t70 := by
    calc
      t65 = t1 := e73
      _ = t70 := e75
  have e79 : t58 = t54 := by
    exact e60.symm
  have e71 : t66 = t71 := by
    calc
      t66 = (t70 ◇ t58) := congrArg (fun q => q ◇ t58) (e72)
      _ = t71 := congrArg (fun q => t70 ◇ q) (e79)
  have e83 : t65 = t80 := by
    exact h t65 t77 t65
  have e89 : t78 = t81 := by
    exact congrArg (fun q => t77 ◇ q) (e73)
  have e91 : t28 = t81 := by
    exact h t28 t1 t1
  have e90 : t81 = t28 := by
    exact e91.symm
  have e88 : t78 = t2 := by
    calc
      t78 = t81 := e89
      _ = t28 := e90
      _ = t2 := e20
  have e87 : t79 = t5 := by
    calc
      t79 = (t2 ◇ t78) := congrArg (fun q => q ◇ t78) (e88)
      _ = t5 := congrArg (fun q => t2 ◇ q) (e88)
  have e86 : t5 = t79 := by
    exact e87.symm
  have e85 : t73 = t80 := by
    exact congrArg (fun q => q ◇ t65) (e86)
  have e84 : t80 = t73 := by
    exact e85.symm
  have e82 : t65 = t73 := by
    calc
      t65 = t80 := e83
      _ = t73 := e84
  have e93 : t23 = t89 := by
    exact h t23 t86 t23
  have e101 : y = t6 := by
    exact h y z y
  have e100 : t6 = y := by
    exact e101.symm
  have e99 : t82 = t6 := by
    exact congrArg (fun q => t5 ◇ q) (e100)
  have e98 : t6 = t82 := by
    exact e99.symm
  have e97 : t90 = t83 := by
    calc
      t90 = (t82 ◇ t6) := congrArg (fun q => q ◇ t6) (e98)
      _ = t83 := congrArg (fun q => t82 ◇ q) (e98)
  have e104 : t6 = t96 := by
    exact h t6 t5 t28
  have e109 : t48 = t41 := by
    exact e40.symm
  have e108 : t28 = t41 := by
    calc
      t28 = t48 := e45
      _ = t41 := e109
  have e107 : t92 = t95 := by
    calc
      t92 = (t41 ◇ t6) := congrArg (fun q => q ◇ t6) (e108)
      _ = t95 := congrArg (fun q => t41 ◇ q) (e98)
  have e106 : t93 = t96 := by
    calc
      t93 = (t95 ◇ t30) := congrArg (fun q => q ◇ t30) (e107)
      _ = t96 := congrArg (fun q => t95 ◇ q) (e30)
  have e105 : t96 = t93 := by
    exact e106.symm
  have e103 : t82 = t93 := by
    calc
      t82 = t6 := e99
      _ = t96 := e104
      _ = t93 := e105
  have e102 : t83 = t94 := by
    calc
      t83 = (t93 ◇ t82) := congrArg (fun q => q ◇ t82) (e103)
      _ = t94 := congrArg (fun q => t93 ◇ q) (e99)
  have e111 : t5 = t94 := by
    exact h t5 t28 t6
  have e110 : t94 = t5 := by
    exact e111.symm
  have e112 : t5 = t98 := by
    exact h t5 t28 t5
  have e118 : t30 = t2 := by
    calc
      t30 = t43 := e31
      _ = t28 := e46
      _ = t2 := e20
  have e117 : t97 = t5 := by
    calc
      t97 = (t2 ◇ t30) := congrArg (fun q => q ◇ t30) (e118)
      _ = t5 := congrArg (fun q => t2 ◇ q) (e118)
  have e116 : t5 = t97 := by
    exact e117.symm
  have e115 : t44 = t97 := by
    calc
      t44 = t5 := e38
      _ = t97 := e116
  have e114 : t45 = t98 := by
    calc
      t45 = (t97 ◇ t44) := congrArg (fun q => q ◇ t44) (e115)
      _ = t98 := congrArg (fun q => t97 ◇ q) (e38)
  have e113 : t98 = t45 := by
    exact e114.symm
  have e123 : t83 = t87 := by
    exact h t83 t83 t23
  have e122 : t87 = t83 := by
    exact e123.symm
  have e121 : t87 = t44 := by
    calc
      t87 = t83 := e122
      _ = t94 := e102
      _ = t5 := e110
      _ = t44 := e37
  have e120 : t88 = t45 := by
    calc
      t88 = (t44 ◇ t87) := congrArg (fun q => q ◇ t87) (e121)
      _ = t45 := congrArg (fun q => t44 ◇ q) (e121)
  have e119 : t45 = t88 := by
    exact e120.symm
  have e96 : t90 = t88 := by
    calc
      t90 = t83 := e97
      _ = t94 := e102
      _ = t5 := e110
      _ = t98 := e112
      _ = t45 := e113
      _ = t88 := e119
  have e125 : t16 = t4 := by
    calc
      t16 = (y ◇ t15) := congrArg (fun q => q ◇ t15) (e100)
      _ = t4 := congrArg (fun q => y ◇ q) (e10)
  have e126 : t4 = t23 := by
    exact h t4 t4 t4
  have e124 : t16 = t23 := by
    calc
      t16 = t4 := e125
      _ = t23 := e126
  have e95 : t91 = t89 := by
    calc
      t91 = (t88 ◇ t16) := congrArg (fun q => q ◇ t16) (e96)
      _ = t89 := congrArg (fun q => t88 ◇ q) (e124)
  have e94 : t89 = t91 := by
    exact e95.symm
  have e130 : t94 = t83 := by
    exact e102.symm
  have e131 : t83 = t90 := by
    exact e97.symm
  have e129 : t5 = t90 := by
    calc
      t5 = t94 := e111
      _ = t83 := e130
      _ = t90 := e131
  have e133 : t23 = t4 := by
    exact e126.symm
  have e134 : t4 = t16 := by
    exact e125.symm
  have e132 : t23 = t16 := by
    calc
      t23 = t4 := e133
      _ = t16 := e134
  have e128 : t74 = t91 := by
    calc
      t74 = (t90 ◇ t23) := congrArg (fun q => q ◇ t23) (e129)
      _ = t91 := congrArg (fun q => t90 ◇ q) (e132)
  have e127 : t91 = t74 := by
    exact e128.symm
  have e92 : t23 = t74 := by
    calc
      t23 = t89 := e93
      _ = t91 := e94
      _ = t74 := e127
  have e81 : t67 = t75 := by
    calc
      t67 = (t73 ◇ t23) := congrArg (fun q => q ◇ t23) (e82)
      _ = t75 := congrArg (fun q => t73 ◇ q) (e92)
  have e137 : t80 = t65 := by
    exact e83.symm
  have e138 : t65 = t105 := by
    exact h t65 t28 t8
  have e147 : t28 = t117 := by
    exact h t28 t114 t28
  have e152 : t7 = t110 := by
    exact h t7 t7 t15
  have e151 : t110 = t7 := by
    exact e152.symm
  have e156 : t1 = t115 := by
    exact h t1 t1 t28
  have e155 : t115 = t1 := by
    exact e156.symm
  have e154 : t116 = t7 := by
    calc
      t116 = (t1 ◇ t115) := congrArg (fun q => q ◇ t115) (e155)
      _ = t7 := congrArg (fun q => t1 ◇ q) (e155)
  have e153 : t7 = t116 := by
    exact e154.symm
  have e150 : t110 = t116 := by
    calc
      t110 = t7 := e151
      _ = t116 := e153
  have e149 : t111 = t117 := by
    exact congrArg (fun q => q ◇ t28) (e150)
  have e148 : t117 = t111 := by
    exact e149.symm
  have e146 : t28 = t111 := by
    calc
      t28 = t117 := e147
      _ = t111 := e148
  have e158 : t112 = t8 := by
    calc
      t112 = (t7 ◇ t8) := congrArg (fun q => q ◇ t8) (e151)
      _ = t8 := congrArg (fun q => t7 ◇ q) (e77)
  have e157 : t8 = t112 := by
    exact e158.symm
  have e145 : t102 = t113 := by
    calc
      t102 = (t111 ◇ t8) := congrArg (fun q => q ◇ t8) (e146)
      _ = t113 := congrArg (fun q => t111 ◇ q) (e157)
  have e161 : t117 = t28 := by
    exact e147.symm
  have e162 : t28 = t123 := by
    exact h t28 t6 t28
  have e168 : t124 = t8 := by
    exact congrArg (fun q => t7 ◇ q) (e77)
  have e167 : t8 = t124 := by
    exact e168.symm
  have e166 : t118 = t125 := by
    calc
      t118 = (t124 ◇ t8) := congrArg (fun q => q ◇ t8) (e167)
      _ = t125 := congrArg (fun q => t124 ◇ q) (e167)
  have e172 : t106 = t126 := by
    calc
      t106 = (t82 ◇ t28) := congrArg (fun q => q ◇ t28) (e98)
      _ = t126 := congrArg (fun q => t82 ◇ q) (e108)
  have e175 : t6 = t121 := by
    exact h t6 t8 t8
  have e179 : t125 = t118 := by
    exact e166.symm
  have e182 : t119 = t2 := by
    calc
      t119 = (z ◇ t6) := congrArg (fun q => q ◇ t6) (e77)
      _ = t2 := congrArg (fun q => z ◇ q) (e100)
  have e181 : t2 = t119 := by
    exact e182.symm
  have e180 : t28 = t119 := by
    calc
      t28 = t2 := e20
      _ = t119 := e181
  have e178 : t127 = t120 := by
    calc
      t127 = (t118 ◇ t28) := congrArg (fun q => q ◇ t28) (e179)
      _ = t120 := congrArg (fun q => t118 ◇ q) (e180)
  have e184 : t8 = t128 := by
    exact h t8 t7 t8
  have e183 : t128 = t8 := by
    exact e184.symm
  have e177 : t129 = t121 := by
    calc
      t129 = (t120 ◇ t128) := congrArg (fun q => q ◇ t128) (e178)
      _ = t121 := congrArg (fun q => t120 ◇ q) (e183)
  have e176 : t121 = t129 := by
    exact e177.symm
  have e174 : t82 = t129 := by
    calc
      t82 = t6 := e99
      _ = t121 := e175
      _ = t129 := e176
  have e173 : t126 = t130 := by
    calc
      t126 = (t129 ◇ t41) := congrArg (fun q => q ◇ t41) (e174)
      _ = t130 := congrArg (fun q => t129 ◇ q) (e39)
  have e186 : t8 = t130 := by
    exact h t8 t125 t28
  have e185 : t130 = t8 := by
    exact e186.symm
  have e171 : t106 = t124 := by
    calc
      t106 = t126 := e172
      _ = t130 := e173
      _ = t8 := e185
      _ = t124 := e167
  have e170 : t122 = t125 := by
    calc
      t122 = (t124 ◇ t106) := congrArg (fun q => q ◇ t106) (e171)
      _ = t125 := congrArg (fun q => t124 ◇ q) (e171)
  have e169 : t125 = t122 := by
    exact e170.symm
  have e165 : t118 = t122 := by
    calc
      t118 = t125 := e166
      _ = t122 := e169
  have e187 : t119 = t28 := by
    calc
      t119 = t2 := e182
      _ = t28 := e21
  have e164 : t120 = t123 := by
    calc
      t120 = (t122 ◇ t119) := congrArg (fun q => q ◇ t119) (e165)
      _ = t123 := congrArg (fun q => t122 ◇ q) (e187)
  have e163 : t123 = t120 := by
    exact e164.symm
  have e160 : t111 = t120 := by
    calc
      t111 = t117 := e149
      _ = t28 := e161
      _ = t123 := e162
      _ = t120 := e163
  have e159 : t113 = t121 := by
    calc
      t113 = (t120 ◇ t112) := congrArg (fun q => q ◇ t112) (e160)
      _ = t121 := congrArg (fun q => t120 ◇ q) (e158)
  have e188 : t121 = t6 := by
    exact e175.symm
  have e144 : t102 = y := by
    calc
      t102 = t113 := e145
      _ = t121 := e159
      _ = t6 := e188
      _ = y := e100
  have e190 : t103 = t131 := by
    calc
      t103 = (t41 ◇ t65) := congrArg (fun q => q ◇ t65) (e108)
      _ = t131 := congrArg (fun q => t41 ◇ q) (e82)
  have e193 : t28 = t137 := by
    exact h t28 t28 t15
  have e202 : t138 = t65 := by
    exact congrArg (fun q => t64 ◇ q) (e73)
  have e201 : t138 = t1 := by
    calc
      t138 = t65 := e202
      _ = t1 := e73
  have e200 : t139 = t7 := by
    calc
      t139 = (t1 ◇ t138) := congrArg (fun q => q ◇ t138) (e201)
      _ = t7 := congrArg (fun q => t1 ◇ q) (e201)
  have e199 : t7 = t139 := by
    exact e200.symm
  have e198 : t110 = t139 := by
    calc
      t110 = t7 := e151
      _ = t139 := e199
  have e197 : t132 = t140 := by
    exact congrArg (fun q => q ◇ t65) (e198)
  have e204 : t65 = t140 := by
    exact h t65 t64 t65
  have e203 : t140 = t65 := by
    exact e204.symm
  have e205 : t65 = t142 := by
    exact h t65 t5 t5
  have e212 : t98 = t5 := by
    exact e112.symm
  have e211 : t40 = t79 := by
    calc
      t40 = t45 := e36
      _ = t98 := e114
      _ = t5 := e212
      _ = t79 := e86
  have e213 : t73 = t65 := by
    calc
      t73 = t80 := e85
      _ = t65 := e137
  have e210 : t141 = t80 := by
    calc
      t141 = (t79 ◇ t73) := congrArg (fun q => q ◇ t73) (e211)
      _ = t80 := congrArg (fun q => t79 ◇ q) (e213)
  have e209 : t80 = t141 := by
    exact e210.symm
  have e208 : t73 = t141 := by
    calc
      t73 = t80 := e85
      _ = t141 := e209
  have e214 : t40 = t5 := by
    calc
      t40 = t45 := e36
      _ = t98 := e114
      _ = t5 := e212
  have e207 : t143 = t142 := by
    calc
      t143 = (t141 ◇ t40) := congrArg (fun q => q ◇ t40) (e208)
      _ = t142 := congrArg (fun q => t141 ◇ q) (e214)
  have e206 : t142 = t143 := by
    exact e207.symm
  have e225 : t76 = t3 := by
    exact congrArg (fun q => t1 ◇ q) (e20)
  have e224 : t3 = t76 := by
    exact e225.symm
  have e223 : t15 = t76 := by
    calc
      t15 = t3 := e10
      _ = t76 := e224
  have e222 : t133 = t77 := by
    calc
      t133 = (t7 ◇ t15) := congrArg (fun q => q ◇ t15) (e151)
      _ = t77 := congrArg (fun q => t7 ◇ q) (e223)
  have e226 : t132 = t1 := by
    calc
      t132 = t140 := e197
      _ = t65 := e203
      _ = t1 := e73
  have e221 : t144 = t81 := by
    calc
      t144 = (t77 ◇ t132) := congrArg (fun q => q ◇ t132) (e222)
      _ = t81 := congrArg (fun q => t77 ◇ q) (e226)
  have e220 : t81 = t144 := by
    exact e221.symm
  have e219 : t33 = t144 := by
    calc
      t33 = t28 := e19
      _ = t81 := e91
      _ = t144 := e220
  have e228 : t39 = t15 := by
    exact e23.symm
  have e227 : t34 = t15 := by
    calc
      t34 = t39 := e25
      _ = t15 := e228
  have e218 : t35 = t145 := by
    calc
      t35 = (t144 ◇ t34) := congrArg (fun q => q ◇ t34) (e219)
      _ = t145 := congrArg (fun q => t144 ◇ q) (e227)
  have e230 : t65 = t145 := by
    exact h t65 t110 t15
  have e229 : t145 = t65 := by
    exact e230.symm
  have e217 : t29 = t73 := by
    calc
      t29 = t35 := e17
      _ = t145 := e218
      _ = t65 := e229
      _ = t80 := e83
      _ = t73 := e84
  have e232 : t45 = t40 := by
    exact e36.symm
  have e231 : t44 = t40 := by
    calc
      t44 = t5 := e38
      _ = t98 := e112
      _ = t45 := e113
      _ = t40 := e232
  have e216 : t136 = t143 := by
    calc
      t136 = (t73 ◇ t44) := congrArg (fun q => q ◇ t44) (e217)
      _ = t143 := congrArg (fun q => t73 ◇ q) (e231)
  have e215 : t143 = t136 := by
    exact e216.symm
  have e196 : t132 = t136 := by
    calc
      t132 = t140 := e197
      _ = t65 := e203
      _ = t142 := e205
      _ = t143 := e206
      _ = t136 := e215
  have e237 : t29 = t1 := by
    calc
      t29 = t35 := e17
      _ = t145 := e218
      _ = t65 := e229
      _ = t1 := e73
  have e236 : t146 = t7 := by
    calc
      t146 = (t1 ◇ t29) := congrArg (fun q => q ◇ t29) (e237)
      _ = t7 := congrArg (fun q => t1 ◇ q) (e237)
  have e235 : t7 = t146 := by
    exact e236.symm
  have e238 : t76 = t15 := by
    calc
      t76 = t3 := e225
      _ = t15 := e11
  have e234 : t77 = t147 := by
    calc
      t77 = (t146 ◇ t76) := congrArg (fun q => q ◇ t76) (e235)
      _ = t147 := congrArg (fun q => t146 ◇ q) (e238)
  have e240 : t15 = t147 := by
    exact h t15 t28 t15
  have e239 : t147 = t15 := by
    exact e240.symm
  have e233 : t133 = t15 := by
    calc
      t133 = t77 := e222
      _ = t147 := e234
      _ = t15 := e239
  have e195 : t134 = t137 := by
    calc
      t134 = (t136 ◇ t133) := congrArg (fun q => q ◇ t133) (e196)
      _ = t137 := congrArg (fun q => t136 ◇ q) (e233)
  have e194 : t137 = t134 := by
    exact e195.symm
  have e192 : t41 = t134 := by
    calc
      t41 = t48 := e40
      _ = t28 := e44
      _ = t137 := e193
      _ = t134 := e194
  have e191 : t131 = t135 := by
    calc
      t131 = (t134 ◇ t73) := congrArg (fun q => q ◇ t73) (e192)
      _ = t135 := congrArg (fun q => t134 ◇ q) (e213)
  have e242 : t15 = t135 := by
    exact h t15 t110 t65
  have e241 : t135 = t15 := by
    exact e242.symm
  have e189 : t103 = t3 := by
    calc
      t103 = t131 := e190
      _ = t135 := e191
      _ = t15 := e241
      _ = t3 := e10
  have e143 : t104 = t4 := by
    calc
      t104 = (y ◇ t103) := congrArg (fun q => q ◇ t103) (e144)
      _ = t4 := congrArg (fun q => y ◇ q) (e189)
  have e142 : t4 = t104 := by
    exact e143.symm
  have e141 : t16 = t104 := by
    calc
      t16 = t4 := e125
      _ = t104 := e142
  have e243 : t106 = t8 := by
    calc
      t106 = t126 := e172
      _ = t130 := e173
      _ = t8 := e185
  have e140 : t107 = t105 := by
    calc
      t107 = (t104 ◇ t106) := congrArg (fun q => q ◇ t106) (e141)
      _ = t105 := congrArg (fun q => t104 ◇ q) (e243)
  have e139 : t105 = t107 := by
    exact e140.symm
  have e247 : t89 = t23 := by
    exact e93.symm
  have e246 : t74 = t16 := by
    calc
      t74 = t91 := e128
      _ = t89 := e95
      _ = t23 := e247
      _ = t4 := e133
      _ = t16 := e134
  have e251 : t32 = t27 := by
    exact e12.symm
  have e256 : t15 = t149 := by
    exact h t15 t7 t8
  have e255 : t149 = t15 := by
    exact e256.symm
  have e254 : t149 = t3 := by
    calc
      t149 = t15 := e255
      _ = t3 := e10
  have e253 : t150 = t27 := by
    calc
      t150 = (t3 ◇ t149) := congrArg (fun q => q ◇ t149) (e254)
      _ = t27 := congrArg (fun q => t3 ◇ q) (e254)
  have e252 : t27 = t150 := by
    exact e253.symm
  have e250 : t5 = t150 := by
    calc
      t5 = t32 := e49
      _ = t27 := e251
      _ = t150 := e252
  have e249 : t99 = t151 := by
    exact congrArg (fun q => q ◇ t8) (e250)
  have e258 : t8 = t151 := by
    exact h t8 t148 t8
  have e257 : t151 = t8 := by
    exact e258.symm
  have e259 : t130 = t126 := by
    exact e173.symm
  have e260 : t126 = t106 := by
    exact e172.symm
  have e248 : t99 = t106 := by
    calc
      t99 = t151 := e249
      _ = t8 := e257
      _ = t130 := e186
      _ = t126 := e259
      _ = t106 := e260
  have e245 : t100 = t107 := by
    calc
      t100 = (t16 ◇ t99) := congrArg (fun q => q ◇ t99) (e246)
      _ = t107 := congrArg (fun q => t16 ◇ q) (e248)
  have e244 : t107 = t100 := by
    exact e245.symm
  have e136 : t73 = t100 := by
    calc
      t73 = t80 := e85
      _ = t65 := e137
      _ = t105 := e138
      _ = t107 := e139
      _ = t100 := e244
  have e261 : t74 = t23 := by
    calc
      t74 = t91 := e128
      _ = t89 := e95
      _ = t23 := e247
  have e135 : t75 = t101 := by
    calc
      t75 = (t100 ◇ t74) := congrArg (fun q => q ◇ t74) (e136)
      _ = t101 := congrArg (fun q => t100 ◇ q) (e261)
  have e263 : t8 = t101 := by
    exact h t8 t5 t23
  have e262 : t101 = t8 := by
    exact e263.symm
  have e80 : t67 = t8 := by
    calc
      t67 = t75 := e81
      _ = t101 := e135
      _ = t8 := e262
  have e70 : t68 = t72 := by
    calc
      t68 = (t71 ◇ t67) := congrArg (fun q => q ◇ t67) (e71)
      _ = t72 := congrArg (fun q => t71 ◇ q) (e80)
  have e69 : t72 = t68 := by
    exact e70.symm
  have e65 : t60 = t68 := by
    calc
      t60 = t23 := e66
      _ = t72 := e68
      _ = t68 := e69
  have e269 : t152 = t58 := by
    exact congrArg (fun q => t57 ◇ q) (e79)
  have e268 : t152 = t54 := by
    calc
      t152 = t58 := e269
      _ = t54 := e79
  have e267 : t153 = t59 := by
    calc
      t153 = (t54 ◇ t152) := congrArg (fun q => q ◇ t152) (e268)
      _ = t59 := congrArg (fun q => t54 ◇ q) (e268)
  have e266 : t59 = t153 := by
    exact e267.symm
  have e265 : t61 = t154 := by
    exact congrArg (fun q => q ◇ t58) (e266)
  have e271 : t58 = t154 := by
    exact h t58 t57 t58
  have e270 : t154 = t58 := by
    exact e271.symm
  have e264 : t61 = t58 := by
    calc
      t61 = t154 := e265
      _ = t58 := e270
  have e64 : t62 = t69 := by
    calc
      t62 = (t68 ◇ t61) := congrArg (fun q => q ◇ t61) (e65)
      _ = t69 := congrArg (fun q => t68 ◇ q) (e264)
  have e273 : t23 = t69 := by
    exact h t23 t65 t58
  have e272 : t69 = t23 := by
    exact e273.symm
  have e63 : t62 = t4 := by
    calc
      t62 = t69 := e64
      _ = t23 := e272
      _ = t4 := e133
  have e62 : t63 = t14 := by
    calc
      t63 = (t4 ◇ t23) := congrArg (fun q => q ◇ t23) (e63)
      _ = t14 := congrArg (fun q => t4 ◇ q) (e133)
  have e274 : t14 = t156 := by
    exact h t14 t14 t14
  have e275 : t156 = t160 := by
    exact h t156 t15 t65
  have e284 : t73 = t1 := by
    calc
      t73 = t80 := e85
      _ = t65 := e137
      _ = t1 := e73
  have e285 : t41 = t2 := by
    calc
      t41 = t48 := e40
      _ = t28 := e44
      _ = t2 := e20
  have e283 : t161 = t3 := by
    calc
      t161 = (t1 ◇ t41) := congrArg (fun q => q ◇ t41) (e284)
      _ = t3 := congrArg (fun q => t1 ◇ q) (e285)
  have e282 : t3 = t161 := by
    exact e283.symm
  have e281 : t15 = t161 := by
    calc
      t15 = t3 := e10
      _ = t161 := e282
  have e280 : t157 = t162 := by
    exact congrArg (fun q => q ◇ t65) (e281)
  have e287 : t28 = t162 := by
    exact h t28 t5 t65
  have e286 : t162 = t28 := by
    exact e287.symm
  have e279 : t157 = t33 := by
    calc
      t157 = t162 := e280
      _ = t28 := e286
      _ = t33 := e18
  have e291 : t15 = t168 := by
    exact h t15 t165 t15
  have e297 : t14 = t166 := by
    exact h t14 t14 t15
  have e296 : t166 = t14 := by
    exact e297.symm
  have e295 : t167 = t22 := by
    calc
      t167 = (t14 ◇ t166) := congrArg (fun q => q ◇ t166) (e296)
      _ = t22 := congrArg (fun q => t14 ◇ q) (e296)
  have e294 : t22 = t167 := by
    exact e295.symm
  have e293 : t163 = t168 := by
    calc
      t163 = (t167 ◇ t37) := congrArg (fun q => q ◇ t37) (e294)
      _ = t168 := congrArg (fun q => t167 ◇ q) (e29)
  have e292 : t168 = t163 := by
    exact e293.symm
  have e290 : t15 = t163 := by
    calc
      t15 = t168 := e291
      _ = t163 := e292
  have e298 : t156 = t14 := by
    exact e274.symm
  have e289 : t158 = t164 := by
    calc
      t158 = (t163 ◇ t156) := congrArg (fun q => q ◇ t156) (e290)
      _ = t164 := congrArg (fun q => t163 ◇ q) (e298)
  have e300 : t15 = t164 := by
    exact h t15 t14 t14
  have e299 : t164 = t15 := by
    exact e300.symm
  have e288 : t158 = t34 := by
    calc
      t158 = t164 := e289
      _ = t15 := e299
      _ = t39 := e23
      _ = t34 := e24
  have e278 : t159 = t35 := by
    calc
      t159 = (t33 ◇ t158) := congrArg (fun q => q ◇ t158) (e279)
      _ = t35 := congrArg (fun q => t33 ◇ q) (e288)
  have e277 : t159 = t1 := by
    calc
      t159 = t35 := e278
      _ = t145 := e218
      _ = t65 := e229
      _ = t1 := e73
  have e276 : t160 = t7 := by
    calc
      t160 = (t1 ◇ t65) := congrArg (fun q => q ◇ t65) (e277)
      _ = t7 := congrArg (fun q => t1 ◇ q) (e73)
  have e302 : t1 = t143 := by
    calc
      t1 = t65 := e74
      _ = t142 := e205
      _ = t143 := e206
  have e301 : t7 = t169 := by
    calc
      t7 = (t143 ◇ t1) := congrArg (fun q => q ◇ t1) (e302)
      _ = t169 := congrArg (fun q => t143 ◇ q) (e74)
  have e304 : t5 = t169 := by
    exact h t5 t5 t65
  have e303 : t169 = t5 := by
    exact e304.symm
  have e57 : t24 = t5 := by
    calc
      t24 = t54 := e58
      _ = t58 := e60
      _ = t63 := e61
      _ = t14 := e62
      _ = t156 := e274
      _ = t160 := e275
      _ = t7 := e276
      _ = t169 := e301
      _ = t5 := e303
  have e52 : t25 = t53 := by
    calc
      t25 = (t52 ◇ t24) := congrArg (fun q => q ◇ t24) (e53)
      _ = t53 := congrArg (fun q => t52 ◇ q) (e57)
  have e51 : t53 = t25 := by
    exact e52.symm
  have e5 : t19 = t25 := by
    calc
      t19 = t27 := e6
      _ = t32 := e12
      _ = t5 := e48
      _ = t53 := e50
      _ = t25 := e51
  have e4 : t20 = t26 := by
    exact congrArg (fun q => q ◇ t12) (e5)
  have e306 : t23 = t26 := by
    exact h t23 t12 t12
  have e305 : t26 = t23 := by
    exact e306.symm
  have e1 : x = t4 := by
    calc
      x = t12 := e2
      _ = t20 := e3
      _ = t26 := e4
      _ = t23 := e305
      _ = t4 := e133
  exact e1
