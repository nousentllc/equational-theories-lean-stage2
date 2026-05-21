import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x
  intro y
  intro z
  let t1 : G := (y ◇ z)
  let t2 : G := (t1 ◇ x)
  let t3 : G := (t2 ◇ x)
  let t4 : G := (y ◇ t2)
  let t5 : G := (t2 ◇ t2)
  let t6 : G := (x ◇ t3)
  let t7 : G := (t4 ◇ t2)
  let t8 : G := (t5 ◇ t3)
  let t9 : G := (t6 ◇ t6)
  let t10 : G := (t5 ◇ t7)
  let t11 : G := (t8 ◇ t3)
  let t12 : G := (t9 ◇ t6)
  let t13 : G := (t2 ◇ t10)
  let t14 : G := (t10 ◇ t10)
  let t15 : G := (t14 ◇ t3)
  let t16 : G := (t14 ◇ t11)
  let t17 : G := (t14 ◇ t12)
  let t18 : G := (x ◇ t16)
  let t19 : G := (t5 ◇ t16)
  let t20 : G := (t14 ◇ t16)
  let t21 : G := (t19 ◇ t16)
  let t22 : G := (t9 ◇ t21)
  have e1 : x = t15 := by
    exact h x ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) (y ◇ z)
  have e2 : t2 = t10 := by
    exact h ((y ◇ z) ◇ x) ((y ◇ z) ◇ x) y
  have e3 : t10 = t2 := by
    exact e2.symm
  have e4 : t14 = t5 := by
    exact by
      calc
        (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) = (((y ◇ z) ◇ x) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) := congrArg (fun q => q ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) (e3)
        _ = (((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) := congrArg (fun q => ((y ◇ z) ◇ x) ◇ q) (e3)
  have e5 : t5 = t14 := by
    exact e4.symm
  have e6 : t3 = t16 := by
    exact h (((y ◇ z) ◇ x) ◇ x) ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) (((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x))
  have e7 : t16 = t3 := by
    exact e6.symm
  have e8 : t19 = t15 := by
    exact by
      calc
        ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)))) = ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)))) := congrArg (fun q => q ◇ ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)))) (e5)
        _ = ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((y ◇ z) ◇ x) ◇ x)) := congrArg (fun q => (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ q) (e7)
  have e9 : t15 = x := by
    exact e1.symm
  have e10 : t19 = x := by
    exact by
      calc
        ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)))) = ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((y ◇ z) ◇ x) ◇ x)) := e8
        _ = x := e9
  have e11 : t21 = t6 := by
    exact by
      calc
        (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)))) ◇ ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)))) = (x ◇ ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)))) := congrArg (fun q => q ◇ ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)))) (e10)
        _ = (x ◇ (((y ◇ z) ◇ x) ◇ x)) := congrArg (fun q => x ◇ q) (e7)
  have e12 : t6 = t21 := by
    exact e11.symm
  have e13 : t12 = t22 := by
    exact congrArg (fun q => ((x ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (x ◇ (((y ◇ z) ◇ x) ◇ x))) ◇ q) (e12)
  have e14 : t16 = t22 := by
    exact h ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x))) (x ◇ (((y ◇ z) ◇ x) ◇ x)) (((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x))
  have e15 : t22 = t16 := by
    exact e14.symm
  have e16 : t12 = t3 := by
    exact by
      calc
        (((x ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (x ◇ (((y ◇ z) ◇ x) ◇ x))) ◇ (x ◇ (((y ◇ z) ◇ x) ◇ x))) = (((x ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (x ◇ (((y ◇ z) ◇ x) ◇ x))) ◇ (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)))) ◇ ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x))))) := e13
        _ = ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (((y ◇ z) ◇ x) ◇ x))) := e15
        _ = (((y ◇ z) ◇ x) ◇ x) := e7
  have e17 : t17 = t15 := by
    exact congrArg (fun q => (((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ q) (e16)
  have e18 : t15 = t17 := by
    exact e17.symm
  have e19 : t6 = t17 := by
    exact h (x ◇ (((y ◇ z) ◇ x) ◇ x)) ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) (x ◇ (((y ◇ z) ◇ x) ◇ x))
  have e20 : t17 = t6 := by
    exact e19.symm
  have e21 : x = t6 := by
    exact by
      calc
        x = ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((y ◇ z) ◇ x) ◇ x)) := e1
        _ = ((((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x))) ◇ ((((y ◇ z) ◇ x) ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ ((y ◇ z) ◇ x)) ◇ ((y ◇ z) ◇ x)))) ◇ (((x ◇ (((y ◇ z) ◇ x) ◇ x)) ◇ (x ◇ (((y ◇ z) ◇ x) ◇ x))) ◇ (x ◇ (((y ◇ z) ◇ x) ◇ x)))) := e18
        _ = (x ◇ (((y ◇ z) ◇ x) ◇ x)) := e20
  exact e21
