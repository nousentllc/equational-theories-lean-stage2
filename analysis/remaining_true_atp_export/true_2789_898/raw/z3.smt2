; benchmark generated from python API
(set-info :status unknown)
(declare-sort G 0)
(declare-fun f (G G) G)
(declare-fun c_y () G)
(declare-fun c_z () G)
(declare-fun c_x () G)
(assert
 (forall ((x G) (y G) (z G) )(= x (f (f (f y z) (f y x)) z)))
 )
(assert
 (let ((?x9711 (f c_y (f (f c_x c_z) (f c_z c_y)))))
(and (distinct c_x ?x9711) true)))
(check-sat)
