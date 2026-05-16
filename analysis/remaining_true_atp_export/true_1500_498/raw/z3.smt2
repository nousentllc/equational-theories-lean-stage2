; benchmark generated from python API
(set-info :status unknown)
(declare-sort G 0)
(declare-fun f (G G) G)
(declare-fun c_w () G)
(declare-fun c_z () G)
(declare-fun c_x () G)
(declare-fun c_y () G)
(assert
 (forall ((x G) (y G) (z G) )(= x (f (f y x) (f z (f x z)))))
 )
(assert
 (let ((?x21159 (f c_y (f c_x (f c_z (f c_w c_w))))))
(and (distinct c_x ?x21159) true)))
(check-sat)
