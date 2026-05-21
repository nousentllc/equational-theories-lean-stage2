import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x y z w
  let xy : G := x ◇ y
  let xyz : G := xy ◇ z
  let xw : G := x ◇ w
  let wx : G := w ◇ x
  let a6 : G := ((z ◇ xy) ◇ xyz) ◇ xyz
  let p : G := ((xw ◇ a6) ◇ wx)
  let a18 : G := p ◇ (a6 ◇ xw)
  let a13 : G := (a6 ◇ xw) ◇ p
  let a14 : G := ((xw ◇ a6) ◇ a13) ◇ y
  let a15 : G := a14 ◇ (a13 ◇ (xw ◇ a6))
  let a30 : G := (a6 ◇ a18) ◇ p
  have hx : x = p := h x w a6
  have hxw : xw = a18 := h xw a6 wx
  have hp : p = ((a18 ◇ a6) ◇ a13) := h p (a6 ◇ xw) a6
  have ha6 : a6 = a30 ◇ (a18 ◇ a6) := h a6 a18 p
  have hz : z = a6 := h z xy xyz
  have hshift : xw ◇ a6 = a15 := h (xw ◇ a6) a13 y
  have p22 : xw ◇ a6 = a18 ◇ a6 :=
    congrArg (fun q => q ◇ a6) hxw
  have pleftbase : ((xw ◇ a6) ◇ a13) = x := by
    calc
      ((xw ◇ a6) ◇ a13) = ((a18 ◇ a6) ◇ a13) :=
        congrArg (fun q => q ◇ a13) p22
      _ = p := hp.symm
      _ = x := hx.symm
  have pleft : a14 = xy :=
    congrArg (fun q => q ◇ y) pleftbase
  have p30 : a30 = a13 := by
    exact congrArg (fun q => q ◇ p) (congrArg (fun q => a6 ◇ q) hxw.symm)
  have pright : a13 ◇ (xw ◇ a6) = z := by
    calc
      a13 ◇ (xw ◇ a6) = a30 ◇ (xw ◇ a6) :=
        congrArg (fun q => q ◇ (xw ◇ a6)) p30.symm
      _ = a30 ◇ (a18 ◇ a6) :=
        congrArg (fun q => a30 ◇ q) p22
      _ = a6 := ha6.symm
      _ = z := hz.symm
  have pa15 : a15 = xyz := by
    calc
      a15 = xy ◇ (a13 ◇ (xw ◇ a6)) :=
        congrArg (fun q => q ◇ (a13 ◇ (xw ◇ a6))) pleft
      _ = xy ◇ z :=
        congrArg (fun q => xy ◇ q) pright
  have p39 : xw ◇ a6 = xyz :=
    hshift.trans pa15
  calc
    x = p := hx
    _ = xyz ◇ wx := congrArg (fun q => q ◇ wx) p39
