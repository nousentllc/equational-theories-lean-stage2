; benchmark generated from python API
(set-info :status unknown)
(declare-sort G 0)
(declare-fun f (G G) G)
(declare-fun c_y () G)
(declare-fun c_x () G)
(declare-fun c_z () G)
(assert
 (forall ((x G) (y G) (z G) )(= x (f (f (f y z) (f x x)) y)))
 )
(assert
 (let ((?x86728 (f (f (f c_y c_z) (f c_x c_y)) c_y)))
(and (distinct c_x ?x86728) true)))
(check-sat)
