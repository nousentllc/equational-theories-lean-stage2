-- true_2061_307
-- Hypothesis: x = ((x ◇ y) ◇ y) ◇ (x ◇ y)   (Equation 2061)
-- Goal:       x ◇ x = x ◇ (x ◇ x)             (Equation 307)
--
-- Strategy:
--   A   : x = ((xx)x)(xx)                        from H(x, x)
--   L1  : (xx)x = (x(xx))x                       from H((xx)x, xx) collapsing via A.symm
--   C   : xx = (((xx)x)x)((xx)x)                 from H(xx, x)
--   E   : x(xx) = (((x(xx))x)x)((x(xx))x)        from H(x(xx), x)
--   calc: xx = (...(xx)x...) -- congrArg L1 -- = (...(x(xx))x...) = x(xx)

import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x
  have A : x = ((x ◇ x) ◇ x) ◇ (x ◇ x) := h x x
  have L1_raw : (x ◇ x) ◇ x =
      ((((x ◇ x) ◇ x) ◇ (x ◇ x)) ◇ (x ◇ x)) ◇ (((x ◇ x) ◇ x) ◇ (x ◇ x)) :=
    h ((x ◇ x) ◇ x) (x ◇ x)
  have L1 : (x ◇ x) ◇ x = (x ◇ (x ◇ x)) ◇ x :=
    L1_raw.trans (congrArg (fun t => (t ◇ (x ◇ x)) ◇ t) A.symm)
  have C : x ◇ x = (((x ◇ x) ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x) := h (x ◇ x) x
  have E : x ◇ (x ◇ x) =
      (((x ◇ (x ◇ x)) ◇ x) ◇ x) ◇ ((x ◇ (x ◇ x)) ◇ x) :=
    h (x ◇ (x ◇ x)) x
  calc x ◇ x
      = (((x ◇ x) ◇ x) ◇ x) ◇ ((x ◇ x) ◇ x) := C
    _ = (((x ◇ (x ◇ x)) ◇ x) ◇ x) ◇ ((x ◇ (x ◇ x)) ◇ x) :=
        congrArg (fun t => (t ◇ x) ◇ t) L1
    _ = x ◇ (x ◇ x) := E.symm
