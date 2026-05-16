; benchmark generated from python API
(set-info :status unknown)
(declare-sort G 0)
(declare-fun f (G G) G)
(declare-fun c_y () G)
(declare-fun c_z () G)
(declare-fun c_x () G)
(assert
 (forall ((x G) (y G) (z G) )(= (f x x) (f (f (f y x) x) z)))
 )
(assert
 (let ((?x300412 (f (f (f c_y c_z) c_z) c_y)))
(let ((?x107910 (f c_x c_x)))
(and (distinct ?x107910 ?x300412) true))))
(check-sat)
