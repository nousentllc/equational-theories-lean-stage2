import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x
  intro y
  intro z
  let t1 : G := x ◇ y
  let t2 : G := y ◇ t1
  let t3 : G := z ◇ t2
  let t4 : G := y ◇ t3
  let t5 : G := t1 ◇ x
  let t6 : G := t1 ◇ t5
  let t7 : G := t6 ◇ t1
  let t8 : G := t5 ◇ t7
  let t9 : G := t3 ◇ z
  let t10 : G := t3 ◇ t9
  let t11 : G := t6 ◇ t10
  let t12 : G := t3 ◇ t6
  let t13 : G := t12 ◇ t3
  let t14 : G := t12 ◇ t13
  let t15 : G := t14 ◇ t12
  let t16 : G := t13 ◇ t15
  let t17 : G := t6 ◇ t16
  let t18 : G := t17 ◇ t6
  let t19 : G := t11 ◇ t18
  let t20 : G := t6 ◇ t7
  let t21 : G := x ◇ z
  let t22 : G := t21 ◇ t5
  let t23 : G := t3 ◇ t22
  let t24 : G := t23 ◇ t3
  let t25 : G := t12 ◇ t24
  let t26 : G := t25 ◇ t15
  let t27 : G := t26 ◇ t10
  let t28 : G := t26 ◇ t15
  let t29 : G := t28 ◇ t26
  let t30 : G := t27 ◇ t29
  let t31 : G := t27 ◇ t15
  let t32 : G := t14 ◇ t15
  let t33 : G := t16 ◇ t29
  let t34 : G := t16 ◇ t6
  let t35 : G := t34 ◇ t16
  let t36 : G := t33 ◇ t35
  let t37 : G := t28 ◇ t29
  let t38 : G := t15 ◇ t6
  let t39 : G := t15 ◇ t4
  let t40 : G := t39 ◇ t15
  let t41 : G := t38 ◇ t40
  let t42 : G := t16 ◇ t22
  let t43 : G := t42 ◇ t16
  let t44 : G := t33 ◇ t43
  let t45 : G := t15 ◇ t44
  let t46 : G := t45 ◇ t40
  let t47 : G := t6 ◇ t12
  let t48 : G := t47 ◇ t6
  let t49 : G := t26 ◇ t48
  let t50 : G := t49 ◇ t26
  let t51 : G := t49 ◇ t50
  let t52 : G := t26 ◇ t18
  let t53 : G := t52 ◇ t50
  let t54 : G := t6 ◇ t15
  let t55 : G := t54 ◇ t48
  let t56 : G := t54 ◇ t18
  let t57 : G := t52 ◇ t29
  let t58 : G := t27 ◇ t26
  let t59 : G := t16 ◇ t58
  let t60 : G := t59 ◇ t43
  let t61 : G := t28 ◇ t58
  have e2 : x = t8 := by
    exact h x t1 t5
  have e5 : t5 = t20 := by
    exact h t5 t1 t5
  have e10 : t2 = t10 := by
    exact h t2 z t2
  have e9 : t10 = t2 := by
    exact e10.symm
  have e14 : y = t6 := by
    exact h y x y
  have e13 : t6 = y := by
    exact e14.symm
  have e12 : t7 = t2 := by
    exact congrArg (fun q => q ◇ t1) (e13)
  have e11 : t2 = t7 := by
    exact e12.symm
  have e8 : t10 = t7 := by
    calc
      t10 = t2 := e9
      _ = t7 := e11
  have e7 : t11 = t20 := by
    exact congrArg (fun q => t6 ◇ q) (e8)
  have e6 : t20 = t11 := by
    exact e7.symm
  have e4 : t5 = t11 := by
    calc
      t5 = t20 := e5
      _ = t11 := e6
  have e16 : t10 = t30 := by
    exact h t10 t26 t15
  have e27 : t6 = t14 := by
    exact h t6 t3 t6
  have e26 : t14 = t6 := by
    exact e27.symm
  have e28 : t6 = t25 := by
    exact h t6 t3 t22
  have e25 : t14 = t25 := by
    calc
      t14 = t6 := e26
      _ = t25 := e28
  have e24 : t32 = t26 := by
    exact congrArg (fun q => q ◇ t15) (e25)
  have e23 : t26 = t32 := by
    exact e24.symm
  have e30 : t13 = t32 := by
    exact h t13 t12 t13
  have e29 : t32 = t13 := by
    exact e30.symm
  have e22 : t26 = t13 := by
    calc
      t26 = t32 := e23
      _ = t13 := e29
  have e21 : t28 = t16 := by
    exact congrArg (fun q => q ◇ t15) (e22)
  have e35 : t25 = t6 := by
    exact e28.symm
  have e34 : t25 = t14 := by
    calc
      t25 = t6 := e35
      _ = t14 := e27
  have e37 : t15 = t37 := by
    exact h t15 t26 t15
  have e41 : t3 = t16 := by
    exact h t3 t12 t13
  have e42 : t16 = t28 := by
    exact e21.symm
  have e40 : t3 = t28 := by
    calc
      t3 = t16 := e41
      _ = t28 := e42
  have e44 : t6 = t41 := by
    exact h t6 t15 t4
  have e49 : t47 = t15 := by
    exact congrArg (fun q => q ◇ t12) (e27)
  have e48 : t15 = t47 := by
    exact e49.symm
  have e47 : t38 = t48 := by
    exact congrArg (fun q => q ◇ t6) (e48)
  have e50 : t48 = t51 := by
    exact h t48 t26 t48
  have e55 : t54 = t26 := by
    exact congrArg (fun q => q ◇ t15) (e28)
  have e54 : t26 = t54 := by
    exact e55.symm
  have e53 : t49 = t55 := by
    exact congrArg (fun q => q ◇ t48) (e54)
  have e57 : t15 = t55 := by
    exact h t15 t6 t12
  have e56 : t55 = t15 := by
    exact e57.symm
  have e58 : t15 = t56 := by
    exact h t15 t6 t16
  have e60 : t52 = t56 := by
    exact congrArg (fun q => q ◇ t18) (e54)
  have e59 : t56 = t52 := by
    exact e60.symm
  have e52 : t49 = t52 := by
    calc
      t49 = t55 := e53
      _ = t15 := e56
      _ = t56 := e58
      _ = t52 := e59
  have e51 : t51 = t53 := by
    exact congrArg (fun q => q ◇ t50) (e52)
  have e62 : t18 = t53 := by
    exact h t18 t26 t48
  have e61 : t53 = t18 := by
    exact e62.symm
  have e63 : t18 = t57 := by
    exact h t18 t26 t15
  have e66 : t15 = t52 := by
    calc
      t15 = t56 := e58
      _ = t52 := e59
  have e68 : t29 = t44 := by
    exact h t29 t16 t22
  have e67 : t44 = t29 := by
    exact e68.symm
  have e65 : t45 = t57 := by
    calc
      t45 = (t52 ◇ t44) := congrArg (fun q => q ◇ t44) (e66)
      _ = t57 := congrArg (fun q => t52 ◇ q) (e67)
  have e64 : t57 = t45 := by
    exact e65.symm
  have e46 : t38 = t45 := by
    calc
      t38 = t48 := e47
      _ = t51 := e50
      _ = t53 := e51
      _ = t18 := e61
      _ = t57 := e63
      _ = t45 := e64
  have e45 : t41 = t46 := by
    exact congrArg (fun q => q ◇ t40) (e46)
  have e70 : t44 = t46 := by
    exact h t44 t15 t4
  have e69 : t46 = t44 := by
    exact e70.symm
  have e43 : t6 = t29 := by
    calc
      t6 = t41 := e44
      _ = t46 := e45
      _ = t44 := e69
      _ = t29 := e67
  have e39 : t12 = t37 := by
    calc
      t12 = (t28 ◇ t6) := congrArg (fun q => q ◇ t6) (e40)
      _ = t37 := congrArg (fun q => t28 ◇ q) (e43)
  have e38 : t37 = t12 := by
    exact e39.symm
  have e36 : t15 = t12 := by
    calc
      t15 = t37 := e37
      _ = t12 := e38
  have e33 : t26 = t15 := by
    calc
      t26 = (t14 ◇ t15) := congrArg (fun q => q ◇ t15) (e34)
      _ = t15 := congrArg (fun q => t14 ◇ q) (e36)
  have e72 : t33 = t37 := by
    exact congrArg (fun q => q ◇ t29) (e42)
  have e71 : t37 = t33 := by
    exact e72.symm
  have e32 : t13 = t33 := by
    calc
      t13 = t32 := e30
      _ = t26 := e24
      _ = t15 := e33
      _ = t37 := e37
      _ = t33 := e71
  have e74 : t15 = t26 := by
    exact e33.symm
  have e78 : t16 = t3 := by
    exact e41.symm
  have e77 : t34 = t12 := by
    exact congrArg (fun q => q ◇ t6) (e78)
  have e76 : t35 = t13 := by
    calc
      t35 = (t12 ◇ t16) := congrArg (fun q => q ◇ t16) (e77)
      _ = t13 := congrArg (fun q => t12 ◇ q) (e78)
  have e75 : t13 = t35 := by
    exact e76.symm
  have e73 : t15 = t35 := by
    calc
      t15 = t26 := e74
      _ = t32 := e23
      _ = t13 := e29
      _ = t35 := e75
  have e31 : t16 = t36 := by
    calc
      t16 = (t33 ◇ t15) := congrArg (fun q => q ◇ t15) (e32)
      _ = t36 := congrArg (fun q => t33 ◇ q) (e73)
  have e80 : t29 = t36 := by
    exact h t29 t16 t6
  have e79 : t36 = t29 := by
    exact e80.symm
  have e81 : t46 = t41 := by
    exact e45.symm
  have e82 : t41 = t6 := by
    exact e44.symm
  have e20 : t28 = t25 := by
    calc
      t28 = t16 := e21
      _ = t36 := e31
      _ = t29 := e79
      _ = t44 := e68
      _ = t46 := e70
      _ = t41 := e81
      _ = t6 := e82
      _ = t25 := e28
  have e19 : t29 = t26 := by
    calc
      t29 = (t25 ◇ t26) := congrArg (fun q => q ◇ t26) (e20)
      _ = t26 := congrArg (fun q => t25 ◇ q) (e33)
  have e18 : t29 = t15 := by
    calc
      t29 = t26 := e19
      _ = t15 := e33
  have e17 : t30 = t31 := by
    exact congrArg (fun q => t27 ◇ q) (e18)
  have e83 : t31 = t58 := by
    exact congrArg (fun q => t27 ◇ q) (e74)
  have e84 : t58 = t60 := by
    exact h t58 t16 t22
  have e87 : t59 = t61 := by
    exact congrArg (fun q => q ◇ t58) (e42)
  have e89 : t15 = t61 := by
    exact h t15 t26 t10
  have e88 : t61 = t15 := by
    exact e89.symm
  have e86 : t59 = t33 := by
    calc
      t59 = t61 := e87
      _ = t15 := e88
      _ = t37 := e37
      _ = t33 := e71
  have e85 : t60 = t44 := by
    exact congrArg (fun q => q ◇ t43) (e86)
  have e93 : t56 = t15 := by
    exact e58.symm
  have e92 : t52 = t12 := by
    calc
      t52 = t56 := e60
      _ = t15 := e93
      _ = t37 := e37
      _ = t12 := e38
  have e95 : t36 = t16 := by
    exact e31.symm
  have e94 : t29 = t3 := by
    calc
      t29 = t36 := e80
      _ = t16 := e95
      _ = t3 := e78
  have e91 : t57 = t13 := by
    calc
      t57 = (t12 ◇ t29) := congrArg (fun q => q ◇ t29) (e92)
      _ = t13 := congrArg (fun q => t12 ◇ q) (e94)
  have e90 : t13 = t57 := by
    exact e91.symm
  have e96 : t57 = t18 := by
    exact e63.symm
  have e15 : t7 = t18 := by
    calc
      t7 = t2 := e12
      _ = t10 := e10
      _ = t30 := e16
      _ = t31 := e17
      _ = t58 := e83
      _ = t60 := e84
      _ = t44 := e85
      _ = t29 := e67
      _ = t26 := e19
      _ = t32 := e23
      _ = t13 := e29
      _ = t57 := e90
      _ = t18 := e96
  have e3 : t8 = t19 := by
    calc
      t8 = (t11 ◇ t7) := congrArg (fun q => q ◇ t7) (e4)
      _ = t19 := congrArg (fun q => t11 ◇ q) (e15)
  have e98 : t10 = t19 := by
    exact h t10 t6 t16
  have e97 : t19 = t10 := by
    exact e98.symm
  have e101 : y = t28 := by
    calc
      y = t6 := e14
      _ = t41 := e44
      _ = t46 := e45
      _ = t44 := e69
      _ = t29 := e67
      _ = t36 := e80
      _ = t16 := e95
      _ = t28 := e42
  have e102 : t3 = t29 := by
    calc
      t3 = t16 := e41
      _ = t36 := e31
      _ = t29 := e79
  have e100 : t4 = t37 := by
    calc
      t4 = (t28 ◇ t3) := congrArg (fun q => q ◇ t3) (e101)
      _ = t37 := congrArg (fun q => t28 ◇ q) (e102)
  have e99 : t37 = t4 := by
    exact e100.symm
  have e1 : x = t4 := by
    calc
      x = t8 := e2
      _ = t19 := e3
      _ = t10 := e97
      _ = t30 := e16
      _ = t31 := e17
      _ = t58 := e83
      _ = t60 := e84
      _ = t44 := e85
      _ = t29 := e67
      _ = t26 := e19
      _ = t15 := e33
      _ = t37 := e37
      _ = t4 := e99
  exact e1
