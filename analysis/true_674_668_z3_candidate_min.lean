import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x
  intro y
  intro z
  let t1 : G := x ◇ x
  let t2 : G := t1 ◇ z
  let t3 : G := x ◇ t2
  let t4 : G := y ◇ t3
  let t5 : G := t1 ◇ x
  let t6 : G := x ◇ t5
  let t7 : G := t1 ◇ t6
  let t8 : G := t7 ◇ z
  let t9 : G := t8 ◇ t5
  let t10 : G := t9 ◇ t5
  let t11 : G := t8 ◇ t10
  let t12 : G := t7 ◇ t11
  let t13 : G := t8 ◇ z
  let t14 : G := t7 ◇ t13
  let t15 : G := t7 ◇ t14
  let t16 : G := t15 ◇ t14
  let t17 : G := t7 ◇ t16
  let t18 : G := t12 ◇ t17
  let t19 : G := t1 ◇ t14
  let t20 : G := t19 ◇ t14
  let t21 : G := t1 ◇ t20
  let t22 : G := t7 ◇ t21
  let t23 : G := t22 ◇ t14
  let t24 : G := t23 ◇ t14
  let t25 : G := t22 ◇ t24
  let t26 : G := t9 ◇ t25
  let t27 : G := t22 ◇ t5
  let t28 : G := t27 ◇ t5
  let t29 : G := t22 ◇ t28
  let t30 : G := t22 ◇ t29
  let t31 : G := t12 ◇ t25
  let t32 : G := t22 ◇ z
  let t33 : G := t32 ◇ z
  let t34 : G := t22 ◇ t33
  let t35 : G := y ◇ t34
  have e2 : x = t7 := by
    exact h x t1 x
  have e3 : t7 = t18 := by
    exact h t7 t12 t14
  have e6 : t8 = t12 := by
    exact h t8 t7 t5
  have e5 : t12 = t8 := by
    exact e6.symm
  have e9 : t7 = x := by
    exact e2.symm
  have e13 : t7 = t15 := by
    exact h t7 t7 z
  have e12 : t15 = t7 := by
    exact e13.symm
  have e11 : t16 = t15 := by
    exact congrArg (fun q => q ◇ t14) (e12)
  have e10 : t16 = x := by
    calc
      t16 = t15 := e11
      _ = t7 := e12
      _ = x := e9
  have e8 : t17 = t1 := by
    calc
      t17 = (x ◇ t16) := congrArg (fun q => q ◇ t16) (e9)
      _ = t1 := congrArg (fun q => x ◇ q) (e10)
  have e14 : t1 = t22 := by
    exact h t1 t7 t14
  have e15 : t22 = t26 := by
    exact h t22 t9 t14
  have e20 : t22 = t1 := by
    exact e14.symm
  have e24 : t23 = t19 := by
    exact congrArg (fun q => q ◇ t14) (e20)
  have e26 : t7 = t19 := by
    exact h t7 t1 z
  have e25 : t19 = t7 := by
    exact e26.symm
  have e23 : t23 = t7 := by
    calc
      t23 = t19 := e24
      _ = t7 := e25
  have e22 : t24 = t15 := by
    exact congrArg (fun q => q ◇ t14) (e23)
  have e21 : t24 = x := by
    calc
      t24 = t15 := e22
      _ = t7 := e12
      _ = x := e9
  have e19 : t25 = t5 := by
    calc
      t25 = (t1 ◇ t24) := congrArg (fun q => q ◇ t24) (e20)
      _ = t5 := congrArg (fun q => t1 ◇ q) (e21)
  have e18 : t5 = t25 := by
    exact e19.symm
  have e17 : t10 = t26 := by
    exact congrArg (fun q => t9 ◇ q) (e18)
  have e16 : t26 = t10 := by
    exact e17.symm
  have e7 : t17 = t10 := by
    calc
      t17 = t1 := e8
      _ = t22 := e14
      _ = t26 := e15
      _ = t10 := e16
  have e4 : t18 = t11 := by
    calc
      t18 = (t8 ◇ t17) := congrArg (fun q => q ◇ t17) (e5)
      _ = t11 := congrArg (fun q => t8 ◇ q) (e7)
  have e29 : t26 = t22 := by
    exact e15.symm
  have e30 : t22 = t30 := by
    exact h t22 t22 t5
  have e41 : t22 = t31 := by
    exact h t22 t12 t14
  have e43 : t9 = t31 := by
    calc
      t9 = (t12 ◇ t5) := congrArg (fun q => q ◇ t5) (e6)
      _ = t31 := congrArg (fun q => t12 ◇ q) (e18)
  have e42 : t31 = t9 := by
    exact e43.symm
  have e40 : t22 = t9 := by
    calc
      t22 = t31 := e41
      _ = t9 := e42
  have e39 : t27 = t10 := by
    exact congrArg (fun q => q ◇ t5) (e40)
  have e38 : t27 = t9 := by
    calc
      t27 = t10 := e39
      _ = t26 := e17
      _ = t22 := e29
      _ = t31 := e41
      _ = t9 := e42
  have e37 : t28 = t10 := by
    exact congrArg (fun q => q ◇ t5) (e38)
  have e49 : t20 = t15 := by
    exact congrArg (fun q => q ◇ t14) (e25)
  have e48 : t20 = x := by
    calc
      t20 = t15 := e49
      _ = t7 := e12
      _ = x := e9
  have e47 : t21 = t5 := by
    exact congrArg (fun q => t1 ◇ q) (e48)
  have e46 : t5 = t21 := by
    exact e47.symm
  have e45 : t6 = t22 := by
    calc
      t6 = (t7 ◇ t5) := congrArg (fun q => q ◇ t5) (e2)
      _ = t22 := congrArg (fun q => t7 ◇ q) (e46)
  have e44 : t22 = t6 := by
    exact e45.symm
  have e36 : t28 = t6 := by
    calc
      t28 = t10 := e37
      _ = t26 := e17
      _ = t22 := e29
      _ = t6 := e44
  have e35 : t29 = t7 := by
    calc
      t29 = (t1 ◇ t28) := congrArg (fun q => q ◇ t28) (e20)
      _ = t7 := congrArg (fun q => t1 ◇ q) (e36)
  have e34 : t7 = t29 := by
    exact e35.symm
  have e33 : x = t29 := by
    calc
      x = t7 := e2
      _ = t29 := e34
  have e32 : t5 = t30 := by
    calc
      t5 = (t22 ◇ x) := congrArg (fun q => q ◇ x) (e14)
      _ = t30 := congrArg (fun q => t22 ◇ q) (e33)
  have e31 : t30 = t5 := by
    exact e32.symm
  have e28 : t10 = t5 := by
    calc
      t10 = t26 := e17
      _ = t22 := e29
      _ = t30 := e30
      _ = t5 := e31
  have e27 : t11 = t9 := by
    exact congrArg (fun q => t8 ◇ q) (e28)
  have e50 : t31 = t22 := by
    exact e41.symm
  have e51 : t22 = t35 := by
    exact h t22 y z
  have e56 : x = t1 := by
    calc
      x = t7 := e2
      _ = t18 := e3
      _ = t11 := e4
      _ = t9 := e27
      _ = t31 := e43
      _ = t22 := e50
      _ = t1 := e20
  have e60 : t9 = t11 := by
    exact e27.symm
  have e61 : t11 = t18 := by
    exact e4.symm
  have e62 : t18 = t7 := by
    exact e3.symm
  have e59 : t1 = t7 := by
    calc
      t1 = t22 := e14
      _ = t31 := e41
      _ = t9 := e42
      _ = t11 := e60
      _ = t18 := e61
      _ = t7 := e62
  have e58 : t2 = t8 := by
    exact congrArg (fun q => q ◇ z) (e59)
  have e64 : t11 = x := by
    calc
      t11 = t18 := e61
      _ = t7 := e62
      _ = x := e9
  have e63 : t12 = t1 := by
    calc
      t12 = (x ◇ t11) := congrArg (fun q => q ◇ t11) (e9)
      _ = t1 := congrArg (fun q => x ◇ q) (e64)
  have e57 : t2 = t6 := by
    calc
      t2 = t8 := e58
      _ = t12 := e6
      _ = t1 := e63
      _ = t22 := e14
      _ = t6 := e44
  have e55 : t3 = t7 := by
    calc
      t3 = (t1 ◇ t2) := congrArg (fun q => q ◇ t2) (e56)
      _ = t7 := congrArg (fun q => t1 ◇ q) (e57)
  have e70 : t32 = t2 := by
    exact congrArg (fun q => q ◇ z) (e20)
  have e69 : t32 = t1 := by
    calc
      t32 = t2 := e70
      _ = t8 := e58
      _ = t12 := e6
      _ = t1 := e63
  have e68 : t33 = t2 := by
    exact congrArg (fun q => q ◇ z) (e69)
  have e67 : t33 = t6 := by
    calc
      t33 = t2 := e68
      _ = t8 := e58
      _ = t12 := e6
      _ = t1 := e63
      _ = t22 := e14
      _ = t6 := e44
  have e66 : t34 = t7 := by
    calc
      t34 = (t1 ◇ t33) := congrArg (fun q => q ◇ t33) (e20)
      _ = t7 := congrArg (fun q => t1 ◇ q) (e67)
  have e65 : t7 = t34 := by
    exact e66.symm
  have e54 : t3 = t34 := by
    calc
      t3 = t7 := e55
      _ = t34 := e65
  have e53 : t4 = t35 := by
    exact congrArg (fun q => y ◇ q) (e54)
  have e52 : t35 = t4 := by
    exact e53.symm
  have e1 : x = t4 := by
    calc
      x = t7 := e2
      _ = t18 := e3
      _ = t11 := e4
      _ = t9 := e27
      _ = t31 := e43
      _ = t22 := e50
      _ = t35 := e51
      _ = t4 := e52
  exact e1
