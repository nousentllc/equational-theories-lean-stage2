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
    -- try tactics for discovery
    rw [← l6 a a a]
    exact l5 a a a
  have l8 : ∀ (a : G), a ◇ ((a ◇ a) ◇ a) = a ◇ a := by
    intro a
    rw [← l4 a ((a ◇ a) ◇ a)]
    rw [l7 a]
  have l9 : ∀ (a b : G), (a ◇ a) ◇ (a ◇ b) = (a ◇ a) ◇ a := by
    intro a b
    rw [← l8 (a ◇ a)]
    rw [l6 a a b]
  have l11 : ∀ (a b c : G), a ◇ ((a ◇ b) ◇ c) = a ◇ a := by
    intro a b c
    rw [← l4 a ((a ◇ b) ◇ c)]
    rw [l9 a b]
  have l13 : ∀ (a b c : G), ((a ◇ (b ◇ c)) ◇ a) = ((a ◇ a) ◇ b) := by
    intro a b c
    rw [← l11 a b c]
    -- need prove ((a ◇ (b◇c))◇a) = (a ◇ ((a◇b)◇c))◇b
    sorry
  have l15 : ∀ (a b c : G), (((a ◇ a) ◇ (b ◇ c)) ◇ b) = a := by
    intro a b c
    calc
      (((a ◇ a) ◇ (b ◇ c)) ◇ b) = (((a ◇ ((b ◇ c) ◇ b)) ◇ a) ◇ b) := congrArg (fun q => q ◇ b) (l13 a (b ◇ c) b).symm
      _ = a := l5 a b c
  exact (l15 x y z).symm
