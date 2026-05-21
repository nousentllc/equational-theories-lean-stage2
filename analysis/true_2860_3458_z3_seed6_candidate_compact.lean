import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x
  intro y
  let t1 : G := (x ◇ x)
  let t2 : G := (x ◇ y)
  let t3 : G := (t2 ◇ x)
  let t4 : G := (x ◇ t2)
  let t5 : G := (t4 ◇ y)
  let t6 : G := (x ◇ t3)
  let t7 : G := (t2 ◇ t3)
  let t8 : G := (t7 ◇ y)
  let t9 : G := (t4 ◇ t5)
  let t10 : G := (t8 ◇ y)
  let t11 : G := (t10 ◇ y)
  let t12 : G := (x ◇ t10)
  let t13 : G := (t10 ◇ t3)
  let t14 : G := (t4 ◇ t10)
  let t15 : G := (t10 ◇ t7)
  let t16 : G := (t4 ◇ t11)
  let t17 : G := (t4 ◇ t14)
  let t18 : G := (t10 ◇ t11)
  let t19 : G := (t10 ◇ t13)
  let t20 : G := (t17 ◇ y)
  let t21 : G := (t4 ◇ t16)
  let t22 : G := (t18 ◇ x)
  let t23 : G := (t18 ◇ y)
  let t24 : G := (t19 ◇ x)
  let t25 : G := (t16 ◇ t11)
  let t26 : G := (t19 ◇ t7)
  let t27 : G := (t10 ◇ t18)
  let t28 : G := (t9 ◇ t18)
  let t29 : G := (t18 ◇ t11)
  let t30 : G := (t20 ◇ y)
  let t31 : G := (t4 ◇ t21)
  let t32 : G := (t24 ◇ x)
  let t33 : G := (t25 ◇ y)
  let t34 : G := (t10 ◇ t21)
  let t35 : G := (t2 ◇ t25)
  let t36 : G := (t27 ◇ y)
  let t37 : G := (t16 ◇ t21)
  let t38 : G := (t21 ◇ t16)
  let t39 : G := (t24 ◇ t11)
  let t40 : G := (t10 ◇ t25)
  let t41 : G := (t26 ◇ t7)
  let t42 : G := (t28 ◇ t7)
  let t43 : G := (t18 ◇ t21)
  let t44 : G := (t18 ◇ t23)
  let t45 : G := (t21 ◇ t25)
  let t46 : G := (t24 ◇ t25)
  let t47 : G := (t28 ◇ t18)
  let t48 : G := (x ◇ t33)
  let t49 : G := (t10 ◇ t34)
  let t50 : G := (t2 ◇ t40)
  let t51 : G := (t31 ◇ t21)
  let t52 : G := (t10 ◇ t40)
  let t53 : G := (t45 ◇ x)
  let t54 : G := (t25 ◇ t33)
  let t55 : G := (t21 ◇ t38)
  let t56 : G := (t21 ◇ t39)
  let t57 : G := (t18 ◇ t43)
  let t58 : G := (t21 ◇ t45)
  let t59 : G := (t44 ◇ t25)
  let t60 : G := (t45 ◇ t25)
  let t61 : G := (t49 ◇ t10)
  let t62 : G := (t52 ◇ t3)
  let t63 : G := (t54 ◇ y)
  let t64 : G := (t55 ◇ y)
  let t65 : G := (t49 ◇ t18)
  let t66 : G := (t54 ◇ t5)
  let t67 : G := (t54 ◇ t7)
  let t68 : G := (t57 ◇ y)
  let t69 : G := (t51 ◇ t21)
  let t70 : G := (t55 ◇ t10)
  let t71 : G := (t57 ◇ t3)
  let t72 : G := (t57 ◇ t7)
  let t73 : G := (t54 ◇ t16)
  let t74 : G := (t59 ◇ x)
  let t75 : G := (t17 ◇ t56)
  let t76 : G := (t21 ◇ t56)
  let t77 : G := (t54 ◇ t25)
  let t78 : G := (t55 ◇ t25)
  let t79 : G := (t57 ◇ t18)
  let t80 : G := (t58 ◇ t21)
  let t81 : G := (t59 ◇ t25)
  let t82 : G := (t54 ◇ t56)
  let t83 : G := (t62 ◇ t3)
  let t84 : G := (t63 ◇ y)
  let t85 : G := (t64 ◇ y)
  let t86 : G := (t61 ◇ t10)
  let t87 : G := (t68 ◇ y)
  let t88 : G := (t67 ◇ t7)
  let t89 : G := (t71 ◇ t3)
  let t90 : G := (t70 ◇ t10)
  let t91 : G := (t72 ◇ t7)
  let t92 : G := (t76 ◇ t3)
  let t93 : G := (t65 ◇ t18)
  let t94 : G := (t72 ◇ t13)
  let t95 : G := (t67 ◇ t18)
  let t96 : G := (t76 ◇ t7)
  let t97 : G := (t73 ◇ t16)
  let t98 : G := (t80 ◇ t11)
  let t99 : G := (t79 ◇ t18)
  let t100 : G := (t80 ◇ t21)
  let t101 : G := (t77 ◇ t25)
  let t102 : G := (t78 ◇ t25)
  let t103 : G := (t75 ◇ t56)
  let t104 : G := (t76 ◇ t56)
  let t105 : G := (t82 ◇ t56)
  let t106 : G := (t61 ◇ t86)
  let t107 : G := (t104 ◇ t56)
  let t108 : G := (t106 ◇ y)
  let t109 : G := (t106 ◇ t3)
  let t110 : G := (t106 ◇ t7)
  let t111 : G := (t106 ◇ t21)
  let t112 : G := (t106 ◇ t18)
  let t113 : G := (t106 ◇ t25)
  let t114 : G := (t108 ◇ y)
  let t115 : G := (t109 ◇ t3)
  let t116 : G := (t110 ◇ t7)
  let t117 : G := (t111 ◇ t11)
  let t118 : G := (t111 ◇ t21)
  let t119 : G := (t112 ◇ t18)
  let t120 : G := (t113 ◇ t25)
  let t121 : G := (t120 ◇ t10)
  let t122 : G := (t18 ◇ t120)
  let t123 : G := (t57 ◇ t120)
  let t124 : G := (t61 ◇ t121)
  let t125 : G := (t120 ◇ t121)
  let t126 : G := (t122 ◇ t120)
  let t127 : G := (t123 ◇ t120)
  let t128 : G := (t125 ◇ t120)
  let t129 : G := (t128 ◇ t43)
  let t130 : G := (t128 ◇ t120)
  have e1 : x = t25 := by
    exact h x y (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)
  have e2 : t25 = t101 := by
    exact h (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) y (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))
  have e3 : t21 = t102 := by
    exact h ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))
  have e4 : t25 = x := by
    exact e1.symm
  have e5 : t33 = t2 := by
    exact congrArg (fun q => q ◇ y) (e4)
  have e6 : t54 = t4 := by
    exact by
      calc
        ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) = (x ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) := congrArg (fun q => q ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) (e4)
        _ = (x ◇ (x ◇ y)) := congrArg (fun q => x ◇ q) (e5)
  have e7 : t4 = t60 := by
    exact h (x ◇ (x ◇ y)) (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y) (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))
  have e8 : t73 = t21 := by
    exact congrArg (fun q => q ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (e6)
  have e9 : t21 = t73 := by
    exact e8.symm
  have e10 : t38 = t97 := by
    exact congrArg (fun q => q ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (e9)
  have e11 : t25 = t97 := by
    exact h (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) y ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))
  have e12 : t97 = t25 := by
    exact e11.symm
  have e13 : t38 = t25 := by
    exact by
      calc
        (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) = ((((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e10
        _ = (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e12
  have e14 : t55 = t45 := by
    exact congrArg (fun q => ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ q) (e13)
  have e15 : t78 = t60 := by
    exact congrArg (fun q => q ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (e14)
  have e16 : t60 = t78 := by
    exact e15.symm
  have e17 : t54 = t78 := by
    exact by
      calc
        ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) = (x ◇ (x ◇ y)) := e6
        _ = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e7
        _ = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e16
  have e18 : t77 = t102 := by
    exact congrArg (fun q => q ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (e17)
  have e19 : t102 = t77 := by
    exact e18.symm
  have e20 : t21 = t77 := by
    exact by
      calc
        ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) = (((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e3
        _ = (((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e19
  have e21 : t45 = t101 := by
    exact congrArg (fun q => q ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (e20)
  have e22 : t101 = t45 := by
    exact e21.symm
  have e23 : x = t45 := by
    exact by
      calc
        x = (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e1
        _ = ((((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e2
        _ = (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e22
  have e24 : t1 = t60 := by
    exact by
      calc
        (x ◇ x) = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ x) := congrArg (fun q => q ◇ x) (e23)
        _ = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := congrArg (fun q => (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ q) (e1)
  have e25 : t60 = t4 := by
    exact e7.symm
  have e26 : t4 = t47 := by
    exact h (x ◇ (x ◇ y)) y (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))
  have e27 : t21 = t107 := by
    exact h ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))
  have e28 : t4 = t103 := by
    exact h (x ◇ (x ◇ y)) ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))
  have e29 : t101 = t25 := by
    exact e2.symm
  have e30 : t55 = x := by
    exact by
      calc
        (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) = (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e14
        _ = ((((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e21
        _ = (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e29
        _ = x := e4
  have e31 : t2 = t10 := by
    exact h (x ◇ y) x y
  have e32 : t10 = t2 := by
    exact e31.symm
  have e33 : t70 = t4 := by
    exact by
      calc
        ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) = (x ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) := congrArg (fun q => q ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) (e30)
        _ = (x ◇ (x ◇ y)) := congrArg (fun q => x ◇ q) (e32)
  have e34 : t4 = t70 := by
    exact e33.symm
  have e35 : t14 = t90 := by
    exact congrArg (fun q => q ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) (e34)
  have e36 : t21 = t90 := by
    exact h ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)
  have e37 : t90 = t21 := by
    exact e36.symm
  have e38 : t21 = t85 := by
    exact h ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) y
  have e39 : t64 = t2 := by
    exact congrArg (fun q => q ◇ y) (e30)
  have e40 : t2 = t64 := by
    exact e39.symm
  have e41 : t10 = t64 := by
    exact by
      calc
        ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) = (x ◇ y) := e32
        _ = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ y) := e40
  have e42 : t11 = t85 := by
    exact congrArg (fun q => q ◇ y) (e41)
  have e43 : t85 = t11 := by
    exact e42.symm
  have e44 : t14 = t11 := by
    exact by
      calc
        ((x ◇ (x ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) = (((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) := e35
        _ = ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e37
        _ = (((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ y) ◇ y) := e38
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y) := e43
  have e45 : t17 = t16 := by
    exact congrArg (fun q => (x ◇ (x ◇ y)) ◇ q) (e44)
  have e46 : t4 = t69 := by
    exact h (x ◇ (x ◇ y)) ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))
  have e47 : t45 = t25 := by
    exact by
      calc
        (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) = ((((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e21
        _ = (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e29
  have e48 : t58 = t45 := by
    exact congrArg (fun q => ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ q) (e47)
  have e49 : t21 = t11 := by
    exact by
      calc
        ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) = (((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ y) ◇ y) := e38
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y) := e43
  have e50 : t31 = t16 := by
    exact congrArg (fun q => (x ◇ (x ◇ y)) ◇ q) (e49)
  have e51 : t51 = t25 := by
    exact by
      calc
        (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) = (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := congrArg (fun q => q ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) (e50)
        _ = (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := congrArg (fun q => ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ q) (e49)
  have e52 : t25 = t51 := by
    exact e51.symm
  have e53 : t58 = t51 := by
    exact by
      calc
        (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) = (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e48
        _ = ((((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e21
        _ = (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e29
        _ = (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e52
  have e54 : t80 = t69 := by
    exact congrArg (fun q => q ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) (e53)
  have e55 : t69 = t80 := by
    exact e54.symm
  have e56 : t4 = t80 := by
    exact by
      calc
        (x ◇ (x ◇ y)) = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e46
        _ = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e55
  have e57 : t85 = t21 := by
    exact e38.symm
  have e58 : t11 = t21 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y) = (((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ y) ◇ y) := e42
        _ = ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e57
  have e59 : t16 = t100 := by
    exact by
      calc
        ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) = (((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := congrArg (fun q => q ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) (e56)
        _ = (((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := congrArg (fun q => ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ q) (e58)
  have e60 : t21 = t100 := by
    exact h ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))
  have e61 : t100 = t21 := by
    exact e60.symm
  have e62 : t17 = t21 := by
    exact by
      calc
        ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) = ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e45
        _ = (((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e59
        _ = ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e61
  have e63 : t75 = t76 := by
    exact congrArg (fun q => q ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) (e62)
  have e64 : t76 = t75 := by
    exact e63.symm
  have e65 : t104 = t103 := by
    exact congrArg (fun q => q ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) (e64)
  have e66 : t103 = t104 := by
    exact e65.symm
  have e67 : t54 = t104 := by
    exact by
      calc
        ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) = (x ◇ (x ◇ y)) := e6
        _ = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e28
        _ = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e66
  have e68 : t82 = t107 := by
    exact congrArg (fun q => q ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) (e67)
  have e69 : t107 = t82 := by
    exact e68.symm
  have e70 : t21 = t82 := by
    exact by
      calc
        ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) = (((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e27
        _ = (((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e69
  have e71 : t76 = t105 := by
    exact congrArg (fun q => q ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) (e70)
  have e72 : t25 = t105 := by
    exact h (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) y (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))
  have e73 : t105 = t25 := by
    exact e72.symm
  have e74 : t25 = t88 := by
    exact h (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) y ((x ◇ y) ◇ ((x ◇ y) ◇ x))
  have e75 : t4 = t54 := by
    exact e6.symm
  have e76 : t4 = t30 := by
    exact h (x ◇ (x ◇ y)) ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) y
  have e77 : t18 = t127 := by
    exact h (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))
  have e78 : t61 = t120 := by
    exact h ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))
  have e79 : t120 = t61 := by
    exact e78.symm
  have e80 : t121 = t86 := by
    exact congrArg (fun q => q ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) (e79)
  have e81 : t10 = t86 := by
    exact h ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)
  have e82 : t86 = t10 := by
    exact e81.symm
  have e83 : t121 = t10 := by
    exact by
      calc
        ((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) := e80
        _ = ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) := e82
  have e84 : t125 = t86 := by
    exact by
      calc
        ((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) := congrArg (fun q => q ◇ ((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) (e79)
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) := congrArg (fun q => ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ q) (e83)
  have e85 : t10 = t126 := by
    exact h ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) y (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))
  have e86 : t61 = t118 := by
    exact h ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))
  have e87 : t106 = t86 := by
    exact congrArg (fun q => ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ q) (e82)
  have e88 : t106 = t10 := by
    exact by
      calc
        (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) := e87
        _ = ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) := e82
  have e89 : t111 = t18 := by
    exact by
      calc
        ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) = (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := congrArg (fun q => q ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) (e88)
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := congrArg (fun q => ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ q) (e49)
  have e90 : t18 = t111 := by
    exact e89.symm
  have e91 : t29 = t118 := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) = (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := congrArg (fun q => q ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) (e90)
        _ = (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := congrArg (fun q => ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ q) (e58)
  have e92 : t118 = t29 := by
    exact e91.symm
  have e93 : t43 = t29 := by
    exact congrArg (fun q => (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ q) (e49)
  have e94 : t29 = t43 := by
    exact e93.symm
  have e95 : t120 = t43 := by
    exact by
      calc
        (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) = ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) := e79
        _ = (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e86
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e92
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e94
  have e96 : t122 = t57 := by
    exact congrArg (fun q => (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ q) (e95)
  have e97 : t57 = t122 := by
    exact e96.symm
  have e98 : t123 = t126 := by
    exact congrArg (fun q => q ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) (e97)
  have e99 : t126 = t123 := by
    exact e98.symm
  have e100 : t125 = t123 := by
    exact by
      calc
        ((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) := e84
        _ = ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) := e82
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e85
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e99
  have e101 : t128 = t127 := by
    exact congrArg (fun q => q ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) (e100)
  have e102 : t127 = t128 := by
    exact e101.symm
  have e103 : t18 = t128 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e77
        _ = (((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e102
  have e104 : t118 = t61 := by
    exact e86.symm
  have e105 : t43 = t120 := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) = ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e93
        _ = (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e91
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) := e104
        _ = (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e78
  have e106 : t57 = t130 := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) = ((((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) := congrArg (fun q => q ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) (e103)
        _ = ((((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := congrArg (fun q => (((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ q) (e105)
  have e107 : t120 = t130 := by
    exact h (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))
  have e108 : t130 = t120 := by
    exact e107.symm
  have e109 : t61 = t114 := by
    exact h ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) y
  have e110 : t108 = t11 := by
    exact congrArg (fun q => q ◇ y) (e88)
  have e111 : t11 = t108 := by
    exact e110.symm
  have e112 : t17 = t108 := by
    exact by
      calc
        ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) = ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e45
        _ = (((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e59
        _ = ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e61
        _ = (((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ y) ◇ y) := e38
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y) := e43
        _ = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ y) := e111
  have e113 : t20 = t114 := by
    exact congrArg (fun q => q ◇ y) (e112)
  have e114 : t114 = t20 := by
    exact e113.symm
  have e115 : t57 = t20 := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) = ((((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e106
        _ = (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e108
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) := e79
        _ = (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ y) ◇ y) := e109
        _ = (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ y) := e114
  have e116 : t68 = t30 := by
    exact congrArg (fun q => q ◇ y) (e115)
  have e117 : t30 = t68 := by
    exact e116.symm
  have e118 : t4 = t68 := by
    exact by
      calc
        (x ◇ (x ◇ y)) = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ y) ◇ y) := e76
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ y) := e117
  have e119 : t5 = t87 := by
    exact congrArg (fun q => q ◇ y) (e118)
  have e120 : t18 = t87 := by
    exact h (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) y
  have e121 : t87 = t18 := by
    exact e120.symm
  have e122 : t18 = t89 := by
    exact h (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ((x ◇ y) ◇ x)
  have e123 : t10 = t83 := by
    exact h ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ((x ◇ y) ◇ x)
  have e124 : t61 = t115 := by
    exact h ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ((x ◇ y) ◇ x)
  have e125 : t40 = t3 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) = ((x ◇ y) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := congrArg (fun q => q ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (e32)
        _ = ((x ◇ y) ◇ x) := congrArg (fun q => (x ◇ y) ◇ q) (e4)
  have e126 : t52 = t7 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) = ((x ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := congrArg (fun q => q ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) (e32)
        _ = ((x ◇ y) ◇ ((x ◇ y) ◇ x)) := congrArg (fun q => (x ◇ y) ◇ q) (e125)
  have e127 : t106 = t2 := by
    exact by
      calc
        (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) := e87
        _ = ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) := e82
        _ = (x ◇ y) := e32
  have e128 : t109 = t7 := by
    exact congrArg (fun q => q ◇ ((x ◇ y) ◇ x)) (e127)
  have e129 : t7 = t109 := by
    exact e128.symm
  have e130 : t52 = t109 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) = ((x ◇ y) ◇ ((x ◇ y) ◇ x)) := e126
        _ = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ ((x ◇ y) ◇ x)) := e129
  have e131 : t62 = t115 := by
    exact congrArg (fun q => q ◇ ((x ◇ y) ◇ x)) (e130)
  have e132 : t115 = t62 := by
    exact e131.symm
  have e133 : t57 = t62 := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) = ((((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e106
        _ = (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e108
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) := e79
        _ = (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) := e124
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ y) ◇ x)) := e132
  have e134 : t71 = t83 := by
    exact congrArg (fun q => q ◇ ((x ◇ y) ◇ x)) (e133)
  have e135 : t83 = t71 := by
    exact e134.symm
  have e136 : t2 = t71 := by
    exact by
      calc
        (x ◇ y) = ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) := e31
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) := e123
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((x ◇ y) ◇ x)) := e135
  have e137 : t7 = t89 := by
    exact congrArg (fun q => q ◇ ((x ◇ y) ◇ x)) (e136)
  have e138 : t89 = t7 := by
    exact e137.symm
  have e139 : t5 = t7 := by
    exact by
      calc
        ((x ◇ (x ◇ y)) ◇ y) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ y) ◇ y) := e119
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e121
        _ = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) := e122
        _ = ((x ◇ y) ◇ ((x ◇ y) ◇ x)) := e138
  have e140 : t9 = t67 := by
    exact by
      calc
        ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ y)) = (((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ y)) := congrArg (fun q => q ◇ ((x ◇ (x ◇ y)) ◇ y)) (e75)
        _ = (((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) := congrArg (fun q => ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ q) (e139)
  have e141 : t18 = t7 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) := e122
        _ = ((x ◇ y) ◇ ((x ◇ y) ◇ x)) := e138
  have e142 : t28 = t88 := by
    exact by
      calc
        (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) = ((((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := congrArg (fun q => q ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (e140)
        _ = ((((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) := congrArg (fun q => (((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ q) (e141)
  have e143 : t88 = t28 := by
    exact e142.symm
  have e144 : t76 = t28 := by
    exact by
      calc
        (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) = ((((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e71
        _ = (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e73
        _ = ((((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) := e74
        _ = (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e143
  have e145 : t89 = t18 := by
    exact e122.symm
  have e146 : t7 = t18 := by
    exact by
      calc
        ((x ◇ y) ◇ ((x ◇ y) ◇ x)) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) := e137
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e145
  have e147 : t96 = t47 := by
    exact by
      calc
        ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) := congrArg (fun q => q ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) (e144)
        _ = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := congrArg (fun q => (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ q) (e146)
  have e148 : t47 = t96 := by
    exact e147.symm
  have e149 : t105 = t76 := by
    exact e71.symm
  have e150 : x = t76 := by
    exact by
      calc
        x = (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e1
        _ = ((((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e72
        _ = (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e149
  have e151 : t10 = t32 := by
    exact h ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ((x ◇ y) ◇ x) x
  have e152 : t18 = t99 := by
    exact h (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))
  have e153 : t10 = t93 := by
    exact h ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))
  have e154 : t61 = t119 := by
    exact h ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))
  have e155 : t34 = t18 := by
    exact congrArg (fun q => ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ q) (e49)
  have e156 : t49 = t27 := by
    exact congrArg (fun q => ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ q) (e155)
  have e157 : t112 = t27 := by
    exact congrArg (fun q => q ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (e88)
  have e158 : t27 = t112 := by
    exact e157.symm
  have e159 : t49 = t112 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) = (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e156
        _ = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e158
  have e160 : t65 = t119 := by
    exact congrArg (fun q => q ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (e159)
  have e161 : t119 = t65 := by
    exact e160.symm
  have e162 : t57 = t65 := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) = ((((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e106
        _ = (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e108
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) := e79
        _ = (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e154
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e161
  have e163 : t79 = t93 := by
    exact congrArg (fun q => q ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (e162)
  have e164 : t93 = t79 := by
    exact e163.symm
  have e165 : t10 = t79 := by
    exact by
      calc
        ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e153
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e164
  have e166 : t27 = t99 := by
    exact congrArg (fun q => q ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (e165)
  have e167 : t99 = t27 := by
    exact e166.symm
  have e168 : t18 = t27 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e152
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e167
  have e169 : t23 = t36 := by
    exact congrArg (fun q => q ◇ y) (e168)
  have e170 : t99 = t18 := by
    exact e152.symm
  have e171 : t54 = t68 := by
    exact by
      calc
        ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) = (x ◇ (x ◇ y)) := e6
        _ = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ y) ◇ y) := e76
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ y) := e117
  have e172 : t63 = t87 := by
    exact congrArg (fun q => q ◇ y) (e171)
  have e173 : t87 = t63 := by
    exact e172.symm
  have e174 : t27 = t63 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e166
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e170
        _ = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ y) ◇ y) := e120
        _ = (((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ y) := e173
  have e175 : t36 = t84 := by
    exact congrArg (fun q => q ◇ y) (e174)
  have e176 : t25 = t84 := by
    exact h (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) y y
  have e177 : t84 = t25 := by
    exact e176.symm
  have e178 : t23 = x := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y) = ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ y) := e169
        _ = ((((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ y) ◇ y) := e175
        _ = (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e177
        _ = x := e4
  have e179 : t44 = t22 := by
    exact congrArg (fun q => (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ q) (e178)
  have e180 : t18 = t91 := by
    exact h (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ((x ◇ y) ◇ ((x ◇ y) ◇ x))
  have e181 : t10 = t41 := by
    exact h ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ((x ◇ y) ◇ x) ((x ◇ y) ◇ ((x ◇ y) ◇ x))
  have e182 : t61 = t116 := by
    exact h ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ((x ◇ y) ◇ ((x ◇ y) ◇ x))
  have e183 : t13 = t7 := by
    exact congrArg (fun q => q ◇ ((x ◇ y) ◇ x)) (e32)
  have e184 : t7 = t13 := by
    exact e183.symm
  have e185 : t110 = t19 := by
    exact by
      calc
        ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) = (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) := congrArg (fun q => q ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) (e88)
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) := congrArg (fun q => ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ q) (e184)
  have e186 : t19 = t110 := by
    exact e185.symm
  have e187 : t26 = t116 := by
    exact congrArg (fun q => q ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) (e186)
  have e188 : t116 = t26 := by
    exact e187.symm
  have e189 : t57 = t26 := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) = ((((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) := e106
        _ = (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e108
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) := e79
        _ = (((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) := e182
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) := e188
  have e190 : t72 = t41 := by
    exact congrArg (fun q => q ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) (e189)
  have e191 : t41 = t72 := by
    exact e190.symm
  have e192 : t10 = t72 := by
    exact by
      calc
        ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) := e181
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) := e191
  have e193 : t19 = t91 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) := congrArg (fun q => q ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) (e192)
        _ = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) := congrArg (fun q => (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ q) (e183)
  have e194 : t91 = t19 := by
    exact e193.symm
  have e195 : t18 = t19 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) := e180
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) := e194
  have e196 : t22 = t24 := by
    exact congrArg (fun q => q ◇ x) (e195)
  have e197 : t44 = t24 := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) = ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ x) := e179
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) := e196
  have e198 : t59 = t32 := by
    exact by
      calc
        (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := congrArg (fun q => q ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) (e197)
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ x) := congrArg (fun q => ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ q) (e4)
  have e199 : t32 = t59 := by
    exact e198.symm
  have e200 : t2 = t59 := by
    exact by
      calc
        (x ◇ y) = ((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) := e31
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ x) := e151
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e199
  have e201 : t3 = t81 := by
    exact by
      calc
        ((x ◇ y) ◇ x) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ x) := congrArg (fun q => q ◇ x) (e200)
        _ = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := congrArg (fun q => (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ q) (e1)
  have e202 : t18 = t81 := by
    exact h (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) y (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))
  have e203 : t81 = t18 := by
    exact e202.symm
  have e204 : t3 = t7 := by
    exact by
      calc
        ((x ◇ y) ◇ x) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e201
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) := e203
        _ = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))))) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) := e122
        _ = ((x ◇ y) ◇ ((x ◇ y) ◇ x)) := e138
  have e205 : t6 = t96 := by
    exact by
      calc
        (x ◇ ((x ◇ y) ◇ x)) = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ y) ◇ x)) := congrArg (fun q => q ◇ ((x ◇ y) ◇ x)) (e150)
        _ = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) := congrArg (fun q => (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ q) (e204)
  have e206 : t96 = t6 := by
    exact e205.symm
  have e207 : t1 = t6 := by
    exact by
      calc
        (x ◇ x) = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e24
        _ = (x ◇ (x ◇ y)) := e25
        _ = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) := e26
        _ = ((((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ y)) ◇ ((x ◇ (x ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y))) ◇ (((((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ x))) ◇ x) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ x)) ◇ y) ◇ y) ◇ y)))) ◇ ((x ◇ y) ◇ ((x ◇ y) ◇ x))) := e148
        _ = (x ◇ ((x ◇ y) ◇ x)) := e206
  exact e207
