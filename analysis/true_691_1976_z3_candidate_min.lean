import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x
  intro y
  intro z
  let t1 : G := z ◇ y
  let t2 : G := y ◇ t1
  let t3 : G := x ◇ y
  let t4 : G := t2 ◇ t3
  let t5 : G := t3 ◇ y
  let t6 : G := z ◇ t5
  let t7 : G := y ◇ t6
  let t8 : G := t7 ◇ t5
  let t9 : G := t8 ◇ t5
  let t10 : G := y ◇ t9
  let t11 : G := t5 ◇ t10
  let t12 : G := t11 ◇ t6
  let t13 : G := t12 ◇ t6
  let t14 : G := x ◇ t13
  let t15 : G := t6 ◇ t14
  let t16 : G := t1 ◇ t2
  let t17 : G := t16 ◇ t2
  let t18 : G := t15 ◇ t17
  let t19 : G := t2 ◇ t18
  let t20 : G := t2 ◇ t1
  let t21 : G := t20 ◇ t1
  let t22 : G := t1 ◇ t21
  let t23 : G := t1 ◇ t22
  let t24 : G := t23 ◇ t22
  let t25 : G := t11 ◇ t24
  let t26 : G := t22 ◇ t25
  let t27 : G := t11 ◇ t1
  let t28 : G := t27 ◇ t1
  let t29 : G := t22 ◇ t28
  let t30 : G := t1 ◇ t29
  let t31 : G := t2 ◇ t24
  let t32 : G := t22 ◇ t31
  have e2 : x = t15 := by
    exact h x t6 t11
  have e3 : t15 = t19 := by
    exact h t15 t2 t1
  have e8 : t15 = x := by
    exact e2.symm
  have e14 : t2 = t32 := by
    exact h t2 t22 t1
  have e22 : y = t11 := by
    exact h y t5 t7
  have e21 : t11 = y := by
    exact e22.symm
  have e20 : t27 = t2 := by
    exact congrArg (fun q => q ◇ t1) (e21)
  have e19 : t2 = t27 := by
    exact e20.symm
  have e26 : t1 = t23 := by
    exact h t1 t1 t2
  have e25 : t23 = t1 := by
    exact e26.symm
  have e24 : t24 = t23 := by
    exact congrArg (fun q => q ◇ t22) (e25)
  have e23 : t24 = t1 := by
    calc
      t24 = t23 := e24
      _ = t1 := e25
  have e18 : t31 = t28 := by
    calc
      t31 = (t27 ◇ t24) := congrArg (fun q => q ◇ t24) (e19)
      _ = t28 := congrArg (fun q => t27 ◇ q) (e23)
  have e17 : t28 = t31 := by
    exact e18.symm
  have e16 : t29 = t32 := by
    exact congrArg (fun q => t22 ◇ q) (e17)
  have e15 : t32 = t29 := by
    exact e16.symm
  have e13 : t2 = t29 := by
    calc
      t2 = t32 := e14
      _ = t29 := e15
  have e12 : t16 = t30 := by
    exact congrArg (fun q => t1 ◇ q) (e13)
  have e28 : t22 = t30 := by
    exact h t22 t1 t11
  have e27 : t30 = t22 := by
    exact e28.symm
  have e11 : t16 = t22 := by
    calc
      t16 = t30 := e12
      _ = t22 := e27
  have e30 : t25 = t2 := by
    calc
      t25 = (y ◇ t24) := congrArg (fun q => q ◇ t24) (e21)
      _ = t2 := congrArg (fun q => y ◇ q) (e23)
  have e29 : t2 = t25 := by
    exact e30.symm
  have e10 : t17 = t26 := by
    calc
      t17 = (t22 ◇ t2) := congrArg (fun q => q ◇ t2) (e11)
      _ = t26 := congrArg (fun q => t22 ◇ q) (e29)
  have e32 : t11 = t26 := by
    exact h t11 t22 t1
  have e31 : t26 = t11 := by
    exact e32.symm
  have e9 : t17 = y := by
    calc
      t17 = t26 := e10
      _ = t11 := e31
      _ = y := e21
  have e7 : t18 = t3 := by
    calc
      t18 = (x ◇ t17) := congrArg (fun q => q ◇ t17) (e8)
      _ = t3 := congrArg (fun q => x ◇ q) (e9)
  have e6 : t3 = t18 := by
    exact e7.symm
  have e5 : t4 = t19 := by
    exact congrArg (fun q => t2 ◇ q) (e6)
  have e4 : t19 = t4 := by
    exact e5.symm
  have e1 : x = t4 := by
    calc
      x = t15 := e2
      _ = t19 := e3
      _ = t4 := e4
  exact e1
