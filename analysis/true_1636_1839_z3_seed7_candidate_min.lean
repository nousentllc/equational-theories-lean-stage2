import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x
  intro y
  intro z
  let t1 : G := (x ◇ x)
  let t2 : G := (x ◇ y)
  let t3 : G := (x ◇ z)
  let t4 : G := (y ◇ y)
  let t5 : G := (z ◇ z)
  let t6 : G := (t2 ◇ x)
  let t7 : G := (x ◇ t2)
  let t8 : G := (t1 ◇ t1)
  let t9 : G := (t7 ◇ z)
  let t10 : G := (t7 ◇ t3)
  let t11 : G := (t4 ◇ t6)
  let t12 : G := (t6 ◇ t7)
  let t13 : G := (t7 ◇ t7)
  let t14 : G := (t9 ◇ x)
  let t17 : G := (t8 ◇ t11)
  let t18 : G := (t12 ◇ t11)
  let t19 : G := (t5 ◇ t14)
  let t21 : G := (t8 ◇ t17)
  let t22 : G := (t13 ◇ t18)
  let t24 : G := (t6 ◇ t22)
  let t25 : G := (t1 ◇ t24)
  let t27 : G := (t1 ◇ t25)
  let t28 : G := (t25 ◇ t25)
  let t29 : G := (t27 ◇ t19)
  let t32 : G := (t27 ◇ t25)
  let t33 : G := (t28 ◇ t12)
  let t35 : G := (t28 ◇ t29)
  let t36 : G := (t28 ◇ t32)
  let t37 : G := (t28 ◇ t33)
  have e1 : x = t25 := by
    exact h x (x ◇ y) (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))
  have e2 : t25 = t35 := by
    exact h ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) (x ◇ x) ((z ◇ z) ◇ (((x ◇ (x ◇ y)) ◇ z) ◇ x))
  have e3 : t25 = x := by
    exact e1.symm
  have e4 : t28 = t1 := by
    exact by
      calc
        (((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) = (x ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) := congrArg (fun q => q ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) (e3)
        _ = (x ◇ x) := congrArg (fun q => x ◇ q) (e3)
  have e5 : t1 = t28 := by
    exact e4.symm
  have e6 : t7 = t22 := by
    exact h (x ◇ (x ◇ y)) ((x ◇ y) ◇ x) ((y ◇ y) ◇ ((x ◇ y) ◇ x))
  have e7 : t22 = t7 := by
    exact e6.symm
  have e8 : t24 = t12 := by
    exact congrArg (fun q => ((x ◇ y) ◇ x) ◇ q) (e7)
  have e9 : t12 = t24 := by
    exact e8.symm
  have e10 : t33 = t25 := by
    exact by
      calc
        ((((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ (((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y)))) = ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y)))) := congrArg (fun q => q ◇ (((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y)))) (e4)
        _ = ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) := congrArg (fun q => (x ◇ x) ◇ q) (e9)
  have e11 : t25 = t33 := by
    exact e10.symm
  have e12 : t27 = t37 := by
    exact by
      calc
        ((x ◇ x) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) = ((((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) := congrArg (fun q => q ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) (e5)
        _ = ((((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ ((((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ (((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))))) := congrArg (fun q => (((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ q) (e11)
  have e13 : t25 = t37 := by
    exact h ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) (((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y)))
  have e14 : t37 = t25 := by
    exact e13.symm
  have e15 : t27 = x := by
    exact by
      calc
        ((x ◇ x) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) = ((((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ ((((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ (((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))))) := e12
        _ = ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) := e14
        _ = x := e3
  have e16 : t32 = t1 := by
    exact by
      calc
        (((x ◇ x) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) = (x ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) := congrArg (fun q => q ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) (e15)
        _ = (x ◇ x) := congrArg (fun q => x ◇ q) (e3)
  have e17 : t1 = t32 := by
    exact e16.symm
  have e18 : t8 = t36 := by
    exact by
      calc
        ((x ◇ x) ◇ (x ◇ x)) = ((((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ (x ◇ x)) := congrArg (fun q => q ◇ (x ◇ x)) (e5)
        _ = ((((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ (((x ◇ x) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))))) := congrArg (fun q => (((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ q) (e17)
  have e19 : t25 = t36 := by
    exact h ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) (x ◇ x) ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))
  have e20 : t36 = t25 := by
    exact e19.symm
  have e21 : t8 = x := by
    exact by
      calc
        ((x ◇ x) ◇ (x ◇ x)) = ((((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ (((x ◇ x) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))))) := e18
        _ = ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) := e20
        _ = x := e3
  have e22 : y = t11 := by
    exact h y x x
  have e23 : t11 = y := by
    exact e22.symm
  have e24 : t17 = t2 := by
    exact by
      calc
        (((x ◇ x) ◇ (x ◇ x)) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))) = (x ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))) := congrArg (fun q => q ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))) (e21)
        _ = (x ◇ y) := congrArg (fun q => x ◇ q) (e23)
  have e25 : t21 = t7 := by
    exact by
      calc
        (((x ◇ x) ◇ (x ◇ x)) ◇ (((x ◇ x) ◇ (x ◇ x)) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))) = (x ◇ (((x ◇ x) ◇ (x ◇ x)) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))) := congrArg (fun q => q ◇ (((x ◇ x) ◇ (x ◇ x)) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))) (e21)
        _ = (x ◇ (x ◇ y)) := congrArg (fun q => x ◇ q) (e24)
  have e26 : t7 = t21 := by
    exact e25.symm
  have e27 : t1 = t21 := by
    exact h (x ◇ x) (x ◇ x) ((y ◇ y) ◇ ((x ◇ y) ◇ x))
  have e28 : t21 = t1 := by
    exact e27.symm
  have e29 : t7 = t28 := by
    exact by
      calc
        (x ◇ (x ◇ y)) = (((x ◇ x) ◇ (x ◇ x)) ◇ (((x ◇ x) ◇ (x ◇ x)) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))) := e26
        _ = (x ◇ x) := e28
        _ = (((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) := e5
  have e30 : z = t19 := by
    exact h z (x ◇ (x ◇ y)) x
  have e31 : t19 = z := by
    exact e30.symm
  have e32 : t29 = t3 := by
    exact by
      calc
        (((x ◇ x) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ ((z ◇ z) ◇ (((x ◇ (x ◇ y)) ◇ z) ◇ x))) = (x ◇ ((z ◇ z) ◇ (((x ◇ (x ◇ y)) ◇ z) ◇ x))) := congrArg (fun q => q ◇ ((z ◇ z) ◇ (((x ◇ (x ◇ y)) ◇ z) ◇ x))) (e15)
        _ = (x ◇ z) := congrArg (fun q => x ◇ q) (e31)
  have e33 : t3 = t29 := by
    exact e32.symm
  have e34 : t10 = t35 := by
    exact by
      calc
        ((x ◇ (x ◇ y)) ◇ (x ◇ z)) = ((((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ (x ◇ z)) := congrArg (fun q => q ◇ (x ◇ z)) (e29)
        _ = ((((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ (((x ◇ x) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ ((z ◇ z) ◇ (((x ◇ (x ◇ y)) ◇ z) ◇ x)))) := congrArg (fun q => (((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ q) (e33)
  have e35 : t35 = t10 := by
    exact e34.symm
  have e36 : x = t10 := by
    exact by
      calc
        x = ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) := e1
        _ = ((((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x)))))) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ (((x ◇ x) ◇ ((x ◇ x) ◇ (((x ◇ y) ◇ x) ◇ (((x ◇ (x ◇ y)) ◇ (x ◇ (x ◇ y))) ◇ ((((x ◇ y) ◇ x) ◇ (x ◇ (x ◇ y))) ◇ ((y ◇ y) ◇ ((x ◇ y) ◇ x))))))) ◇ ((z ◇ z) ◇ (((x ◇ (x ◇ y)) ◇ z) ◇ x)))) := e2
        _ = ((x ◇ (x ◇ y)) ◇ (x ◇ z)) := e35
  exact e36
