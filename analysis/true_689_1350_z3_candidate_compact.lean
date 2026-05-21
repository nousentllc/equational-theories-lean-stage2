import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x
  intro y
  intro z
  let t1 : G := z ◇ x
  let t2 : G := t1 ◇ x
  let t3 : G := t2 ◇ y
  let t4 : G := y ◇ t3
  let t5 : G := y ◇ y
  let t6 : G := t5 ◇ y
  let t7 : G := y ◇ t6
  let t8 : G := x ◇ t2
  let t9 : G := t8 ◇ x
  let t10 : G := t2 ◇ t9
  let t11 : G := y ◇ t10
  let t12 : G := t11 ◇ t7
  let t13 : G := t12 ◇ t6
  let t14 : G := t7 ◇ t13
  let t15 : G := t1 ◇ t14
  let t16 : G := t15 ◇ t8
  let t17 : G := t1 ◇ y
  let t18 : G := t17 ◇ y
  let t19 : G := y ◇ t18
  let t20 : G := t8 ◇ t19
  let t21 : G := t20 ◇ t20
  let t22 : G := t21 ◇ t20
  let t23 : G := t20 ◇ t22
  let t24 : G := x ◇ t23
  let t25 : G := x ◇ t11
  let t26 : G := t25 ◇ t19
  let t27 : G := t11 ◇ t26
  let t28 : G := t20 ◇ t27
  let t29 : G := t15 ◇ t15
  let t30 : G := t29 ◇ t6
  let t31 : G := t15 ◇ t30
  let t32 : G := t11 ◇ t31
  let t33 : G := t15 ◇ t23
  let t34 : G := t15 ◇ t31
  let t35 : G := t8 ◇ t23
  let t36 : G := t11 ◇ t1
  let t37 : G := t36 ◇ t7
  let t38 : G := t1 ◇ t37
  let t39 : G := t8 ◇ t38
  let t40 : G := t36 ◇ t23
  let t41 : G := t20 ◇ t23
  have e2 : x = t16 := by
    exact h x t15 z x
  have e5 : t7 = t15 := by
    exact h t7 t1 t11 t6
  have e4 : t15 = t7 := by
    exact e5.symm
  have e9 : t2 = t11 := by
    exact h t2 y x x
  have e10 : t11 = t28 := by
    exact h t11 t20 x t19
  have e13 : y = t20 := by
    exact h y t8 t1 y
  have e12 : t20 = y := by
    exact e13.symm
  have e15 : t11 = t2 := by
    exact e9.symm
  have e18 : t25 = t8 := by
    exact congrArg (fun q => x ◇ q) (e15)
  have e17 : t26 = t20 := by
    exact congrArg (fun q => q ◇ t19) (e18)
  have e16 : t26 = y := by
    calc
      t26 = t20 := e17
      _ = y := e12
  have e14 : t27 = t3 := by
    calc
      t27 = (t2 ◇ t26) := congrArg (fun q => q ◇ t26) (e15)
      _ = t3 := congrArg (fun q => t2 ◇ q) (e16)
  have e11 : t28 = t4 := by
    calc
      t28 = (y ◇ t27) := congrArg (fun q => q ◇ t27) (e12)
      _ = t4 := congrArg (fun q => y ◇ q) (e14)
  have e23 : t20 = t33 := by
    exact h t20 t15 t20 t20
  have e29 : y = t12 := by
    exact h y t11 y y
  have e28 : t12 = y := by
    exact e29.symm
  have e27 : t13 = t7 := by
    exact congrArg (fun q => q ◇ t6) (e28)
  have e33 : t21 = t5 := by
    calc
      t21 = (y ◇ t20) := congrArg (fun q => q ◇ t20) (e12)
      _ = t5 := congrArg (fun q => y ◇ q) (e12)
  have e32 : t22 = t6 := by
    calc
      t22 = (t5 ◇ t20) := congrArg (fun q => q ◇ t20) (e33)
      _ = t6 := congrArg (fun q => t5 ◇ q) (e12)
  have e31 : t23 = t7 := by
    calc
      t23 = (y ◇ t22) := congrArg (fun q => q ◇ t22) (e12)
      _ = t7 := congrArg (fun q => y ◇ q) (e32)
  have e30 : t7 = t23 := by
    exact e31.symm
  have e26 : t13 = t23 := by
    calc
      t13 = t7 := e27
      _ = t23 := e30
  have e25 : t14 = t33 := by
    calc
      t14 = (t15 ◇ t13) := congrArg (fun q => q ◇ t13) (e5)
      _ = t33 := congrArg (fun q => t15 ◇ q) (e26)
  have e24 : t33 = t14 := by
    exact e25.symm
  have e41 : t7 = t13 := by
    exact e27.symm
  have e40 : t15 = t13 := by
    calc
      t15 = t7 := e4
      _ = t13 := e41
  have e39 : t29 = t14 := by
    calc
      t29 = (t7 ◇ t15) := congrArg (fun q => q ◇ t15) (e4)
      _ = t14 := congrArg (fun q => t7 ◇ q) (e40)
  have e42 : t33 = t20 := by
    exact e23.symm
  have e38 : t29 = y := by
    calc
      t29 = t14 := e39
      _ = t33 := e25
      _ = t20 := e42
      _ = y := e12
  have e37 : t30 = t7 := by
    exact congrArg (fun q => q ◇ t6) (e38)
  have e36 : t30 = t13 := by
    calc
      t30 = t7 := e37
      _ = t13 := e41
  have e35 : t31 = t14 := by
    calc
      t31 = (t7 ◇ t30) := congrArg (fun q => q ◇ t30) (e4)
      _ = t14 := congrArg (fun q => t7 ◇ q) (e36)
  have e34 : t14 = t31 := by
    exact e35.symm
  have e22 : y = t31 := by
    calc
      y = t20 := e13
      _ = t33 := e23
      _ = t14 := e24
      _ = t31 := e34
  have e21 : t3 = t32 := by
    calc
      t3 = (t11 ◇ y) := congrArg (fun q => q ◇ y) (e9)
      _ = t32 := congrArg (fun q => t11 ◇ q) (e22)
  have e44 : t15 = t32 := by
    exact h t15 t11 t15 t6
  have e43 : t32 = t15 := by
    exact e44.symm
  have e45 : t15 = t34 := by
    exact h t15 t15 t15 t6
  have e49 : y = t14 := by
    calc
      y = t20 := e13
      _ = t33 := e23
      _ = t14 := e24
  have e48 : t17 = t15 := by
    exact congrArg (fun q => t1 ◇ q) (e49)
  have e47 : t18 = t34 := by
    calc
      t18 = (t15 ◇ y) := congrArg (fun q => q ◇ y) (e48)
      _ = t34 := congrArg (fun q => t15 ◇ q) (e22)
  have e46 : t34 = t18 := by
    exact e47.symm
  have e54 : t20 = t35 := by
    exact h t20 t8 t20 t20
  have e60 : t37 = t40 := by
    exact congrArg (fun q => t36 ◇ q) (e30)
  have e62 : t20 = t40 := by
    exact h t20 t36 t20 t20
  have e61 : t40 = t20 := by
    exact e62.symm
  have e59 : t37 = y := by
    calc
      t37 = t40 := e60
      _ = t20 := e61
      _ = y := e12
  have e58 : t38 = t17 := by
    exact congrArg (fun q => t1 ◇ q) (e59)
  have e57 : t38 = t23 := by
    calc
      t38 = t17 := e58
      _ = t15 := e48
      _ = t7 := e4
      _ = t23 := e30
  have e56 : t39 = t35 := by
    exact congrArg (fun q => t8 ◇ q) (e57)
  have e55 : t35 = t39 := by
    exact e56.symm
  have e64 : t1 = t39 := by
    exact h t1 t8 t11 t7
  have e63 : t39 = t1 := by
    exact e64.symm
  have e53 : y = t1 := by
    calc
      y = t20 := e13
      _ = t35 := e54
      _ = t39 := e55
      _ = t1 := e63
  have e52 : t5 = t17 := by
    exact congrArg (fun q => q ◇ y) (e53)
  have e51 : t6 = t18 := by
    exact congrArg (fun q => q ◇ y) (e52)
  have e50 : t18 = t6 := by
    exact e51.symm
  have e20 : t3 = t6 := by
    calc
      t3 = t32 := e21
      _ = t15 := e43
      _ = t34 := e45
      _ = t18 := e46
      _ = t6 := e50
  have e19 : t4 = t7 := by
    exact congrArg (fun q => y ◇ q) (e20)
  have e8 : t2 = t23 := by
    calc
      t2 = t11 := e9
      _ = t28 := e10
      _ = t4 := e11
      _ = t7 := e19
      _ = t23 := e30
  have e7 : t8 = t24 := by
    exact congrArg (fun q => x ◇ q) (e8)
  have e66 : t20 = t24 := by
    exact h t20 x t20 t20
  have e65 : t24 = t20 := by
    exact e66.symm
  have e67 : t20 = t41 := by
    exact h t20 t20 t20 t20
  have e70 : t32 = t3 := by
    exact e21.symm
  have e69 : t23 = t3 := by
    calc
      t23 = t7 := e31
      _ = t15 := e5
      _ = t32 := e44
      _ = t3 := e70
  have e68 : t41 = t4 := by
    calc
      t41 = (y ◇ t23) := congrArg (fun q => q ◇ t23) (e12)
      _ = t4 := congrArg (fun q => y ◇ q) (e69)
  have e6 : t8 = t13 := by
    calc
      t8 = t24 := e7
      _ = t20 := e65
      _ = t41 := e67
      _ = t4 := e68
      _ = t7 := e19
      _ = t13 := e41
  have e3 : t16 = t14 := by
    calc
      t16 = (t7 ◇ t8) := congrArg (fun q => q ◇ t8) (e4)
      _ = t14 := congrArg (fun q => t7 ◇ q) (e6)
  have e1 : x = t4 := by
    calc
      x = t16 := e2
      _ = t14 := e3
      _ = t33 := e25
      _ = t20 := e42
      _ = t41 := e67
      _ = t4 := e68
  exact e1
