import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x
  intro y
  intro z
  let t1 : G := (x ◇ x)
  let t2 : G := (y ◇ x)
  let t3 : G := (y ◇ z)
  let t4 : G := (z ◇ z)
  let t5 : G := (t2 ◇ x)
  let t6 : G := (t3 ◇ z)
  let t7 : G := (t2 ◇ t2)
  let t8 : G := (t5 ◇ x)
  let t9 : G := (t6 ◇ y)
  let t10 : G := (t5 ◇ t2)
  let t11 : G := (t5 ◇ t3)
  let t12 : G := (t6 ◇ t6)
  let t13 : G := (t8 ◇ t2)
  let t14 : G := (t10 ◇ t2)
  let t15 : G := (t11 ◇ t2)
  let t16 : G := (t11 ◇ t6)
  let t17 : G := (t5 ◇ t11)
  let t18 : G := (t11 ◇ t11)
  let t19 : G := (t14 ◇ t2)
  let t20 : G := (t15 ◇ t2)
  let t21 : G := (t16 ◇ t6)
  let t22 : G := (t17 ◇ t11)
  let t23 : G := (t20 ◇ t3)
  let t24 : G := (t21 ◇ t3)
  let t25 : G := (t20 ◇ t11)
  let t26 : G := (t22 ◇ t6)
  have e1 : t1 = t13 := by
    exact h x (y ◇ x) (y ◇ x)
  have e2 : t1 = t10 := by
    exact h x y (y ◇ x)
  have e3 : t10 = t1 := by
    exact e2.symm
  have e4 : t1 = t8 := by
    exact h x y x
  have e5 : t10 = t8 := by
    exact by
      calc
        (((y ◇ x) ◇ x) ◇ (y ◇ x)) = (x ◇ x) := e3
        _ = (((y ◇ x) ◇ x) ◇ x) := e4
  have e6 : t14 = t13 := by
    exact congrArg (fun q => q ◇ (y ◇ x)) (e5)
  have e7 : t13 = t14 := by
    exact e6.symm
  have e8 : t13 = t1 := by
    exact e1.symm
  have e9 : t14 = t10 := by
    exact by
      calc
        ((((y ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (y ◇ x)) = ((((y ◇ x) ◇ x) ◇ x) ◇ (y ◇ x)) := e6
        _ = (x ◇ x) := e8
        _ = (((y ◇ x) ◇ x) ◇ (y ◇ x)) := e2
  have e10 : t19 = t14 := by
    exact congrArg (fun q => q ◇ (y ◇ x)) (e9)
  have e11 : t14 = t19 := by
    exact e10.symm
  have e12 : t7 = t19 := by
    exact h (y ◇ x) ((y ◇ x) ◇ x) (y ◇ x)
  have e13 : t19 = t7 := by
    exact e12.symm
  have e14 : t7 = t23 := by
    exact h (y ◇ x) (((y ◇ x) ◇ x) ◇ (y ◇ z)) (y ◇ z)
  have e15 : t1 = t11 := by
    exact h x y (y ◇ z)
  have e16 : t11 = t1 := by
    exact e15.symm
  have e17 : t7 = t25 := by
    exact h (y ◇ x) (((y ◇ x) ◇ x) ◇ (y ◇ z)) (((y ◇ x) ◇ x) ◇ (y ◇ z))
  have e18 : t1 = t17 := by
    exact h x y (((y ◇ x) ◇ x) ◇ (y ◇ z))
  have e19 : t17 = t1 := by
    exact e18.symm
  have e20 : t11 = t10 := by
    exact by
      calc
        (((y ◇ x) ◇ x) ◇ (y ◇ z)) = (x ◇ x) := e16
        _ = (((y ◇ x) ◇ x) ◇ (y ◇ x)) := e2
  have e21 : t15 = t14 := by
    exact congrArg (fun q => q ◇ (y ◇ x)) (e20)
  have e22 : t15 = t10 := by
    exact by
      calc
        ((((y ◇ x) ◇ x) ◇ (y ◇ z)) ◇ (y ◇ x)) = ((((y ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (y ◇ x)) := e21
        _ = ((((y ◇ x) ◇ x) ◇ x) ◇ (y ◇ x)) := e6
        _ = (x ◇ x) := e8
        _ = (((y ◇ x) ◇ x) ◇ (y ◇ x)) := e2
  have e23 : t20 = t14 := by
    exact congrArg (fun q => q ◇ (y ◇ x)) (e22)
  have e24 : t14 = t20 := by
    exact e23.symm
  have e25 : t17 = t20 := by
    exact by
      calc
        (((y ◇ x) ◇ x) ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) = (x ◇ x) := e19
        _ = ((((y ◇ x) ◇ x) ◇ x) ◇ (y ◇ x)) := e1
        _ = ((((y ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (y ◇ x)) := e7
        _ = (((((y ◇ x) ◇ x) ◇ (y ◇ z)) ◇ (y ◇ x)) ◇ (y ◇ x)) := e24
  have e26 : t22 = t25 := by
    exact congrArg (fun q => q ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) (e25)
  have e27 : t25 = t22 := by
    exact e26.symm
  have e28 : t11 = t22 := by
    exact by
      calc
        (((y ◇ x) ◇ x) ◇ (y ◇ z)) = (x ◇ x) := e16
        _ = ((((y ◇ x) ◇ x) ◇ x) ◇ (y ◇ x)) := e1
        _ = ((((y ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (y ◇ x)) := e7
        _ = (((((y ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (y ◇ x)) ◇ (y ◇ x)) := e11
        _ = ((y ◇ x) ◇ (y ◇ x)) := e13
        _ = ((((((y ◇ x) ◇ x) ◇ (y ◇ z)) ◇ (y ◇ x)) ◇ (y ◇ x)) ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) := e17
        _ = ((((y ◇ x) ◇ x) ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) := e27
  have e29 : t16 = t26 := by
    exact congrArg (fun q => q ◇ ((y ◇ z) ◇ z)) (e28)
  have e30 : t18 = t26 := by
    exact h (((y ◇ x) ◇ x) ◇ (y ◇ z)) ((y ◇ x) ◇ x) ((y ◇ z) ◇ z)
  have e31 : t26 = t18 := by
    exact e30.symm
  have e32 : t11 = t20 := by
    exact by
      calc
        (((y ◇ x) ◇ x) ◇ (y ◇ z)) = (x ◇ x) := e16
        _ = ((((y ◇ x) ◇ x) ◇ x) ◇ (y ◇ x)) := e1
        _ = ((((y ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (y ◇ x)) := e7
        _ = (((((y ◇ x) ◇ x) ◇ (y ◇ z)) ◇ (y ◇ x)) ◇ (y ◇ x)) := e24
  have e33 : t18 = t25 := by
    exact congrArg (fun q => q ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) (e32)
  have e34 : t16 = t22 := by
    exact by
      calc
        ((((y ◇ x) ◇ x) ◇ (y ◇ z)) ◇ ((y ◇ z) ◇ z)) = (((((y ◇ x) ◇ x) ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) ◇ ((y ◇ z) ◇ z)) := e29
        _ = ((((y ◇ x) ◇ x) ◇ (y ◇ z)) ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) := e31
        _ = ((((((y ◇ x) ◇ x) ◇ (y ◇ z)) ◇ (y ◇ x)) ◇ (y ◇ x)) ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) := e33
        _ = ((((y ◇ x) ◇ x) ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) := e27
  have e35 : t21 = t26 := by
    exact congrArg (fun q => q ◇ ((y ◇ z) ◇ z)) (e34)
  have e36 : t25 = t7 := by
    exact e17.symm
  have e37 : t21 = t20 := by
    exact by
      calc
        (((((y ◇ x) ◇ x) ◇ (y ◇ z)) ◇ ((y ◇ z) ◇ z)) ◇ ((y ◇ z) ◇ z)) = (((((y ◇ x) ◇ x) ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) ◇ ((y ◇ z) ◇ z)) := e35
        _ = ((((y ◇ x) ◇ x) ◇ (y ◇ z)) ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) := e31
        _ = ((((((y ◇ x) ◇ x) ◇ (y ◇ z)) ◇ (y ◇ x)) ◇ (y ◇ x)) ◇ (((y ◇ x) ◇ x) ◇ (y ◇ z))) := e33
        _ = ((y ◇ x) ◇ (y ◇ x)) := e36
        _ = (((((y ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (y ◇ x)) ◇ (y ◇ x)) := e12
        _ = ((((y ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (y ◇ x)) := e10
        _ = (((((y ◇ x) ◇ x) ◇ (y ◇ z)) ◇ (y ◇ x)) ◇ (y ◇ x)) := e24
  have e38 : t24 = t23 := by
    exact congrArg (fun q => q ◇ (y ◇ z)) (e37)
  have e39 : t23 = t24 := by
    exact e38.symm
  have e40 : t12 = t24 := by
    exact h ((y ◇ z) ◇ z) (((y ◇ x) ◇ x) ◇ (y ◇ z)) (y ◇ z)
  have e41 : t24 = t12 := by
    exact e40.symm
  have e42 : t4 = t12 := by
    exact h z y ((y ◇ z) ◇ z)
  have e43 : t12 = t4 := by
    exact e42.symm
  have e44 : t4 = t9 := by
    exact h z y y
  have e45 : t1 = t9 := by
    exact by
      calc
        (x ◇ x) = ((((y ◇ x) ◇ x) ◇ x) ◇ (y ◇ x)) := e1
        _ = ((((y ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (y ◇ x)) := e7
        _ = (((((y ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (y ◇ x)) ◇ (y ◇ x)) := e11
        _ = ((y ◇ x) ◇ (y ◇ x)) := e13
        _ = ((((((y ◇ x) ◇ x) ◇ (y ◇ z)) ◇ (y ◇ x)) ◇ (y ◇ x)) ◇ (y ◇ z)) := e14
        _ = ((((((y ◇ x) ◇ x) ◇ (y ◇ z)) ◇ ((y ◇ z) ◇ z)) ◇ ((y ◇ z) ◇ z)) ◇ (y ◇ z)) := e39
        _ = (((y ◇ z) ◇ z) ◇ ((y ◇ z) ◇ z)) := e41
        _ = (z ◇ z) := e43
        _ = (((y ◇ z) ◇ z) ◇ y) := e44
  exact e45
