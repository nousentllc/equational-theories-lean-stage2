import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x
  intro y
  intro z
  let t1 : G := (x ◇ x)
  let t2 : G := (x ◇ y)
  let t3 : G := (y ◇ z)
  let t4 : G := (z ◇ z)
  let t5 : G := (t1 ◇ t1)
  let t6 : G := (t2 ◇ t2)
  let t7 : G := (t2 ◇ t3)
  let t8 : G := (t2 ◇ t4)
  let t9 : G := (t3 ◇ t2)
  let t10 : G := (t3 ◇ t3)
  let t11 : G := (t4 ◇ t4)
  let t12 : G := (t5 ◇ x)
  let t13 : G := (t9 ◇ y)
  let t14 : G := (t7 ◇ t4)
  let t15 : G := (t2 ◇ t11)
  let t16 : G := (t8 ◇ t11)
  let t17 : G := (t9 ◇ t11)
  let t18 : G := (t10 ◇ t10)
  let t19 : G := (t11 ◇ t11)
  let t20 : G := (t13 ◇ t4)
  let t21 : G := (t15 ◇ x)
  let t22 : G := (t14 ◇ t2)
  let t23 : G := (t16 ◇ t2)
  let t24 : G := (t17 ◇ t3)
  let t25 : G := (t18 ◇ t3)
  let t26 : G := (t19 ◇ t4)
  let t27 : G := (t17 ◇ t17)
  let t28 : G := (y ◇ t22)
  let t30 : G := (t20 ◇ t11)
  let t31 : G := (t22 ◇ t22)
  let t32 : G := (t3 ◇ t27)
  let t33 : G := (t25 ◇ t27)
  let t34 : G := (t28 ◇ t11)
  let t36 : G := (t2 ◇ t31)
  let t37 : G := (t31 ◇ t11)
  let t38 : G := (t22 ◇ t31)
  let t40 : G := (t32 ◇ t18)
  let t41 : G := (t31 ◇ t31)
  let t42 : G := (t33 ◇ t18)
  let t43 : G := (t34 ◇ y)
  let t44 : G := (x ◇ t38)
  let t45 : G := (y ◇ t38)
  let t46 : G := (t37 ◇ t22)
  let t47 : G := (t38 ◇ t6)
  let t48 : G := (t38 ◇ t10)
  let t49 : G := (t40 ◇ t3)
  let t50 : G := (t38 ◇ t14)
  let t51 : G := (t16 ◇ t38)
  let t52 : G := (t2 ◇ t41)
  let t53 : G := (t4 ◇ t41)
  let t54 : G := (t30 ◇ t38)
  let t56 : G := (t41 ◇ t22)
  let t57 : G := (t38 ◇ t38)
  let t59 : G := (t41 ◇ t41)
  let t60 : G := (t44 ◇ t1)
  let t62 : G := (t46 ◇ t11)
  let t63 : G := (t51 ◇ t10)
  let t64 : G := (t50 ◇ t31)
  let t67 : G := (t2 ◇ t57)
  let t68 : G := (t57 ◇ t10)
  let t69 : G := (t8 ◇ t57)
  let t70 : G := (t22 ◇ t57)
  let t71 : G := (t28 ◇ t57)
  let t73 : G := (t47 ◇ t57)
  let t74 : G := (t48 ◇ t57)
  let t75 : G := (t59 ◇ t31)
  let t76 : G := (t51 ◇ t57)
  let t77 : G := (t52 ◇ t57)
  let t78 : G := (t53 ◇ t57)
  let t79 : G := (t54 ◇ t57)
  let t80 : G := (t56 ◇ t57)
  let t81 : G := (t60 ◇ x)
  let t82 : G := (t63 ◇ t16)
  let t84 : G := (t62 ◇ t37)
  let t86 : G := (t64 ◇ t38)
  let t87 : G := (t68 ◇ t38)
  let t88 : G := (t78 ◇ t4)
  let t89 : G := (t76 ◇ t16)
  let t94 : G := (t73 ◇ t38)
  let t95 : G := (t74 ◇ t38)
  let t96 : G := (t79 ◇ t38)
  let t97 : G := (t75 ◇ t41)
  let t98 : G := (t80 ◇ t41)
  let t101 : G := (t5 ◇ t81)
  let t103 : G := (t81 ◇ t38)
  let t104 : G := (t82 ◇ t27)
  let t105 : G := (t96 ◇ t57)
  let t106 : G := (t103 ◇ t5)
  let t107 : G := (t101 ◇ t57)
  let t108 : G := (t105 ◇ t38)
  let t109 : G := (t106 ◇ t81)
  let t110 : G := (t107 ◇ t5)
  let t111 : G := (t108 ◇ t57)
  let t112 : G := (t111 ◇ t38)
  let t113 : G := (t112 ◇ t57)
  let t114 : G := (t113 ◇ t38)
  let t115 : G := (t114 ◇ t57)
  let t116 : G := (t115 ◇ t38)
  let t117 : G := (t116 ◇ t6)
  let t118 : G := (t117 ◇ t115)
  let t120 : G := (t118 ◇ t118)
  let t121 : G := (t45 ◇ t120)
  let t122 : G := (t57 ◇ t120)
  let t123 : G := (t122 ◇ t38)
  have e1 : x = t12 := by
    exact h x x x
  have e2 : t1 = t109 := by
    exact h t1 t81 t38
  have e3 : x = t81 := by
    exact h x x t38
  have e4 : t81 = x := by
    exact e3.symm
  have e5 : t103 = t44 := by
    exact congrArg (fun q => (q ◇ t38)) (e4)
  have e6 : t101 = t12 := by
    exact congrArg (fun q => (t5 ◇ q)) (e4)
  have e7 : t12 = x := by
    exact e1.symm
  have e8 : t101 = x := by
    exact by
      calc
        t101 = t12 := e6
        _ = x := e7
  have e9 : t22 = t50 := by
    exact h t22 t14 t2
  have e10 : t50 = t22 := by
    exact e9.symm
  have e11 : t64 = t38 := by
    exact congrArg (fun q => (q ◇ t31)) (e10)
  have e12 : t38 = t64 := by
    exact e11.symm
  have e13 : t57 = t86 := by
    exact congrArg (fun q => (q ◇ t38)) (e12)
  have e14 : t22 = t86 := by
    exact h t22 t38 t14
  have e15 : t86 = t22 := by
    exact e14.symm
  have e16 : t22 = t97 := by
    exact h t22 t41 t41
  have e17 : z = t22 := by
    exact h z t2 t3
  have e18 : t22 = z := by
    exact e17.symm
  have e19 : t31 = t4 := by
    exact by
      calc
        t31 = (z ◇ t22) := congrArg (fun q => (q ◇ t22)) (e18)
        _ = t4 := congrArg (fun q => (z ◇ q)) (e18)
  have e20 : t4 = t31 := by
    exact e19.symm
  have e21 : t11 = t41 := by
    exact by
      calc
        t11 = (t31 ◇ t4) := congrArg (fun q => (q ◇ t4)) (e20)
        _ = t41 := congrArg (fun q => (t31 ◇ q)) (e20)
  have e22 : t41 = t11 := by
    exact e21.symm
  have e23 : t59 = t19 := by
    exact by
      calc
        t59 = (t11 ◇ t41) := congrArg (fun q => (q ◇ t41)) (e22)
        _ = t19 := congrArg (fun q => (t11 ◇ q)) (e22)
  have e24 : t75 = t26 := by
    exact by
      calc
        t75 = (t19 ◇ t31) := congrArg (fun q => (q ◇ t31)) (e23)
        _ = t26 := congrArg (fun q => (t19 ◇ q)) (e19)
  have e25 : t4 = t26 := by
    exact h t4 t4 t4
  have e26 : t26 = t4 := by
    exact e25.symm
  have e27 : t75 = t31 := by
    exact by
      calc
        t75 = t26 := e24
        _ = t4 := e26
        _ = t31 := e20
  have e28 : t97 = t37 := by
    exact by
      calc
        t97 = (t31 ◇ t41) := congrArg (fun q => (q ◇ t41)) (e27)
        _ = t37 := congrArg (fun q => (t31 ◇ q)) (e22)
  have e29 : t57 = z := by
    exact by
      calc
        t57 = t86 := e13
        _ = t22 := e15
        _ = z := e18
  have e30 : t70 = t4 := by
    exact by
      calc
        t70 = (z ◇ t57) := congrArg (fun q => (q ◇ t57)) (e18)
        _ = t4 := congrArg (fun q => (z ◇ q)) (e29)
  have e31 : t4 = t70 := by
    exact e30.symm
  have e32 : t22 = t56 := by
    exact h t22 t22 t22
  have e33 : t56 = t22 := by
    exact e32.symm
  have e34 : t80 = t70 := by
    exact congrArg (fun q => (q ◇ t57)) (e33)
  have e35 : t70 = t80 := by
    exact e34.symm
  have e36 : t31 = t80 := by
    exact by
      calc
        t31 = t4 := e19
        _ = t70 := e31
        _ = t80 := e35
  have e37 : t37 = t98 := by
    exact by
      calc
        t37 = (t80 ◇ t11) := congrArg (fun q => (q ◇ t11)) (e36)
        _ = t98 := congrArg (fun q => (t80 ◇ q)) (e21)
  have e38 : t38 = t98 := by
    exact h t38 t41 t22
  have e39 : t98 = t38 := by
    exact e38.symm
  have e40 : t57 = t38 := by
    exact by
      calc
        t57 = t86 := e13
        _ = t22 := e15
        _ = t97 := e16
        _ = t37 := e28
        _ = t98 := e37
        _ = t38 := e39
  have e41 : t107 = t44 := by
    exact by
      calc
        t107 = (x ◇ t57) := congrArg (fun q => (q ◇ t57)) (e8)
        _ = t44 := congrArg (fun q => (x ◇ q)) (e40)
  have e42 : t44 = t107 := by
    exact e41.symm
  have e43 : t103 = t107 := by
    exact by
      calc
        t103 = t44 := e5
        _ = t107 := e42
  have e44 : t106 = t110 := by
    exact congrArg (fun q => (q ◇ t5)) (e43)
  have e45 : t38 = t110 := by
    exact h t38 t5 t81
  have e46 : t110 = t38 := by
    exact e45.symm
  have e47 : t38 = t94 := by
    exact h t38 t38 t6
  have e48 : t2 = t118 := by
    exact h t2 t115 t38
  have e49 : t118 = t123 := by
    exact h t118 t38 t38
  have e50 : t38 = t89 := by
    exact h t38 t16 t38
  have e51 : t10 = t49 := by
    exact h t10 t3 t27
  have e52 : t3 = t82 := by
    exact h t3 t16 t38
  have e53 : t32 = t104 := by
    exact congrArg (fun q => (q ◇ t27)) (e52)
  have e54 : t3 = t25 := by
    exact h t3 t3 t3
  have e55 : t25 = t3 := by
    exact e54.symm
  have e56 : t25 = t82 := by
    exact by
      calc
        t25 = t3 := e55
        _ = t82 := e52
  have e57 : t33 = t104 := by
    exact congrArg (fun q => (q ◇ t27)) (e56)
  have e58 : t104 = t33 := by
    exact e57.symm
  have e59 : t32 = t33 := by
    exact by
      calc
        t32 = t104 := e53
        _ = t33 := e58
  have e60 : t40 = t42 := by
    exact congrArg (fun q => (q ◇ t18)) (e59)
  have e61 : t17 = t42 := by
    exact h t17 t18 t3
  have e62 : t42 = t17 := by
    exact e61.symm
  have e63 : t40 = t17 := by
    exact by
      calc
        t40 = t42 := e60
        _ = t17 := e62
  have e64 : t49 = t24 := by
    exact congrArg (fun q => (q ◇ t3)) (e63)
  have e65 : t4 = t24 := by
    exact h t4 t3 t2
  have e66 : t24 = t4 := by
    exact e65.symm
  have e67 : t4 = t84 := by
    exact h t4 t37 t22
  have e68 : t4 = t46 := by
    exact h t4 t22 t22
  have e69 : t46 = t4 := by
    exact e68.symm
  have e70 : t46 = t31 := by
    exact by
      calc
        t46 = t4 := e69
        _ = t31 := e20
  have e71 : t62 = t37 := by
    exact congrArg (fun q => (q ◇ t11)) (e70)
  have e72 : t62 = t64 := by
    exact by
      calc
        t62 = t37 := e71
        _ = t98 := e37
        _ = t38 := e39
        _ = t64 := e12
  have e73 : t37 = t38 := by
    exact by
      calc
        t37 = t98 := e37
        _ = t38 := e39
  have e74 : t84 = t86 := by
    exact by
      calc
        t84 = (t64 ◇ t37) := congrArg (fun q => (q ◇ t37)) (e72)
        _ = t86 := congrArg (fun q => (t64 ◇ q)) (e73)
  have e75 : t86 = t57 := by
    exact e13.symm
  have e76 : t10 = t57 := by
    exact by
      calc
        t10 = t49 := e51
        _ = t24 := e64
        _ = t4 := e66
        _ = t84 := e67
        _ = t86 := e74
        _ = t57 := e75
  have e77 : t63 = t76 := by
    exact congrArg (fun q => (t51 ◇ q)) (e76)
  have e78 : t82 = t89 := by
    exact congrArg (fun q => (q ◇ t16)) (e77)
  have e79 : t89 = t82 := by
    exact e78.symm
  have e80 : t82 = t3 := by
    exact e52.symm
  have e81 : t98 = t37 := by
    exact e37.symm
  have e82 : t37 = t97 := by
    exact e28.symm
  have e83 : t97 = t22 := by
    exact e16.symm
  have e84 : t38 = z := by
    exact by
      calc
        t38 = t98 := e38
        _ = t37 := e81
        _ = t97 := e82
        _ = t22 := e83
        _ = z := e18
  have e85 : t45 = t3 := by
    exact congrArg (fun q => (y ◇ q)) (e84)
  have e86 : t3 = t45 := by
    exact e85.symm
  have e87 : t38 = t45 := by
    exact by
      calc
        t38 = t89 := e50
        _ = t82 := e79
        _ = t3 := e80
        _ = t45 := e86
  have e88 : t118 = t2 := by
    exact e48.symm
  have e89 : t120 = t6 := by
    exact by
      calc
        t120 = (t2 ◇ t118) := congrArg (fun q => (q ◇ t118)) (e88)
        _ = t6 := congrArg (fun q => (t2 ◇ q)) (e88)
  have e90 : t6 = t120 := by
    exact e89.symm
  have e91 : t47 = t121 := by
    exact by
      calc
        t47 = (t45 ◇ t6) := congrArg (fun q => (q ◇ t6)) (e87)
        _ = t121 := congrArg (fun q => (t45 ◇ q)) (e90)
  have e92 : t57 = t45 := by
    exact by
      calc
        t57 = t86 := e13
        _ = t22 := e15
        _ = t97 := e16
        _ = t37 := e28
        _ = t98 := e37
        _ = t38 := e39
        _ = t89 := e50
        _ = t82 := e79
        _ = t3 := e80
        _ = t45 := e86
  have e93 : t122 = t121 := by
    exact congrArg (fun q => (q ◇ t120)) (e92)
  have e94 : t121 = t122 := by
    exact e93.symm
  have e95 : t47 = t122 := by
    exact by
      calc
        t47 = t121 := e91
        _ = t122 := e94
  have e96 : t73 = t123 := by
    exact by
      calc
        t73 = (t122 ◇ t57) := congrArg (fun q => (q ◇ t57)) (e95)
        _ = t123 := congrArg (fun q => (t122 ◇ q)) (e40)
  have e97 : t123 = t73 := by
    exact e96.symm
  have e98 : t2 = t73 := by
    exact by
      calc
        t2 = t118 := e48
        _ = t123 := e49
        _ = t73 := e97
  have e99 : t67 = t94 := by
    exact by
      calc
        t67 = (t73 ◇ t57) := congrArg (fun q => (q ◇ t57)) (e98)
        _ = t94 := congrArg (fun q => (t73 ◇ q)) (e40)
  have e100 : t94 = t67 := by
    exact e99.symm
  have e101 : t53 = t37 := by
    exact by
      calc
        t53 = (t31 ◇ t41) := congrArg (fun q => (q ◇ t41)) (e20)
        _ = t37 := congrArg (fun q => (t31 ◇ q)) (e22)
  have e102 : t57 = t22 := by
    exact by
      calc
        t57 = t86 := e13
        _ = t22 := e15
  have e103 : t78 = t46 := by
    exact by
      calc
        t78 = (t37 ◇ t57) := congrArg (fun q => (q ◇ t57)) (e101)
        _ = t46 := congrArg (fun q => (t37 ◇ q)) (e102)
  have e104 : t46 = t78 := by
    exact e103.symm
  have e105 : t31 = t78 := by
    exact by
      calc
        t31 = t4 := e19
        _ = t46 := e68
        _ = t78 := e104
  have e106 : t41 = t88 := by
    exact by
      calc
        t41 = (t78 ◇ t31) := congrArg (fun q => (q ◇ t31)) (e105)
        _ = t88 := congrArg (fun q => (t78 ◇ q)) (e19)
  have e107 : t38 = t88 := by
    exact h t38 t4 t41
  have e108 : t88 = t38 := by
    exact e107.symm
  have e109 : t11 = t57 := by
    exact by
      calc
        t11 = t41 := e21
        _ = t88 := e106
        _ = t38 := e108
        _ = t98 := e38
        _ = t37 := e81
        _ = t97 := e82
        _ = t22 := e83
        _ = t86 := e14
        _ = t57 := e75
  have e110 : t15 = t67 := by
    exact congrArg (fun q => (t2 ◇ q)) (e109)
  have e111 : t67 = t15 := by
    exact e110.symm
  have e112 : t106 = t15 := by
    exact by
      calc
        t106 = t110 := e44
        _ = t38 := e46
        _ = t94 := e47
        _ = t67 := e100
        _ = t15 := e111
  have e113 : t109 = t21 := by
    exact by
      calc
        t109 = (t15 ◇ t81) := congrArg (fun q => (q ◇ t81)) (e112)
        _ = t21 := congrArg (fun q => (t15 ◇ q)) (e4)
  have e114 : t4 = t21 := by
    exact h t4 x y
  have e115 : t21 = t4 := by
    exact e114.symm
  have e116 : t1 = t64 := by
    exact by
      calc
        t1 = t109 := e2
        _ = t21 := e113
        _ = t4 := e115
        _ = t84 := e67
        _ = t86 := e74
        _ = t22 := e15
        _ = t97 := e16
        _ = t37 := e28
        _ = t98 := e37
        _ = t38 := e39
        _ = t64 := e12
  have e117 : t1 = t38 := by
    exact by
      calc
        t1 = t109 := e2
        _ = t21 := e113
        _ = t4 := e115
        _ = t84 := e67
        _ = t86 := e74
        _ = t22 := e15
        _ = t97 := e16
        _ = t37 := e28
        _ = t98 := e37
        _ = t38 := e39
  have e118 : t5 = t86 := by
    exact by
      calc
        t5 = (t64 ◇ t1) := congrArg (fun q => (q ◇ t1)) (e116)
        _ = t86 := congrArg (fun q => (t64 ◇ q)) (e117)
  have e119 : t5 = t15 := by
    exact by
      calc
        t5 = t86 := e118
        _ = t22 := e15
        _ = t97 := e16
        _ = t37 := e28
        _ = t98 := e37
        _ = t38 := e39
        _ = t94 := e47
        _ = t67 := e100
        _ = t15 := e111
  have e120 : t12 = t21 := by
    exact congrArg (fun q => (q ◇ x)) (e119)
  have e121 : t4 = t43 := by
    exact h t4 y t22
  have e122 : t89 = t38 := by
    exact e50.symm
  have e123 : t52 = t15 := by
    exact congrArg (fun q => (t2 ◇ q)) (e22)
  have e124 : t94 = t38 := by
    exact e47.symm
  have e125 : t52 = t64 := by
    exact by
      calc
        t52 = t15 := e123
        _ = t67 := e110
        _ = t94 := e99
        _ = t38 := e124
        _ = t64 := e12
  have e126 : t77 = t86 := by
    exact by
      calc
        t77 = (t64 ◇ t57) := congrArg (fun q => (q ◇ t57)) (e125)
        _ = t86 := congrArg (fun q => (t64 ◇ q)) (e40)
  have e127 : t86 = t77 := by
    exact e126.symm
  have e128 : t8 = t36 := by
    exact congrArg (fun q => (t2 ◇ q)) (e20)
  have e129 : t31 = t57 := by
    exact by
      calc
        t31 = t4 := e19
        _ = t84 := e67
        _ = t86 := e74
        _ = t57 := e75
  have e130 : t36 = t67 := by
    exact congrArg (fun q => (t2 ◇ q)) (e129)
  have e131 : t15 = t52 := by
    exact e123.symm
  have e132 : t8 = t52 := by
    exact by
      calc
        t8 = t36 := e128
        _ = t67 := e130
        _ = t15 := e111
        _ = t52 := e131
  have e133 : t69 = t77 := by
    exact congrArg (fun q => (q ◇ t57)) (e132)
  have e134 : t77 = t69 := by
    exact e133.symm
  have e135 : t16 = t69 := by
    exact congrArg (fun q => (t8 ◇ q)) (e109)
  have e136 : t69 = t16 := by
    exact e135.symm
  have e137 : t3 = t16 := by
    exact by
      calc
        t3 = t82 := e52
        _ = t89 := e78
        _ = t38 := e122
        _ = t98 := e38
        _ = t37 := e81
        _ = t97 := e82
        _ = t22 := e83
        _ = t86 := e14
        _ = t77 := e127
        _ = t69 := e134
        _ = t16 := e136
  have e138 : t9 = t23 := by
    exact congrArg (fun q => (q ◇ t2)) (e137)
  have e139 : t4 = t23 := by
    exact h t4 t2 t4
  have e140 : t23 = t4 := by
    exact e139.symm
  have e141 : t38 = t95 := by
    exact h t38 t38 t10
  have e142 : t28 = t3 := by
    exact congrArg (fun q => (y ◇ q)) (e18)
  have e143 : t3 = t87 := by
    exact h t3 t38 t38
  have e144 : t38 = t57 := by
    exact by
      calc
        t38 = t98 := e38
        _ = t37 := e81
        _ = t97 := e82
        _ = t22 := e83
        _ = t86 := e14
        _ = t57 := e75
  have e145 : t48 = t68 := by
    exact congrArg (fun q => (q ◇ t10)) (e144)
  have e146 : t74 = t87 := by
    exact by
      calc
        t74 = (t68 ◇ t57) := congrArg (fun q => (q ◇ t57)) (e145)
        _ = t87 := congrArg (fun q => (t68 ◇ q)) (e40)
  have e147 : t87 = t74 := by
    exact e146.symm
  have e148 : t28 = t74 := by
    exact by
      calc
        t28 = t3 := e142
        _ = t87 := e143
        _ = t74 := e147
  have e149 : t71 = t95 := by
    exact by
      calc
        t71 = (t74 ◇ t57) := congrArg (fun q => (q ◇ t57)) (e148)
        _ = t95 := congrArg (fun q => (t74 ◇ q)) (e40)
  have e150 : t95 = t71 := by
    exact e149.symm
  have e151 : t34 = t71 := by
    exact congrArg (fun q => (t28 ◇ q)) (e109)
  have e152 : t71 = t34 := by
    exact e151.symm
  have e153 : t9 = t34 := by
    exact by
      calc
        t9 = t23 := e138
        _ = t4 := e140
        _ = t84 := e67
        _ = t86 := e74
        _ = t22 := e15
        _ = t97 := e16
        _ = t37 := e28
        _ = t98 := e37
        _ = t38 := e39
        _ = t95 := e141
        _ = t71 := e150
        _ = t34 := e152
  have e154 : t13 = t43 := by
    exact congrArg (fun q => (q ◇ y)) (e153)
  have e155 : t43 = t13 := by
    exact e154.symm
  have e156 : x = t13 := by
    exact by
      calc
        x = t12 := e1
        _ = t21 := e120
        _ = t4 := e115
        _ = t43 := e121
        _ = t13 := e155
  exact e156
