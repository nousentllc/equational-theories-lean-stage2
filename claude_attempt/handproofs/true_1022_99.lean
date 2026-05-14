-- true_1022_99
-- Hypothesis: x = x ◇ ((x ◇ (x ◇ y)) ◇ x)   (Equation 1022)
-- Goal:       x = x ◇ ((x ◇ x) ◇ x)          (Equation 99)
--
-- Insight: h(x, x) gives x = x ◇ M(x) where M(x) = (x◇(x◇x))◇x.
-- So x ◇ M(x) = x. Now apply h with y := M(x):
--   x = x ◇ ((x ◇ (x ◇ M(x))) ◇ x).
-- The inner (x ◇ M(x)) collapses to x, leaving x = x ◇ ((x ◇ x) ◇ x).

import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x
  -- A: x = x ◇ ((x ◇ (x ◇ x)) ◇ x)
  have A : x = x ◇ ((x ◇ (x ◇ x)) ◇ x) := h x x
  have hxM : x ◇ ((x ◇ (x ◇ x)) ◇ x) = x := A.symm
  -- Apply h with y := (x ◇ (x ◇ x)) ◇ x:
  have hM : x = x ◇ ((x ◇ (x ◇ ((x ◇ (x ◇ x)) ◇ x))) ◇ x) :=
    h x ((x ◇ (x ◇ x)) ◇ x)
  -- Collapse (x ◇ ((x ◇ (x ◇ x)) ◇ x)) → x inside.
  exact hM.trans (congrArg (fun t => x ◇ ((x ◇ t) ◇ x)) hxM)
