; benchmark generated from python API
(set-info :status unknown)
(declare-sort G 0)
(declare-fun f (G G) G)
(declare-fun c_x () G)
(declare-fun c_z () G)
(declare-fun c_y () G)
(assert
 (forall ((x G) (y G) (z G) )(= x (f (f y y) (f (f z x) x))))
 )
(assert
 (let ((?x874 (f c_x (f (f (f c_y c_z) c_x) c_x))))
(and (distinct c_x ?x874) true)))
(check-sat)
