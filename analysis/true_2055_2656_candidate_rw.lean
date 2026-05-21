import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x y z
  have l4 : ∀ (a b : G), a ◇ (a ◇ b) = a ◇ a := by
    intro a b
    calc
      a ◇ (a ◇ b) = ((((a ◇ a) ◇ a) ◇ (a ◇ a)) ◇ (a ◇ b)) := congrArg (fun t => t ◇ (a ◇ b)) (h a a a)
      _ = a ◇ a := (h (a ◇ a) a b).symm
  have l5 : ∀ (a b c : G), (((a ◇ ((b ◇ c) ◇ b)) ◇ a) ◇ b) = a := by
    intro a b c
    calc
      (((a ◇ ((b ◇ c) ◇ b)) ◇ a) ◇ b) = (((a ◇ ((b ◇ c) ◇ b)) ◇ a) ◇ (((b ◇ c) ◇ b) ◇ (c ◇ a))) := congrArg (fun t => (((a ◇ ((b ◇ c) ◇ b)) ◇ a) ◇ t)) (h b c a)
      _ = a := (h a ((b ◇ c) ◇ b) (c ◇ a)).symm
  have l6 : ∀ (a b c : G), (((a ◇ a) ◇ a) ◇ ((a ◇ b) ◇ c)) = a := by
    intro a b c
    calc
      (((a ◇ a) ◇ a) ◇ ((a ◇ b) ◇ c)) = (((a ◇ (a ◇ b)) ◇ a) ◇ ((a ◇ b) ◇ c)) := congrArg (fun q => ((q ◇ a) ◇ ((a ◇ b) ◇ c))) (l4 a b).symm
      _ = a := (h a (a ◇ b) c).symm
  have l7 : ∀ (a : G), ((a ◇ ((a ◇ a) ◇ a)) ◇ a) = ((a ◇ a) ◇ a) := by
    intro a
    let t : G := (a ◇ a) ◇ a
    calc
      ((a ◇ t) ◇ a) = (((t ◇ ((a ◇ a) ◇ a)) ◇ t) ◇ a) := congrArg (fun q => ((q ◇ t) ◇ a)) (l6 a a a).symm
      _ = t := l5 t a a
  have l8 : ∀ (a : G), a ◇ ((a ◇ a) ◇ a) = a ◇ a := by
    intro a
    let t : G := (a ◇ a) ◇ a
    let u : G := a ◇ t
    let v : G := u ◇ a
    have vt : v = t := l7 a
    have tt : t ◇ t = a := l6 a a a
    have va : v ◇ a = a := l5 a a a
    have cube : ((t ◇ t) ◇ t) = ((v ◇ v) ◇ v) := congrArg (fun q => (q ◇ q) ◇ q) vt.symm
    have p1 : u ◇ u = (((v ◇ v) ◇ v) ◇ ((v ◇ a) ◇ t)) := by
      calc
        u ◇ u = ((t ◇ t) ◇ t) ◇ u := congrArg (fun q => (q ◇ t) ◇ u) tt.symm
        _ = ((v ◇ v) ◇ v) ◇ u := congrArg (fun q => q ◇ u) cube
        _ = ((v ◇ v) ◇ v) ◇ ((v ◇ a) ◇ t) := congrArg (fun q => ((v ◇ v) ◇ v) ◇ (q ◇ t)) va.symm
    have p2 : u ◇ u = v := p1.trans (l6 v a t)
    have p3 : u ◇ u = t := p2.trans vt
    have left : ((u ◇ u) ◇ u) = a := (congrArg (fun q => q ◇ u) p3).trans (h a a t).symm
    have right : v ◇ t = a := (congrArg (fun q => q ◇ t) vt).trans tt
    calc
      u = (((u ◇ u) ◇ u) ◇ (v ◇ t)) := (l6 u a t).symm
      _ = a ◇ (v ◇ t) := congrArg (fun q => q ◇ (v ◇ t)) left
      _ = a ◇ a := congrArg (fun q => a ◇ q) right
  have l9 : ∀ (a b : G), (a ◇ a) ◇ (a ◇ b) = (a ◇ a) ◇ a := by
    intro a b
    let t : G := (a ◇ a) ◇ a
    have tt : t ◇ t = a := l6 a a a
    have left : (a ◇ a) = (t ◇ t) ◇ t := (l8 a).symm.trans (congrArg (fun q => q ◇ t) tt.symm)
    have right : a ◇ b = (t ◇ t) ◇ b := congrArg (fun q => q ◇ b) tt.symm
    calc
      (a ◇ a) ◇ (a ◇ b) = ((t ◇ t) ◇ t) ◇ ((t ◇ t) ◇ b) := (congrArg (fun q => q ◇ (a ◇ b)) left).trans (congrArg (fun q => ((t ◇ t) ◇ t) ◇ q) right)
      _ = t := l6 t t b
  have l11 : ∀ (a b c : G), a ◇ ((a ◇ b) ◇ c) = a ◇ a := by
    intro a b c
    let s : G := a ◇ a
    let r : G := (a ◇ b) ◇ c
    have p : a = ((s ◇ (a ◇ b)) ◇ s) := (h a a a).trans (congrArg (fun q => q ◇ s) (l9 a b).symm)
    calc
      a ◇ r = (((s ◇ (a ◇ b)) ◇ s) ◇ r) := congrArg (fun q => q ◇ r) p
      _ = s := (h s (a ◇ b) c).symm
  have l13 : ∀ (a b c : G), ((a ◇ (b ◇ c)) ◇ a) = ((a ◇ a) ◇ b) := by
    intro a b c
    let p : G := (a ◇ (b ◇ c)) ◇ a
    have hp : (p ◇ ((b ◇ c) ◇ b)) = a := (h a (b ◇ c) b).symm
    have inter : ((a ◇ p) ◇ b) = p := by
      calc
        ((a ◇ p) ◇ b) = (((p ◇ ((b ◇ c) ◇ b)) ◇ p) ◇ b) := congrArg (fun q => ((q ◇ p) ◇ b)) hp.symm
        _ = p := l5 p b c
    exact inter.symm.trans (congrArg (fun q => q ◇ b) (l11 a (b ◇ c) a))
  have l15 : ∀ (a b c : G), (((a ◇ a) ◇ (b ◇ c)) ◇ b) = a := by
    intro a b c
    calc
      (((a ◇ a) ◇ (b ◇ c)) ◇ b) = (((a ◇ ((b ◇ c) ◇ b)) ◇ a) ◇ b) := congrArg (fun q => q ◇ b) (l13 a (b ◇ c) b).symm
      _ = a := l5 a b c
  exact (l15 x y z).symm
