; benchmark generated from python API
(set-info :status unknown)
(declare-sort G 0)
(declare-fun f (G G) G)
(declare-fun c_y () G)
(declare-fun c_x () G)
(declare-fun c_z () G)
(assert
 (forall ((x G) (y G) (z G) (w G) )(= x (f y (f x (f (f z x) w)))))
 )
(assert
 (let ((?x362442 (f c_y (f (f (f c_z c_x) c_x) c_y))))
(and (distinct c_x ?x362442) true)))
(check-sat)
