-- true_2942_5
-- Hypothesis: x = ((y ◇ (y ◇ x)) ◇ z) ◇ x       (Equation 2942)
-- Goal:       x = y ◇ x                          (Equation 5, right projection)
--
-- Insight: H gives us "x is left-absorbed by ((y◇(y◇x))◇z)" for any z.
-- Key derived lemma L_A: ∀ a b, (a ◇ b) ◇ a = a  (specialized: (y ◇ (y◇x)) ◇ y = y).
-- Then by h(x, y, y): x = ((y ◇ (y ◇ x)) ◇ y) ◇ x. Substitute the inner
-- via L_A.symm to collapse the prefix to y, yielding x = y ◇ x.

import JudgeProblem

def submission : Goal := by
  intro G _ h
  intro x y
  -- Let Byyy = (y ◇ (y ◇ y)) ◇ y. From h(y,y,y), Byyy ◇ y = y.
  have hByyy : ((y ◇ (y ◇ y)) ◇ y) ◇ y = y := (h y y y).symm
  -- Apply h(y, Byyy, y◇x):
  have hExpand : y =
      ((((y ◇ (y ◇ y)) ◇ y) ◇ (((y ◇ (y ◇ y)) ◇ y) ◇ y)) ◇ (y ◇ x)) ◇ y :=
    h y ((y ◇ (y ◇ y)) ◇ y) (y ◇ x)
  -- Collapse Byyy ◇ (Byyy ◇ y) = Byyy ◇ y = y:
  have step_a :
      ((y ◇ (y ◇ y)) ◇ y) ◇ (((y ◇ (y ◇ y)) ◇ y) ◇ y) =
        ((y ◇ (y ◇ y)) ◇ y) ◇ y :=
    congrArg (fun t => ((y ◇ (y ◇ y)) ◇ y) ◇ t) hByyy
  have collapse :
      ((y ◇ (y ◇ y)) ◇ y) ◇ (((y ◇ (y ◇ y)) ◇ y) ◇ y) = y :=
    step_a.trans hByyy
  -- L_A specialized: y = (y ◇ (y ◇ x)) ◇ y.
  have L_A : y = (y ◇ (y ◇ x)) ◇ y :=
    hExpand.trans (congrArg (fun t => (t ◇ (y ◇ x)) ◇ y) collapse)
  -- h(x, y, y): x = ((y ◇ (y ◇ x)) ◇ y) ◇ x.
  have hT : x = ((y ◇ (y ◇ x)) ◇ y) ◇ x := h x y y
  -- Substitute the prefix (y ◇ (y ◇ x)) ◇ y → y via L_A.symm.
  exact hT.trans (congrArg (fun t => t ◇ x) L_A.symm)
