import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x
  intro y
  let t1 : G := (x ◇ x)
  let t2 : G := (y ◇ x)
  let t3 : G := (y ◇ y)
  let t4 : G := (t1 ◇ x)
  let t5 : G := (t3 ◇ x)
  let t6 : G := (t4 ◇ t1)
  let t7 : G := (t4 ◇ t2)
  let t8 : G := (t5 ◇ t3)
  let t9 : G := (t4 ◇ t4)
  let t10 : G := (t4 ◇ t5)
  let t12 : G := (t9 ◇ t4)
  let t13 : G := (t5 ◇ t10)
  let t14 : G := (t7 ◇ t7)
  let t15 : G := (t8 ◇ t8)
  let t16 : G := (t10 ◇ t7)
  let t17 : G := (t10 ◇ t10)
  let t18 : G := (t12 ◇ t9)
  let t19 : G := (t14 ◇ t7)
  let t20 : G := (t15 ◇ t8)
  let t21 : G := (t17 ◇ t10)
  let t24 : G := (t19 ◇ t10)
  let t27 : G := (t19 ◇ t14)
  let t28 : G := (t20 ◇ t15)
  let t29 : G := (t19 ◇ t16)
  let t30 : G := (t21 ◇ t13)
  let t31 : G := (t18 ◇ t18)
  let t32 : G := (t20 ◇ t20)
  let t33 : G := (t21 ◇ t18)
  let t35 : G := (t21 ◇ t24)
  let t36 : G := (t18 ◇ t30)
  let t37 : G := (t20 ◇ t30)
  let t38 : G := (t31 ◇ t18)
  let t39 : G := (t30 ◇ t30)
  let t40 : G := (t38 ◇ t33)
  let t41 : G := (t39 ◇ t30)
  let t42 : G := (t40 ◇ t7)
  let t43 : G := (t40 ◇ t8)
  let t44 : G := (t41 ◇ t36)
  let t45 : G := (t41 ◇ t37)
  let t46 : G := (t19 ◇ t42)
  let t47 : G := (t20 ◇ t43)
  have e1 : x = t6 := by
    exact h x x
  have e2 : t4 = t18 := by
    exact h ((x ◇ x) ◇ x) ((x ◇ x) ◇ x)
  have e3 : t18 = t44 := by
    exact h (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))) ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))
  have e4 : t18 = t4 := by
    exact e2.symm
  have e5 : t5 = t30 := by
    exact h ((y ◇ y) ◇ x) (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))
  have e6 : t30 = t5 := by
    exact e5.symm
  have e7 : t36 = t10 := by
    exact by
      calc
        ((((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))) = (((x ◇ x) ◇ x) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))) := congrArg (fun q => q ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))) (e4)
        _ = (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) := congrArg (fun q => ((x ◇ x) ◇ x) ◇ q) (e6)
  have e8 : t10 = t29 := by
    exact h (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) (((x ◇ x) ◇ x) ◇ (y ◇ x))
  have e9 : t3 = t10 := by
    exact h (y ◇ y) x
  have e10 : t10 = t3 := by
    exact e9.symm
  have e11 : y = t7 := by
    exact h y x
  have e12 : t7 = y := by
    exact e11.symm
  have e13 : t14 = t3 := by
    exact by
      calc
        ((((x ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) = (y ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) := congrArg (fun q => q ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) (e12)
        _ = (y ◇ y) := congrArg (fun q => y ◇ q) (e12)
  have e14 : t3 = t14 := by
    exact e13.symm
  have e15 : t10 = t14 := by
    exact by
      calc
        (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) = (y ◇ y) := e10
        _ = ((((x ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) := e14
  have e16 : t16 = t19 := by
    exact congrArg (fun q => q ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) (e15)
  have e17 : t19 = t35 := by
    exact h (((((x ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))
  have e18 : t21 = t40 := by
    exact h (((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))
  have e19 : t40 = t21 := by
    exact e18.symm
  have e20 : t7 = t27 := by
    exact h (((x ◇ x) ◇ x) ◇ (y ◇ x)) (((x ◇ x) ◇ x) ◇ (y ◇ x))
  have e21 : t24 = t27 := by
    exact congrArg (fun q => (((((x ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ q) (e15)
  have e22 : t27 = t24 := by
    exact e21.symm
  have e23 : t7 = t24 := by
    exact by
      calc
        (((x ◇ x) ◇ x) ◇ (y ◇ x)) = ((((((x ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ ((((x ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x)))) := e20
        _ = ((((((x ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) := e22
  have e24 : t42 = t35 := by
    exact by
      calc
        (((((((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))))) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) = ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) := congrArg (fun q => q ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) (e19)
        _ = ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ ((((((x ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)))) := congrArg (fun q => (((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ q) (e23)
  have e25 : t35 = t42 := by
    exact e24.symm
  have e26 : t16 = t42 := by
    exact by
      calc
        ((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) = (((((x ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) := e16
        _ = ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ ((((((x ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)))) := e17
        _ = (((((((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))))) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) := e25
  have e27 : t29 = t46 := by
    exact congrArg (fun q => (((((x ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ q) (e26)
  have e28 : t40 = t46 := by
    exact h ((((((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))))) (((x ◇ x) ◇ x) ◇ (y ◇ x))
  have e29 : t46 = t40 := by
    exact e28.symm
  have e30 : t40 = t47 := by
    exact h ((((((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))))) (((y ◇ y) ◇ x) ◇ (y ◇ y))
  have e31 : t13 = t8 := by
    exact congrArg (fun q => ((y ◇ y) ◇ x) ◇ q) (e10)
  have e32 : t8 = t13 := by
    exact e31.symm
  have e33 : t43 = t30 := by
    exact by
      calc
        (((((((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) = ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) := congrArg (fun q => q ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) (e19)
        _ = ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)))) := congrArg (fun q => (((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ q) (e32)
  have e34 : t30 = t43 := by
    exact e33.symm
  have e35 : t37 = t47 := by
    exact congrArg (fun q => (((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ q) (e34)
  have e36 : t47 = t37 := by
    exact e35.symm
  have e37 : t36 = t37 := by
    exact by
      calc
        ((((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))) = (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) := e7
        _ = ((((((x ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ ((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x)))) := e8
        _ = ((((((x ◇ x) ◇ x) ◇ (y ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x))) ◇ (((((((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))))) ◇ (((x ◇ x) ◇ x) ◇ (y ◇ x)))) := e27
        _ = ((((((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))))) := e29
        _ = ((((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((((((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y)))) := e30
        _ = ((((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))) := e36
  have e38 : t44 = t45 := by
    exact congrArg (fun q => ((((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))) ◇ q) (e37)
  have e39 : t20 = t45 := by
    exact h (((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))
  have e40 : t45 = t20 := by
    exact e39.symm
  have e41 : t4 = t20 := by
    exact by
      calc
        ((x ◇ x) ◇ x) = (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))) := e2
        _ = (((((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))) ◇ ((((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)))))) := e3
        _ = (((((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))) ◇ ((((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)))))) := e38
        _ = (((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) := e40
  have e42 : t1 = t9 := by
    exact h (x ◇ x) x
  have e43 : t45 = t44 := by
    exact e38.symm
  have e44 : t44 = t18 := by
    exact e3.symm
  have e45 : t20 = t4 := by
    exact by
      calc
        (((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) = (((((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))) ◇ ((((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)))))) := e39
        _ = (((((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))))) ◇ ((((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))) ◇ ((((((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x))) ◇ (((y ◇ y) ◇ x) ◇ (((x ◇ x) ◇ x) ◇ ((y ◇ y) ◇ x)))))) := e43
        _ = (((((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) ◇ ((x ◇ x) ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x))) := e44
        _ = ((x ◇ x) ◇ x) := e4
  have e46 : t32 = t9 := by
    exact by
      calc
        ((((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y)))) = (((x ◇ x) ◇ x) ◇ (((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y)))) := congrArg (fun q => q ◇ (((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y)))) (e45)
        _ = (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) := congrArg (fun q => ((x ◇ x) ◇ x) ◇ q) (e45)
  have e47 : t9 = t32 := by
    exact e46.symm
  have e48 : t15 = t32 := by
    exact h ((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) (((y ◇ y) ◇ x) ◇ (y ◇ y))
  have e49 : t32 = t15 := by
    exact e48.symm
  have e50 : t1 = t15 := by
    exact by
      calc
        (x ◇ x) = (((x ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x)) := e42
        _ = ((((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y)))) := e47
        _ = ((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) := e49
  have e51 : t6 = t28 := by
    exact by
      calc
        (((x ◇ x) ◇ x) ◇ (x ◇ x)) = ((((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (x ◇ x)) := congrArg (fun q => q ◇ (x ◇ x)) (e41)
        _ = ((((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ ((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y)))) := congrArg (fun q => (((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ q) (e50)
  have e52 : t8 = t28 := by
    exact h (((y ◇ y) ◇ x) ◇ (y ◇ y)) (((y ◇ y) ◇ x) ◇ (y ◇ y))
  have e53 : t28 = t8 := by
    exact e52.symm
  have e54 : x = t8 := by
    exact by
      calc
        x = (((x ◇ x) ◇ x) ◇ (x ◇ x)) := e1
        _ = ((((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y))) ◇ ((((y ◇ y) ◇ x) ◇ (y ◇ y)) ◇ (((y ◇ y) ◇ x) ◇ (y ◇ y)))) := e51
        _ = (((y ◇ y) ◇ x) ◇ (y ◇ y)) := e53
  exact e54
