-- true_130_1759
-- Hypothesis: x = y ◇ ((y ◇ z) ◇ x)               (Equation 130)
-- Goal:       x = (y ◇ z) ◇ ((x ◇ y) ◇ x)         (Equation 1759)
--
-- Plan:
--   step_x  : x = (y◇z) ◇ (((y◇z) ◇ w) ◇ x)            via h x (y◇z) w
--   step_xy : x◇y = (y◇z) ◇ (((y◇z) ◇ z) ◇ (x◇y))      via h (x◇y) (y◇z) z
--   Pick w := ((y◇z) ◇ z) ◇ (x◇y). Then by step_xy.symm, (y◇z) ◇ w = x◇y.
--   Substituting into step_x: x = (y◇z) ◇ ((x◇y) ◇ x).

import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x y z
  have step_xy : x ◇ y = (y ◇ z) ◇ (((y ◇ z) ◇ z) ◇ (x ◇ y)) :=
    h (x ◇ y) (y ◇ z) z
  have step_x : x = (y ◇ z) ◇
      (((y ◇ z) ◇ (((y ◇ z) ◇ z) ◇ (x ◇ y))) ◇ x) :=
    h x (y ◇ z) (((y ◇ z) ◇ z) ◇ (x ◇ y))
  exact step_x.trans
    (congrArg (fun t => (y ◇ z) ◇ (t ◇ x)) step_xy.symm)
