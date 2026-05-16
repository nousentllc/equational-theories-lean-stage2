; benchmark generated from python API
(set-info :status unknown)
(declare-sort G 0)
(declare-fun f (G G) G)
(declare-fun c_x () G)
(declare-fun c_w () G)
(declare-fun c_z () G)
(declare-fun c_y () G)
(assert
 (forall ((x G) (y G) (z G) )(= x (f (f (f x y) z) (f y x))))
 )
(assert
 (let ((?x221757 (f (f (f c_x c_y) c_z) (f c_w c_x))))
(and (distinct c_x ?x221757) true)))
(check-sat)
