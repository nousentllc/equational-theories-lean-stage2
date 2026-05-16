; benchmark generated from python API
(set-info :status unknown)
(declare-sort G 0)
(declare-fun f (G G) G)
(declare-fun c_z () G)
(declare-fun c_x () G)
(declare-fun c_y () G)
(assert
 (forall ((x G) (y G) (z G) )(= x (f (f x x) (f (f y x) z))))
 )
(assert
 (let ((?x456736 (f (f c_x (f c_x c_y)) (f c_x c_z))))
(and (distinct c_x ?x456736) true)))
(check-sat)
