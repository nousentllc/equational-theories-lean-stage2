-- true_1874_4357
-- Hypothesis: x = (x ◇ (y ◇ z)) ◇ (y ◇ w)        (Equation 1874)
-- Goal:       x ◇ (y ◇ z) = x ◇ (y ◇ w)          (Equation 4357)
--
-- Insight: Apply h to (x ◇ (y ◇ z), y, z, w) — substitute x → (x ◇ (y◇z)):
--   x ◇ (y ◇ z) = ((x ◇ (y◇z)) ◇ (y ◇ z)) ◇ (y ◇ w).
-- The inner ((x ◇ (y◇z)) ◇ (y ◇ z)) equals x via (h x y z z).symm.
-- Substitute via congrArg → goal.

import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x y z w
  have A : x ◇ (y ◇ z) =
      ((x ◇ (y ◇ z)) ◇ (y ◇ z)) ◇ (y ◇ w) :=
    h (x ◇ (y ◇ z)) y z w
  have B : (x ◇ (y ◇ z)) ◇ (y ◇ z) = x := (h x y z z).symm
  exact A.trans (congrArg (fun t => t ◇ (y ◇ w)) B)
