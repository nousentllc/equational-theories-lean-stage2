import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x
  intro y
  let t1 : G := (x ◇ x)
  let t2 : G := (x ◇ y)
  let t3 : G := (t2 ◇ x)
  let t4 : G := (t2 ◇ y)
  let t5 : G := (x ◇ t3)
  let t6 : G := (t2 ◇ t4)
  let t7 : G := (x ◇ t5)
  let t8 : G := (t6 ◇ x)
  let t9 : G := (t6 ◇ y)
  let t10 : G := (t9 ◇ y)
  let t11 : G := (t7 ◇ t4)
  let t12 : G := (t6 ◇ t8)
  let t13 : G := (t10 ◇ y)
  let t14 : G := (t10 ◇ t4)
  let t15 : G := (t11 ◇ t4)
  let t16 : G := (t10 ◇ t8)
  let t17 : G := (t7 ◇ t11)
  let t18 : G := (t12 ◇ t3)
  let t19 : G := (t2 ◇ t13)
  let t20 : G := (t15 ◇ t3)
  let t21 : G := (t10 ◇ t13)
  let t22 : G := (t6 ◇ t15)
  let t23 : G := (t18 ◇ t3)
  let t24 : G := (t10 ◇ t14)
  let t25 : G := (t17 ◇ t5)
  let t26 : G := (t7 ◇ t17)
  let t27 : G := (t10 ◇ t16)
  let t28 : G := (t17 ◇ t11)
  let t29 : G := (t11 ◇ t17)
  let t30 : G := (t15 ◇ t17)
  let t31 : G := (t17 ◇ t15)
  let t32 : G := (t12 ◇ t18)
  let t33 : G := (x ◇ t20)
  let t34 : G := (t23 ◇ y)
  let t35 : G := (t21 ◇ t8)
  let t36 : G := (t23 ◇ t9)
  let t37 : G := (t10 ◇ t23)
  let t38 : G := (t31 ◇ x)
  let t39 : G := (t15 ◇ t20)
  let t40 : G := (t27 ◇ t9)
  let t41 : G := (t32 ◇ y)
  let t42 : G := (t23 ◇ t15)
  let t43 : G := (t21 ◇ t18)
  let t44 : G := (t17 ◇ t25)
  let t45 : G := (t32 ◇ t9)
  let t46 : G := (t17 ◇ t28)
  let t47 : G := (t31 ◇ t15)
  let t48 : G := (t15 ◇ t30)
  let t49 : G := (t27 ◇ t23)
  let t50 : G := (t17 ◇ t31)
  let t51 : G := (t32 ◇ t18)
  let t52 : G := (t32 ◇ t23)
  let t53 : G := (t39 ◇ y)
  let t54 : G := (t35 ◇ t8)
  let t55 : G := (t41 ◇ y)
  let t56 : G := (t39 ◇ t5)
  let t57 : G := (t40 ◇ t9)
  let t58 : G := (t39 ◇ t11)
  let t59 : G := (t6 ◇ t42)
  let t60 : G := (t23 ◇ t34)
  let t61 : G := (t46 ◇ y)
  let t62 : G := (t47 ◇ y)
  let t63 : G := (t39 ◇ t15)
  let t64 : G := (t45 ◇ t9)
  let t65 : G := (t46 ◇ t5)
  let t66 : G := (t47 ◇ t5)
  let t67 : G := (t43 ◇ t18)
  let t68 : G := (t23 ◇ t42)
  let t69 : G := (t46 ◇ t15)
  let t70 : G := (t15 ◇ t47)
  let t71 : G := (t47 ◇ t17)
  let t72 : G := (t45 ◇ t34)
  let t73 : G := (t50 ◇ t17)
  let t74 : G := (t48 ◇ t23)
  let t75 : G := (t51 ◇ t18)
  let t76 : G := (t49 ◇ t23)
  let t77 : G := (t52 ◇ t23)
  let t78 : G := (t44 ◇ t47)
  let t79 : G := (t48 ◇ t47)
  let t80 : G := (t53 ◇ y)
  let t81 : G := (t56 ◇ t5)
  let t82 : G := (t60 ◇ y)
  let t83 : G := (t61 ◇ y)
  let t84 : G := (t60 ◇ t9)
  let t85 : G := (t58 ◇ t11)
  let t86 : G := (t65 ◇ t5)
  let t87 : G := (t7 ◇ t66)
  let t88 : G := (t63 ◇ t15)
  let t89 : G := (t68 ◇ t8)
  let t90 : G := (t73 ◇ t4)
  let t91 : G := (t7 ◇ t71)
  let t92 : G := (t69 ◇ t15)
  let t93 : G := (t68 ◇ t18)
  let t94 : G := (t68 ◇ t23)
  let t95 : G := (t73 ◇ t17)
  let t96 : G := (t74 ◇ t23)
  let t97 : G := (t47 ◇ t62)
  let t98 : G := (t48 ◇ t62)
  let t99 : G := (t47 ◇ t66)
  let t100 : G := (t47 ◇ t71)
  let t101 : G := (t78 ◇ t47)
  let t102 : G := (t79 ◇ t47)
  let t103 : G := (t82 ◇ y)
  let t104 : G := (t84 ◇ x)
  let t105 : G := (t84 ◇ t9)
  let t106 : G := (t89 ◇ t8)
  let t107 : G := (t94 ◇ t14)
  let t108 : G := (t93 ◇ t18)
  let t109 : G := (t94 ◇ t23)
  let t110 : G := (t100 ◇ y)
  let t111 : G := (t99 ◇ t17)
  let t112 : G := (t97 ◇ t23)
  let t113 : G := (t99 ◇ t47)
  let t114 : G := (t110 ◇ y)
  let t115 : G := (t112 ◇ t3)
  let t116 : G := (t111 ◇ t17)
  let t117 : G := (t112 ◇ t23)
  let t118 : G := (t113 ◇ t30)
  let t119 : G := (t113 ◇ t47)
  have e1 : x = t15 := by
    exact h x ((x ◇ y) ◇ x) ((x ◇ y) ◇ y)
  have e2 : t15 = t88 := by
    exact h (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ((x ◇ y) ◇ x) (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))
  have e3 : t17 = t92 := by
    exact h ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))
  have e4 : t15 = x := by
    exact e1.symm
  have e5 : t20 = t5 := by
    exact congrArg (fun q => q ◇ ((x ◇ y) ◇ x)) (e4)
  have e6 : t39 = t7 := by
    exact by
      calc
        ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) = (x ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) := congrArg (fun q => q ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) (e4)
        _ = (x ◇ (x ◇ ((x ◇ y) ◇ x))) := congrArg (fun q => x ◇ q) (e5)
  have e7 : t7 = t47 := by
    exact h (x ◇ (x ◇ ((x ◇ y) ◇ x))) ((x ◇ y) ◇ y) (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))
  have e8 : t58 = t17 := by
    exact congrArg (fun q => q ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) (e6)
  have e9 : t17 = t58 := by
    exact e8.symm
  have e10 : t28 = t85 := by
    exact congrArg (fun q => q ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) (e9)
  have e11 : t15 = t85 := by
    exact h (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ((x ◇ y) ◇ x) ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))
  have e12 : t85 = t15 := by
    exact e11.symm
  have e13 : t28 = t15 := by
    exact by
      calc
        (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) = ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) := e10
        _ = (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) := e12
  have e14 : t46 = t31 := by
    exact congrArg (fun q => ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ q) (e13)
  have e15 : t69 = t47 := by
    exact congrArg (fun q => q ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) (e14)
  have e16 : t47 = t69 := by
    exact e15.symm
  have e17 : t39 = t69 := by
    exact by
      calc
        ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) = (x ◇ (x ◇ ((x ◇ y) ◇ x))) := e6
        _ = ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e7
        _ = ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e16
  have e18 : t63 = t92 := by
    exact congrArg (fun q => q ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) (e17)
  have e19 : t92 = t63 := by
    exact e18.symm
  have e20 : t17 = t63 := by
    exact by
      calc
        ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e3
        _ = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e19
  have e21 : t31 = t88 := by
    exact congrArg (fun q => q ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) (e20)
  have e22 : t88 = t31 := by
    exact e21.symm
  have e23 : x = t31 := by
    exact by
      calc
        x = (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) := e1
        _ = ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e2
        _ = (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e22
  have e24 : t1 = t47 := by
    exact by
      calc
        (x ◇ x) = ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ x) := congrArg (fun q => q ◇ x) (e23)
        _ = ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := congrArg (fun q => (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ q) (e1)
  have e25 : t47 = t117 := by
    exact h ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) y (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))
  have e26 : t15 = t96 := by
    exact h (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))
  have e27 : t47 = t119 := by
    exact h ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) (x ◇ ((x ◇ y) ◇ x)) ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))
  have e28 : t15 = t102 := by
    exact h (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))
  have e29 : t47 = t7 := by
    exact e7.symm
  have e30 : t88 = t15 := by
    exact e2.symm
  have e31 : t46 = x := by
    exact by
      calc
        (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) = (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e14
        _ = ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e21
        _ = (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) := e30
        _ = x := e4
  have e32 : t65 = t7 := by
    exact congrArg (fun q => q ◇ (x ◇ ((x ◇ y) ◇ x))) (e31)
  have e33 : t7 = t65 := by
    exact e32.symm
  have e34 : t47 = t65 := by
    exact by
      calc
        ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) = (x ◇ (x ◇ ((x ◇ y) ◇ x))) := e29
        _ = ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ (x ◇ ((x ◇ y) ◇ x))) := e33
  have e35 : t66 = t86 := by
    exact congrArg (fun q => q ◇ (x ◇ ((x ◇ y) ◇ x))) (e34)
  have e36 : t17 = t86 := by
    exact h ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) (x ◇ ((x ◇ y) ◇ x))
  have e37 : t86 = t17 := by
    exact e36.symm
  have e38 : t17 = t83 := by
    exact h ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) y
  have e39 : t61 = t2 := by
    exact congrArg (fun q => q ◇ y) (e31)
  have e40 : t2 = t61 := by
    exact e39.symm
  have e41 : t4 = t83 := by
    exact congrArg (fun q => q ◇ y) (e40)
  have e42 : t83 = t4 := by
    exact e41.symm
  have e43 : t66 = t4 := by
    exact by
      calc
        (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x))) = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ (x ◇ ((x ◇ y) ◇ x))) := e35
        _ = ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) := e37
        _ = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ y) ◇ y) := e38
        _ = ((x ◇ y) ◇ y) := e42
  have e44 : t99 = t11 := by
    exact by
      calc
        (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) = ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) := congrArg (fun q => q ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) (e29)
        _ = ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) := congrArg (fun q => (x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ q) (e43)
  have e45 : t47 = t116 := by
    exact h ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) (x ◇ ((x ◇ y) ◇ x)) ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))
  have e46 : t31 = t15 := by
    exact by
      calc
        (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) = ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e21
        _ = (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) := e30
  have e47 : t50 = t31 := by
    exact congrArg (fun q => ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ q) (e46)
  have e48 : t17 = t4 := by
    exact by
      calc
        ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ y) ◇ y) := e38
        _ = ((x ◇ y) ◇ y) := e42
  have e49 : t111 = t15 := by
    exact by
      calc
        ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) = (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) := congrArg (fun q => q ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) (e44)
        _ = (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) := congrArg (fun q => ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ q) (e48)
  have e50 : t15 = t111 := by
    exact e49.symm
  have e51 : t50 = t111 := by
    exact by
      calc
        (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) = (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e47
        _ = ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e21
        _ = (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) := e30
        _ = ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) := e50
  have e52 : t73 = t116 := by
    exact congrArg (fun q => q ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) (e51)
  have e53 : t116 = t73 := by
    exact e52.symm
  have e54 : t7 = t73 := by
    exact by
      calc
        (x ◇ (x ◇ ((x ◇ y) ◇ x))) = ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e7
        _ = (((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) := e45
        _ = ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) := e53
  have e55 : t83 = t17 := by
    exact e38.symm
  have e56 : t4 = t17 := by
    exact by
      calc
        ((x ◇ y) ◇ y) = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ y) ◇ y) := e41
        _ = ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) := e55
  have e57 : t11 = t95 := by
    exact by
      calc
        ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ ((x ◇ y) ◇ y)) := congrArg (fun q => q ◇ ((x ◇ y) ◇ y)) (e54)
        _ = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) := congrArg (fun q => ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ q) (e56)
  have e58 : t17 = t95 := by
    exact h ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))
  have e59 : t95 = t17 := by
    exact e58.symm
  have e60 : t17 = t101 := by
    exact h ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) (x ◇ ((x ◇ y) ◇ x)) ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))
  have e61 : t39 = t65 := by
    exact by
      calc
        ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) = (x ◇ (x ◇ ((x ◇ y) ◇ x))) := e6
        _ = ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ (x ◇ ((x ◇ y) ◇ x))) := e33
  have e62 : t56 = t86 := by
    exact congrArg (fun q => q ◇ (x ◇ ((x ◇ y) ◇ x))) (e61)
  have e63 : t86 = t56 := by
    exact e62.symm
  have e64 : t17 = t56 := by
    exact by
      calc
        ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ (x ◇ ((x ◇ y) ◇ x))) := e36
        _ = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) ◇ (x ◇ ((x ◇ y) ◇ x))) := e63
  have e65 : t25 = t81 := by
    exact congrArg (fun q => q ◇ (x ◇ ((x ◇ y) ◇ x))) (e64)
  have e66 : t15 = t81 := by
    exact h (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ((x ◇ y) ◇ x) (x ◇ ((x ◇ y) ◇ x))
  have e67 : t81 = t15 := by
    exact e66.symm
  have e68 : t25 = t15 := by
    exact by
      calc
        (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x))) = ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ (x ◇ ((x ◇ y) ◇ x))) := e65
        _ = (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) := e67
  have e69 : t44 = t31 := by
    exact congrArg (fun q => ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ q) (e68)
  have e70 : t44 = t15 := by
    exact by
      calc
        (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) = (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e69
        _ = ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e21
        _ = (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) := e30
  have e71 : t30 = t116 := by
    exact congrArg (fun q => q ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) (e50)
  have e72 : t116 = t30 := by
    exact e71.symm
  have e73 : t47 = t30 := by
    exact by
      calc
        ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) = (((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) := e45
        _ = ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) := e72
  have e74 : t78 = t48 := by
    exact by
      calc
        ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) = ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) := congrArg (fun q => q ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) (e70)
        _ = ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) := congrArg (fun q => (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ q) (e73)
  have e75 : t48 = t78 := by
    exact e74.symm
  have e76 : t79 = t101 := by
    exact congrArg (fun q => q ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) (e75)
  have e77 : t101 = t79 := by
    exact e76.symm
  have e78 : t99 = t79 := by
    exact by
      calc
        (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) = ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) := e44
        _ = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) := e57
        _ = ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) := e59
        _ = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) := e60
        _ = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) := e77
  have e79 : t113 = t102 := by
    exact congrArg (fun q => q ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) (e78)
  have e80 : t102 = t113 := by
    exact e79.symm
  have e81 : t15 = t113 := by
    exact by
      calc
        (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) = ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) := e28
        _ = ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) := e80
  have e82 : t116 = t47 := by
    exact e45.symm
  have e83 : t30 = t47 := by
    exact by
      calc
        ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) = (((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) := e71
        _ = ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e82
  have e84 : t48 = t119 := by
    exact by
      calc
        ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) = (((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) := congrArg (fun q => q ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) (e81)
        _ = (((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) := congrArg (fun q => ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ q) (e83)
  have e85 : t119 = t48 := by
    exact e84.symm
  have e86 : t47 = t48 := by
    exact by
      calc
        ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) = (((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (x ◇ ((x ◇ y) ◇ x)))) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) := e27
        _ = ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) := e85
  have e87 : t47 = t114 := by
    exact h ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) y
  have e88 : t23 = t105 := by
    exact h (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) y (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)
  have e89 : t12 = t75 := by
    exact h (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ((x ◇ y) ◇ x) ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))
  have e90 : t2 = t10 := by
    exact h (x ◇ y) y y
  have e91 : t10 = t2 := by
    exact e90.symm
  have e92 : t13 = t4 := by
    exact congrArg (fun q => q ◇ y) (e91)
  have e93 : t21 = t6 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ y)) = ((x ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ y)) := congrArg (fun q => q ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ y)) (e91)
        _ = ((x ◇ y) ◇ ((x ◇ y) ◇ y)) := congrArg (fun q => (x ◇ y) ◇ q) (e92)
  have e94 : t6 = t23 := by
    exact h ((x ◇ y) ◇ ((x ◇ y) ◇ y)) x ((x ◇ y) ◇ x)
  have e95 : t23 = t108 := by
    exact h (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))
  have e96 : t23 = t6 := by
    exact e94.symm
  have e97 : t42 = t8 := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) = (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := congrArg (fun q => q ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) (e96)
        _ = (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x) := congrArg (fun q => ((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ q) (e4)
  have e98 : t68 = t12 := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) = (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) := congrArg (fun q => q ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) (e96)
        _ = (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) := congrArg (fun q => ((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ q) (e97)
  have e99 : t93 = t32 := by
    exact congrArg (fun q => q ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) (e98)
  have e100 : t32 = t93 := by
    exact e99.symm
  have e101 : t51 = t108 := by
    exact congrArg (fun q => q ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) (e100)
  have e102 : t108 = t51 := by
    exact e101.symm
  have e103 : t21 = t51 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ y)) = ((x ◇ y) ◇ ((x ◇ y) ◇ y)) := e93
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) := e94
        _ = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e95
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e102
  have e104 : t43 = t75 := by
    exact congrArg (fun q => q ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) (e103)
  have e105 : t75 = t43 := by
    exact e104.symm
  have e106 : t12 = t43 := by
    exact by
      calc
        (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) = ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e89
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e105
  have e107 : t32 = t67 := by
    exact congrArg (fun q => q ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) (e106)
  have e108 : t10 = t67 := by
    exact h ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) y ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))
  have e109 : t67 = t10 := by
    exact e108.symm
  have e110 : t10 = t57 := by
    exact h ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x) (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)
  have e111 : t10 = t54 := by
    exact h ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) y (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)
  have e112 : t35 = t12 := by
    exact congrArg (fun q => q ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) (e93)
  have e113 : t12 = t35 := by
    exact e112.symm
  have e114 : t68 = t35 := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) = (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) := e98
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) := e113
  have e115 : t89 = t54 := by
    exact congrArg (fun q => q ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) (e114)
  have e116 : t54 = t89 := by
    exact e115.symm
  have e117 : t10 = t89 := by
    exact by
      calc
        ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) = (((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) := e111
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) := e116
  have e118 : t16 = t106 := by
    exact congrArg (fun q => q ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) (e117)
  have e119 : t23 = t106 := by
    exact h (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)
  have e120 : t106 = t23 := by
    exact e119.symm
  have e121 : t14 = t6 := by
    exact congrArg (fun q => q ◇ ((x ◇ y) ◇ y)) (e91)
  have e122 : t6 = t14 := by
    exact e121.symm
  have e123 : t16 = t14 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) := e118
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) := e120
        _ = ((x ◇ y) ◇ ((x ◇ y) ◇ y)) := e96
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ y)) := e122
  have e124 : t27 = t24 := by
    exact congrArg (fun q => ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ q) (e123)
  have e125 : t10 = t76 := by
    exact h ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x) (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))
  have e126 : t12 = t77 := by
    exact h (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ((x ◇ y) ◇ x) (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))
  have e127 : t32 = t10 := by
    exact by
      calc
        ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) = (((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e107
        _ = ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) := e109
  have e128 : t23 = t14 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) = ((x ◇ y) ◇ ((x ◇ y) ◇ y)) := e96
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ y)) := e122
  have e129 : t52 = t24 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) := congrArg (fun q => q ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) (e127)
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ y))) := congrArg (fun q => ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ q) (e128)
  have e130 : t24 = t52 := by
    exact e129.symm
  have e131 : t27 = t52 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x))) = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ y))) := e124
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e130
  have e132 : t49 = t77 := by
    exact congrArg (fun q => q ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) (e131)
  have e133 : t77 = t49 := by
    exact e132.symm
  have e134 : t68 = t49 := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) = (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) := e98
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e126
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e133
  have e135 : t94 = t76 := by
    exact congrArg (fun q => q ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) (e134)
  have e136 : t76 = t94 := by
    exact e135.symm
  have e137 : t10 = t94 := by
    exact by
      calc
        ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) = (((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e125
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e136
  have e138 : t14 = t23 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ y)) = ((x ◇ y) ◇ ((x ◇ y) ◇ y)) := e121
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) := e94
  have e139 : t24 = t109 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ y))) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ y))) := congrArg (fun q => q ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ y))) (e137)
        _ = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) := congrArg (fun q => (((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ q) (e138)
  have e140 : t23 = t109 := by
    exact h (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))
  have e141 : t109 = t23 := by
    exact e140.symm
  have e142 : t27 = t23 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x))) = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ ((x ◇ y) ◇ y))) := e124
        _ = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e139
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) := e141
  have e143 : t34 = t9 := by
    exact congrArg (fun q => q ◇ y) (e96)
  have e144 : t9 = t34 := by
    exact e143.symm
  have e145 : t40 = t60 := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x))) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) = ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) := congrArg (fun q => q ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) (e142)
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) := congrArg (fun q => (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ q) (e144)
  have e146 : t60 = t40 := by
    exact e145.symm
  have e147 : t84 = t57 := by
    exact congrArg (fun q => q ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) (e146)
  have e148 : t57 = t84 := by
    exact e147.symm
  have e149 : t32 = t84 := by
    exact by
      calc
        ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) = (((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e107
        _ = ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) := e109
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x))) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) := e110
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) := e148
  have e150 : t45 = t105 := by
    exact congrArg (fun q => q ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) (e149)
  have e151 : t105 = t45 := by
    exact e150.symm
  have e152 : t23 = t45 := by
    exact by
      calc
        (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) := e88
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) := e151
  have e153 : t60 = t64 := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) = ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) := congrArg (fun q => q ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) (e152)
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) := congrArg (fun q => (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) ◇ q) (e143)
  have e154 : t12 = t64 := by
    exact h (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ((x ◇ y) ◇ x) (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)
  have e155 : t64 = t12 := by
    exact e154.symm
  have e156 : t12 = t55 := by
    exact h (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ((x ◇ y) ◇ x) y
  have e157 : t71 = t11 := by
    exact by
      calc
        (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) = ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) := congrArg (fun q => q ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) (e29)
        _ = ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) := congrArg (fun q => (x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ q) (e48)
  have e158 : t100 = t17 := by
    exact by
      calc
        (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) = ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) := congrArg (fun q => q ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) (e29)
        _ = ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) := congrArg (fun q => (x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ q) (e157)
  have e159 : t32 = t2 := by
    exact by
      calc
        ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) = (((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ y)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e107
        _ = ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) := e109
        _ = (x ◇ y) := e91
  have e160 : t41 = t4 := by
    exact congrArg (fun q => q ◇ y) (e159)
  have e161 : t4 = t41 := by
    exact e160.symm
  have e162 : t100 = t41 := by
    exact by
      calc
        (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) = ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) := e158
        _ = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)))) ◇ y) ◇ y) := e38
        _ = ((x ◇ y) ◇ y) := e42
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ y) := e161
  have e163 : t110 = t55 := by
    exact congrArg (fun q => q ◇ y) (e162)
  have e164 : t55 = t110 := by
    exact e163.symm
  have e165 : t60 = t110 := by
    exact by
      calc
        ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) = ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) := e153
        _ = (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) := e155
        _ = ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ y) ◇ y) := e156
        _ = ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) ◇ y) := e164
  have e166 : t82 = t114 := by
    exact congrArg (fun q => q ◇ y) (e165)
  have e167 : t114 = t82 := by
    exact e166.symm
  have e168 : t47 = t82 := by
    exact by
      calc
        ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) = (((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) ◇ y) ◇ y) := e87
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) ◇ y) := e167
  have e169 : t62 = t103 := by
    exact congrArg (fun q => q ◇ y) (e168)
  have e170 : t23 = t103 := by
    exact h (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) y y
  have e171 : t103 = t23 := by
    exact e170.symm
  have e172 : t62 = t23 := by
    exact by
      calc
        (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ y) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) ◇ y) ◇ y) := e169
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) := e171
  have e173 : t97 = t74 := by
    exact by
      calc
        (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ y)) = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ y)) := congrArg (fun q => q ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ y)) (e86)
        _ = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) := congrArg (fun q => ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) ◇ q) (e172)
  have e174 : t112 = t96 := by
    exact congrArg (fun q => q ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) (e173)
  have e175 : t96 = t112 := by
    exact e174.symm
  have e176 : x = t112 := by
    exact by
      calc
        x = (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) := e1
        _ = ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e26
        _ = ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e175
  have e177 : t2 = t84 := by
    exact by
      calc
        (x ◇ y) = ((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) := e90
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) ◇ y) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x))) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) := e110
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) := e148
  have e178 : t15 = t80 := by
    exact h (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ((x ◇ y) ◇ x) y
  have e179 : t39 = t82 := by
    exact by
      calc
        ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) = (x ◇ (x ◇ ((x ◇ y) ◇ x))) := e6
        _ = ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e7
        _ = (((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))))) ◇ y) ◇ y) := e87
        _ = (((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) ◇ y) := e167
  have e180 : t53 = t103 := by
    exact congrArg (fun q => q ◇ y) (e179)
  have e181 : t103 = t53 := by
    exact e180.symm
  have e182 : t6 = t53 := by
    exact by
      calc
        ((x ◇ y) ◇ ((x ◇ y) ◇ y)) = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) := e94
        _ = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) ◇ y) ◇ y) := e170
        _ = (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) ◇ y) := e181
  have e183 : t9 = t80 := by
    exact congrArg (fun q => q ◇ y) (e182)
  have e184 : t80 = t9 := by
    exact e183.symm
  have e185 : x = t9 := by
    exact by
      calc
        x = (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) := e1
        _ = ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ x))) ◇ y) ◇ y) := e178
        _ = (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y) := e184
  have e186 : t3 = t105 := by
    exact by
      calc
        ((x ◇ y) ◇ x) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) ◇ x) := congrArg (fun q => q ◇ x) (e177)
        _ = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) := congrArg (fun q => (((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) ◇ q) (e185)
  have e187 : t105 = t23 := by
    exact e88.symm
  have e188 : t3 = t23 := by
    exact by
      calc
        ((x ◇ y) ◇ x) = ((((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ y)) := e186
        _ = (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x)) := e187
  have e189 : t5 = t117 := by
    exact by
      calc
        (x ◇ ((x ◇ y) ◇ x)) = (((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ x)) := congrArg (fun q => q ◇ ((x ◇ y) ◇ x)) (e176)
        _ = (((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) := congrArg (fun q => ((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ q) (e188)
  have e190 : t117 = t5 := by
    exact e189.symm
  have e191 : t1 = t5 := by
    exact by
      calc
        (x ◇ x) = ((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) := e24
        _ = (((((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ (((x ◇ (x ◇ ((x ◇ y) ◇ x))) ◇ ((x ◇ y) ◇ y)) ◇ ((x ◇ y) ◇ y))) ◇ y)) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) ◇ (((((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ (((x ◇ y) ◇ ((x ◇ y) ◇ y)) ◇ x)) ◇ ((x ◇ y) ◇ x)) ◇ ((x ◇ y) ◇ x))) := e25
        _ = (x ◇ ((x ◇ y) ◇ x)) := e190
  exact e191
