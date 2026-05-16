; benchmark generated from python API
(set-info :status unknown)
(declare-sort G 0)
(declare-fun f (G G) G)
(declare-fun c_y () G)
(declare-fun c_x () G)
(declare-fun c_z () G)
(assert
 (forall ((x G) (y G) (z G) )(= x (f y (f x (f (f z y) y)))))
 )
(assert
 (let ((?x22579 (f (f c_y (f c_z c_y)) (f c_x c_y))))
(and (distinct c_x ?x22579) true)))
(check-sat)
