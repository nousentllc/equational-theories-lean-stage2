-- true_425_1630
-- Hypothesis: x = x ◇ (x ◇ (y ◇ (z ◇ w)))    (Equation 425)
-- Goal:       x = (x ◇ x) ◇ ((x ◇ x) ◇ y)    (Equation 1630)
--
-- Strategy:
--   IDEM : x = x ◇ x.
--     From h x x x (x◇x) : x = x ◇ (x ◇ (x ◇ (x ◇ (x ◇ x))))
--     and (h x x x x).symm : x ◇ (x ◇ (x ◇ (x ◇ x))) = x,
--     congrArg collapses the inner term to x, giving x = x ◇ x.
--   LY   : y = y ◇ (y ◇ (y ◇ (y ◇ y))) from h y y y y.
--   H2   : (x◇x) = (x◇x) ◇ ((x◇x) ◇ (y ◇ (y ◇ (y ◇ (y ◇ y)))))
--          from h (x◇x) y y (y ◇ (y ◇ y)).
--   Collapse inner y◇(y◇(y◇(y◇y))) → y via LY.symm:
--     (x◇x) = (x◇x) ◇ ((x◇x) ◇ y).
--   Combine with IDEM to get x = (x◇x) ◇ ((x◇x) ◇ y).

import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x y
  -- Derive idempotence x = x ◇ x.
  have IDEM_raw : x = x ◇ (x ◇ (x ◇ (x ◇ (x ◇ x)))) := h x x x (x ◇ x)
  have inner_collapse : x ◇ (x ◇ (x ◇ (x ◇ x))) = x := (h x x x x).symm
  have IDEM : x = x ◇ x :=
    IDEM_raw.trans (congrArg (fun t => x ◇ t) inner_collapse)
  -- Derive LY : y = y ◇ (y ◇ (y ◇ (y ◇ y))).
  have LY : y = y ◇ (y ◇ (y ◇ (y ◇ y))) := h y y y y
  -- Apply h to (x◇x) with inner shape that collapses to y.
  have H2 : (x ◇ x) = (x ◇ x) ◇ ((x ◇ x) ◇ (y ◇ (y ◇ (y ◇ (y ◇ y))))) :=
    h (x ◇ x) y y (y ◇ (y ◇ y))
  -- Collapse inner term to y.
  have step : (x ◇ x) = (x ◇ x) ◇ ((x ◇ x) ◇ y) :=
    H2.trans (congrArg (fun t => (x ◇ x) ◇ ((x ◇ x) ◇ t)) LY.symm)
  -- Combine with idempotence.
  exact IDEM.trans step
