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
  let t20 : G := (t15 ◇ t3)
  let t21 : G := (t10 ◇ t13)
  let t23 : G := (t18 ◇ t3)
  let t24 : G := (t10 ◇ t14)
  let t25 : G := (t17 ◇ t5)
  let t27 : G := (t10 ◇ t16)
  let t28 : G := (t17 ◇ t11)
  let t30 : G := (t15 ◇ t17)
  let t31 : G := (t17 ◇ t15)
  let t32 : G := (t12 ◇ t18)
  let t34 : G := (t23 ◇ y)
  let t35 : G := (t21 ◇ t8)
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
  let t71 : G := (t47 ◇ t17)
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
  let t88 : G := (t63 ◇ t15)
  let t89 : G := (t68 ◇ t8)
  let t92 : G := (t69 ◇ t15)
  let t93 : G := (t68 ◇ t18)
  let t94 : G := (t68 ◇ t23)
  let t95 : G := (t73 ◇ t17)
  let t96 : G := (t74 ◇ t23)
  let t97 : G := (t47 ◇ t62)
  let t99 : G := (t47 ◇ t66)
  let t100 : G := (t47 ◇ t71)
  let t101 : G := (t78 ◇ t47)
  let t102 : G := (t79 ◇ t47)
  let t103 : G := (t82 ◇ y)
  let t105 : G := (t84 ◇ t9)
  let t106 : G := (t89 ◇ t8)
  let t108 : G := (t93 ◇ t18)
  let t109 : G := (t94 ◇ t23)
  let t110 : G := (t100 ◇ y)
  let t111 : G := (t99 ◇ t17)
  let t112 : G := (t97 ◇ t23)
  let t113 : G := (t99 ◇ t47)
  let t114 : G := (t110 ◇ y)
  let t116 : G := (t111 ◇ t17)
  let t117 : G := (t112 ◇ t23)
  let t119 : G := (t113 ◇ t47)
  have e1 := by
    exact h x (t2 ◇ x) (t2 ◇ y)
  have e2 := by
    exact h (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) (t2 ◇ x) (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))
  have e3 := by
    exact h ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))
  have e4 := by
    exact e1.symm
  have e5 := by
    exact congrArg (fun q => q ◇ (t2 ◇ x)) (e4)
  have e6 := by
    exact by
      calc
        ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) = (x ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) := congrArg (fun q => q ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) (e4)
        _ = (x ◇ (x ◇ (t2 ◇ x))) := congrArg (fun q => x ◇ q) (e5)
  have e7 := by
    exact h (x ◇ (x ◇ (t2 ◇ x))) (t2 ◇ y) (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))
  have e8 := by
    exact congrArg (fun q => q ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) (e6)
  have e9 := by
    exact e8.symm
  have e10 := by
    exact congrArg (fun q => q ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) (e9)
  have e11 := by
    exact h (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) (t2 ◇ x) ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))
  have e12 := by
    exact e11.symm
  have e13 := by
    exact by
      calc
        (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) = ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) := e10
        _ = (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) := e12
  have e14 := by
    exact congrArg (fun q => ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ q) (e13)
  have e15 := by
    exact congrArg (fun q => q ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) (e14)
  have e16 := by
    exact e15.symm
  have e17 := by
    exact by
      calc
        ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) = (x ◇ (x ◇ (t2 ◇ x))) := e6
        _ = ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e7
        _ = ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e16
  have e18 := by
    exact congrArg (fun q => q ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) (e17)
  have e19 := by
    exact e18.symm
  have e20 := by
    exact by
      calc
        ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e3
        _ = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e19
  have e21 := by
    exact congrArg (fun q => q ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) (e20)
  have e22 := by
    exact e21.symm
  have e23 := by
    exact by
      calc
        x = (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) := e1
        _ = ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e2
        _ = (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e22
  have e24 := by
    exact by
      calc
        t1 = ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ x) := congrArg (fun q => q ◇ x) (e23)
        _ = ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := congrArg (fun q => (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ q) (e1)
  have e25 := by
    exact h ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) y ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))
  have e26 := by
    exact h (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))
  have e27 := by
    exact h ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) (x ◇ (t2 ◇ x)) ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))
  have e28 := by
    exact h (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))
  have e29 := by
    exact e7.symm
  have e30 := by
    exact e2.symm
  have e31 := by
    exact by
      calc
        (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) = (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e14
        _ = ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e21
        _ = (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) := e30
        _ = x := e4
  have e32 := by
    exact congrArg (fun q => q ◇ (x ◇ (t2 ◇ x))) (e31)
  have e33 := by
    exact e32.symm
  have e34 := by
    exact by
      calc
        ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) = (x ◇ (x ◇ (t2 ◇ x))) := e29
        _ = ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ (x ◇ (t2 ◇ x))) := e33
  have e35 := by
    exact congrArg (fun q => q ◇ (x ◇ (t2 ◇ x))) (e34)
  have e36 := by
    exact h ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) (x ◇ (t2 ◇ x))
  have e37 := by
    exact e36.symm
  have e38 := by
    exact h ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) y
  have e39 := by
    exact congrArg (fun q => q ◇ y) (e31)
  have e40 := by
    exact e39.symm
  have e41 := by
    exact congrArg (fun q => q ◇ y) (e40)
  have e42 := by
    exact e41.symm
  have e43 := by
    exact by
      calc
        (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x))) = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ (x ◇ (t2 ◇ x))) ◇ (x ◇ (t2 ◇ x))) := e35
        _ = ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) := e37
        _ = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ y) ◇ y) := e38
        _ = (t2 ◇ y) := e42
  have e44 := by
    exact by
      calc
        (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) = ((x ◇ (x ◇ (t2 ◇ x))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) := congrArg (fun q => q ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) (e29)
        _ = ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) := congrArg (fun q => (x ◇ (x ◇ (t2 ◇ x))) ◇ q) (e43)
  have e45 := by
    exact h ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) (x ◇ (t2 ◇ x)) ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))
  have e46 := by
    exact by
      calc
        (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) = ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e21
        _ = (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) := e30
  have e47 := by
    exact congrArg (fun q => ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ q) (e46)
  have e48 := by
    exact by
      calc
        ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ y) ◇ y) := e38
        _ = (t2 ◇ y) := e42
  have e49 := by
    exact by
      calc
        ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) = (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) := congrArg (fun q => q ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) (e44)
        _ = (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) := congrArg (fun q => ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ q) (e48)
  have e50 := by
    exact e49.symm
  have e51 := by
    exact by
      calc
        (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) = (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e47
        _ = ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e21
        _ = (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) := e30
        _ = ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) := e50
  have e52 := by
    exact congrArg (fun q => q ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) (e51)
  have e53 := by
    exact e52.symm
  have e54 := by
    exact by
      calc
        (x ◇ (x ◇ (t2 ◇ x))) = ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e7
        _ = (((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) := e45
        _ = ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) := e53
  have e55 := by
    exact e38.symm
  have e56 := by
    exact by
      calc
        (t2 ◇ y) = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ y) ◇ y) := e41
        _ = ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) := e55
  have e57 := by
    exact by
      calc
        ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ (t2 ◇ y)) := congrArg (fun q => q ◇ (t2 ◇ y)) (e54)
        _ = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) := congrArg (fun q => ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ q) (e56)
  have e58 := by
    exact h ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))
  have e59 := by
    exact e58.symm
  have e60 := by
    exact h ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) (x ◇ (t2 ◇ x)) ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))
  have e61 := by
    exact by
      calc
        ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) = (x ◇ (x ◇ (t2 ◇ x))) := e6
        _ = ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ (x ◇ (t2 ◇ x))) := e33
  have e62 := by
    exact congrArg (fun q => q ◇ (x ◇ (t2 ◇ x))) (e61)
  have e63 := by
    exact e62.symm
  have e64 := by
    exact by
      calc
        ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ (x ◇ (t2 ◇ x))) ◇ (x ◇ (t2 ◇ x))) := e36
        _ = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) ◇ (x ◇ (t2 ◇ x))) := e63
  have e65 := by
    exact congrArg (fun q => q ◇ (x ◇ (t2 ◇ x))) (e64)
  have e66 := by
    exact h (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) (t2 ◇ x) (x ◇ (t2 ◇ x))
  have e67 := by
    exact e66.symm
  have e68 := by
    exact by
      calc
        (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x))) = ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) ◇ (x ◇ (t2 ◇ x))) ◇ (x ◇ (t2 ◇ x))) := e65
        _ = (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) := e67
  have e69 := by
    exact congrArg (fun q => ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ q) (e68)
  have e70 := by
    exact by
      calc
        (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) = (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e69
        _ = ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e21
        _ = (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) := e30
  have e71 := by
    exact congrArg (fun q => q ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) (e50)
  have e72 := by
    exact e71.symm
  have e73 := by
    exact by
      calc
        ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) = (((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) := e45
        _ = ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) := e72
  have e74 := by
    exact by
      calc
        ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) = ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) := congrArg (fun q => q ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) (e70)
        _ = ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) := congrArg (fun q => (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ q) (e73)
  have e75 := by
    exact e74.symm
  have e76 := by
    exact congrArg (fun q => q ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) (e75)
  have e77 := by
    exact e76.symm
  have e78 := by
    exact by
      calc
        (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) = ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) := e44
        _ = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) := e57
        _ = ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) := e59
        _ = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) := e60
        _ = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) := e77
  have e79 := by
    exact congrArg (fun q => q ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) (e78)
  have e80 := by
    exact e79.symm
  have e81 := by
    exact by
      calc
        (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) = ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) := e28
        _ = ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) := e80
  have e82 := by
    exact e45.symm
  have e83 := by
    exact by
      calc
        ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) = (((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) := e71
        _ = ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e82
  have e84 := by
    exact by
      calc
        ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) = (((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) := congrArg (fun q => q ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) (e81)
        _ = (((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) := congrArg (fun q => ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ q) (e83)
  have e85 := by
    exact e84.symm
  have e86 := by
    exact by
      calc
        ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) = (((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (x ◇ (t2 ◇ x)))) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) := e27
        _ = ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) := e85
  have e87 := by
    exact h ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) y
  have e88 := by
    exact h ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) y ((t2 ◇ (t2 ◇ y)) ◇ y)
  have e89 := by
    exact h ((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) (t2 ◇ x) (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))
  have e90 := by
    exact h t2 y y
  have e91 := by
    exact e90.symm
  have e92 := by
    exact congrArg (fun q => q ◇ y) (e91)
  have e93 := by
    exact by
      calc
        ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ y)) = (t2 ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ y)) := congrArg (fun q => q ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ y)) (e91)
        _ = (t2 ◇ (t2 ◇ y)) := congrArg (fun q => t2 ◇ q) (e92)
  have e94 := by
    exact h (t2 ◇ (t2 ◇ y)) x (t2 ◇ x)
  have e95 := by
    exact h ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))
  have e96 := by
    exact e94.symm
  have e97 := by
    exact by
      calc
        (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) = ((t2 ◇ (t2 ◇ y)) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := congrArg (fun q => q ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) (e96)
        _ = ((t2 ◇ (t2 ◇ y)) ◇ x) := congrArg (fun q => (t2 ◇ (t2 ◇ y)) ◇ q) (e4)
  have e98 := by
    exact by
      calc
        (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) = ((t2 ◇ (t2 ◇ y)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) := congrArg (fun q => q ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) (e96)
        _ = ((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) := congrArg (fun q => (t2 ◇ (t2 ◇ y)) ◇ q) (e97)
  have e99 := by
    exact congrArg (fun q => q ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) (e98)
  have e100 := by
    exact e99.symm
  have e101 := by
    exact congrArg (fun q => q ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) (e100)
  have e102 := by
    exact e101.symm
  have e103 := by
    exact by
      calc
        ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ y)) = (t2 ◇ (t2 ◇ y)) := e93
        _ = ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) := e94
        _ = (((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) := e95
        _ = ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) := e102
  have e104 := by
    exact congrArg (fun q => q ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) (e103)
  have e105 := by
    exact e104.symm
  have e106 := by
    exact by
      calc
        ((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) = (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) := e89
        _ = (((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ y)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) := e105
  have e107 := by
    exact congrArg (fun q => q ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) (e106)
  have e108 := by
    exact h (((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) y (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))
  have e109 := by
    exact e108.symm
  have e110 := by
    exact h (((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ((t2 ◇ (t2 ◇ y)) ◇ x) ((t2 ◇ (t2 ◇ y)) ◇ y)
  have e111 := by
    exact h (((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) y ((t2 ◇ (t2 ◇ y)) ◇ x)
  have e112 := by
    exact congrArg (fun q => q ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) (e93)
  have e113 := by
    exact e112.symm
  have e114 := by
    exact by
      calc
        (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) = ((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) := e98
        _ = (((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) := e113
  have e115 := by
    exact congrArg (fun q => q ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) (e114)
  have e116 := by
    exact e115.symm
  have e117 := by
    exact by
      calc
        (((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) = ((((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) := e111
        _ = ((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) := e116
  have e118 := by
    exact congrArg (fun q => q ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) (e117)
  have e119 := by
    exact h ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ((t2 ◇ (t2 ◇ y)) ◇ x)
  have e120 := by
    exact e119.symm
  have e121 := by
    exact congrArg (fun q => q ◇ (t2 ◇ y)) (e91)
  have e122 := by
    exact e121.symm
  have e123 := by
    exact by
      calc
        ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) = (((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) := e118
        _ = ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) := e120
        _ = (t2 ◇ (t2 ◇ y)) := e96
        _ = ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ (t2 ◇ y)) := e122
  have e124 := by
    exact congrArg (fun q => (((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ q) (e123)
  have e125 := by
    exact h (((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ((t2 ◇ (t2 ◇ y)) ◇ x) ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))
  have e126 := by
    exact h ((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) (t2 ◇ x) ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))
  have e127 := by
    exact by
      calc
        (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) = ((((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ y)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) := e107
        _ = (((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) := e109
  have e128 := by
    exact by
      calc
        ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) = (t2 ◇ (t2 ◇ y)) := e96
        _ = ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ (t2 ◇ y)) := e122
  have e129 := by
    exact by
      calc
        ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) = ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) := congrArg (fun q => q ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) (e127)
        _ = ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ (t2 ◇ y))) := congrArg (fun q => (((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ q) (e128)
  have e130 := by
    exact e129.symm
  have e131 := by
    exact by
      calc
        ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x))) = ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ (t2 ◇ y))) := e124
        _ = ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) := e130
  have e132 := by
    exact congrArg (fun q => q ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) (e131)
  have e133 := by
    exact e132.symm
  have e134 := by
    exact by
      calc
        (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) = ((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) := e98
        _ = (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) := e126
        _ = (((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) := e133
  have e135 := by
    exact congrArg (fun q => q ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) (e134)
  have e136 := by
    exact e135.symm
  have e137 := by
    exact by
      calc
        (((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) = ((((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) := e125
        _ = ((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) := e136
  have e138 := by
    exact by
      calc
        ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ (t2 ◇ y)) = (t2 ◇ (t2 ◇ y)) := e121
        _ = ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) := e94
  have e139 := by
    exact by
      calc
        ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ (t2 ◇ y))) = (((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ (t2 ◇ y))) := congrArg (fun q => q ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ (t2 ◇ y))) (e137)
        _ = (((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) := congrArg (fun q => ((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) ◇ q) (e138)
  have e140 := by
    exact h ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))
  have e141 := by
    exact e140.symm
  have e142 := by
    exact by
      calc
        ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x))) = ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ (t2 ◇ y))) := e124
        _ = (((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) := e139
        _ = ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) := e141
  have e143 := by
    exact congrArg (fun q => q ◇ y) (e96)
  have e144 := by
    exact e143.symm
  have e145 := by
    exact by
      calc
        (((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x))) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) = (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) := congrArg (fun q => q ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) (e142)
        _ = (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) := congrArg (fun q => ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ q) (e144)
  have e146 := by
    exact e145.symm
  have e147 := by
    exact congrArg (fun q => q ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) (e146)
  have e148 := by
    exact e147.symm
  have e149 := by
    exact by
      calc
        (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) = ((((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ y)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) := e107
        _ = (((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) := e109
        _ = ((((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x))) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) := e110
        _ = ((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) := e148
  have e150 := by
    exact congrArg (fun q => q ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) (e149)
  have e151 := by
    exact e150.symm
  have e152 := by
    exact by
      calc
        ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) = (((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) := e88
        _ = ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) := e151
  have e153 := by
    exact by
      calc
        (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) = (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) := congrArg (fun q => q ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) (e152)
        _ = (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) := congrArg (fun q => ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) ◇ q) (e143)
  have e154 := by
    exact h ((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) (t2 ◇ x) ((t2 ◇ (t2 ◇ y)) ◇ y)
  have e155 := by
    exact e154.symm
  have e156 := by
    exact h ((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) (t2 ◇ x) y
  have e157 := by
    exact by
      calc
        (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) = ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) := congrArg (fun q => q ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) (e29)
        _ = ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) := congrArg (fun q => (x ◇ (x ◇ (t2 ◇ x))) ◇ q) (e48)
  have e158 := by
    exact by
      calc
        (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) = ((x ◇ (x ◇ (t2 ◇ x))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) := congrArg (fun q => q ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) (e29)
        _ = ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) := congrArg (fun q => (x ◇ (x ◇ (t2 ◇ x))) ◇ q) (e157)
  have e159 := by
    exact by
      calc
        (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) = ((((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ y)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) := e107
        _ = (((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) := e109
        _ = t2 := e91
  have e160 := by
    exact congrArg (fun q => q ◇ y) (e159)
  have e161 := by
    exact e160.symm
  have e162 := by
    exact by
      calc
        (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) = ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) := e158
        _ = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)))) ◇ y) ◇ y) := e38
        _ = (t2 ◇ y) := e42
        _ = ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ y) := e161
  have e163 := by
    exact congrArg (fun q => q ◇ y) (e162)
  have e164 := by
    exact e163.symm
  have e165 := by
    exact by
      calc
        (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) = (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) := e153
        _ = ((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) := e155
        _ = (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x))) ◇ y) ◇ y) := e156
        _ = ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) ◇ y) := e164
  have e166 := by
    exact congrArg (fun q => q ◇ y) (e165)
  have e167 := by
    exact e166.symm
  have e168 := by
    exact by
      calc
        ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) = (((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) ◇ y) ◇ y) := e87
        _ = ((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) ◇ y) := e167
  have e169 := by
    exact congrArg (fun q => q ◇ y) (e168)
  have e170 := by
    exact h ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) y y
  have e171 := by
    exact e170.symm
  have e172 := by
    exact by
      calc
        (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ y) = (((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) ◇ y) ◇ y) := e169
        _ = ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) := e171
  have e173 := by
    exact by
      calc
        (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ y)) = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ y)) := congrArg (fun q => q ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ y)) (e86)
        _ = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) := congrArg (fun q => ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) ◇ q) (e172)
  have e174 := by
    exact congrArg (fun q => q ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) (e173)
  have e175 := by
    exact e174.symm
  have e176 := by
    exact by
      calc
        x = (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) := e1
        _ = ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) := e26
        _ = ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ y)) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) := e175
  have e177 := by
    exact by
      calc
        t2 = (((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) := e90
        _ = ((((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ y) ◇ y) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x))) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) := e110
        _ = ((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) := e148
  have e178 := by
    exact h (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) (t2 ◇ x) y
  have e179 := by
    exact by
      calc
        ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) = (x ◇ (x ◇ (t2 ◇ x))) := e6
        _ = ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e7
        _ = (((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))))) ◇ y) ◇ y) := e87
        _ = ((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) ◇ y) := e167
  have e180 := by
    exact congrArg (fun q => q ◇ y) (e179)
  have e181 := by
    exact e180.symm
  have e182 := by
    exact by
      calc
        (t2 ◇ (t2 ◇ y)) = ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) := e94
        _ = (((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) ◇ y) ◇ y) := e170
        _ = (((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) ◇ y) := e181
  have e183 := by
    exact congrArg (fun q => q ◇ y) (e182)
  have e184 := by
    exact e183.symm
  have e185 := by
    exact by
      calc
        x = (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) := e1
        _ = ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ ((((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y)) ◇ (t2 ◇ x))) ◇ y) ◇ y) := e178
        _ = ((t2 ◇ (t2 ◇ y)) ◇ y) := e184
  have e186 := by
    exact by
      calc
        (t2 ◇ x) = (((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) ◇ x) := congrArg (fun q => q ◇ x) (e177)
        _ = (((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) := congrArg (fun q => ((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) ◇ q) (e185)
  have e187 := by
    exact e88.symm
  have e188 := by
    exact by
      calc
        (t2 ◇ x) = (((((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ (((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ y)) := e186
        _ = ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x)) := e187
  have e189 := by
    exact by
      calc
        (x ◇ (t2 ◇ x)) = (((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ y)) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) ◇ (t2 ◇ x)) := congrArg (fun q => q ◇ (t2 ◇ x)) (e176)
        _ = (((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ y)) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) := congrArg (fun q => ((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ y)) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) ◇ q) (e188)
  have e190 := by
    exact e189.symm
  have e191 := by
    exact by
      calc
        t1 = ((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) := e24
        _ = (((((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((((x ◇ (x ◇ (t2 ◇ x))) ◇ ((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ (((x ◇ (x ◇ (t2 ◇ x))) ◇ (t2 ◇ y)) ◇ (t2 ◇ y))) ◇ y)) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) ◇ ((((t2 ◇ (t2 ◇ y)) ◇ ((t2 ◇ (t2 ◇ y)) ◇ x)) ◇ (t2 ◇ x)) ◇ (t2 ◇ x))) := e25
        _ = (x ◇ (t2 ◇ x)) := e190
  exact e191
