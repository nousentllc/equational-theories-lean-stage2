; benchmark generated from python API
(set-info :status unknown)
(declare-sort G 0)
(declare-fun f (G G) G)
(declare-fun c_y () G)
(declare-fun c_x () G)
(declare-fun c_z () G)
(assert
 (forall ((x G) (y G) (z G) )(= x (f (f y x) (f (f y z) y))))
 )
(assert
 (let ((?x39 (f c_y (f c_z (f c_y (f c_x c_y))))))
(and (distinct c_x ?x39) true)))
(check-sat)
