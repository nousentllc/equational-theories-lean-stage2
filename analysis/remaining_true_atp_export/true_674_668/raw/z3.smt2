; benchmark generated from python API
(set-info :status unknown)
(declare-sort G 0)
(declare-fun f (G G) G)
(declare-fun c_z () G)
(declare-fun c_x () G)
(declare-fun c_y () G)
(assert
 (forall ((x G) (y G) (z G) )(= x (f y (f x (f (f x z) z)))))
 )
(assert
 (let ((?x125971 (f c_y (f c_x (f (f c_x c_x) c_z)))))
(and (distinct c_x ?x125971) true)))
(check-sat)
