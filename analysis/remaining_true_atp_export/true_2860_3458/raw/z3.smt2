; benchmark generated from python API
(set-info :status unknown)
(declare-sort G 0)
(declare-fun f (G G) G)
(declare-fun c_x () G)
(declare-fun c_y () G)
(assert
 (forall ((x G) (y G) (z G) )(= x (f (f (f x (f x y)) z) z)))
 )
(assert
 (let ((?x481 (f c_x (f (f c_x c_y) c_x))))
(let ((?x51 (f c_x c_x)))
(and (distinct ?x51 ?x481) true))))
(check-sat)
