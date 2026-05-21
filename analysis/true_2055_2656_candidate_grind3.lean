import JudgeProblem
set_option maxHeartbeats 2000000

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
    grind
  have l9 : ∀ (a b : G), (a ◇ a) ◇ (a ◇ b) = (a ◇ a) ◇ a := by
    intro a b
    grind
  have l11 : ∀ (a b c : G), a ◇ ((a ◇ b) ◇ c) = a ◇ a := by
    intro a b c
    grind
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
