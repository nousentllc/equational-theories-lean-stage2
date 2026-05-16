; benchmark generated from python API
(set-info :status unknown)
(declare-sort G 0)
(declare-fun f (G G) G)
(declare-fun c_y () G)
(declare-fun c_z () G)
(declare-fun c_x () G)
(assert
 (forall ((x G) (y G) (z G) )(= x (f (f (f x y) x) (f y z))))
 )
(assert
 (let ((?x86482 (f (f (f c_x c_x) (f c_y c_z)) c_y)))
(and (distinct c_x ?x86482) true)))
(check-sat)
