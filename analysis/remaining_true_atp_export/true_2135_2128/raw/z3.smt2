; benchmark generated from python API
(set-info :status unknown)
(declare-sort G 0)
(declare-fun f (G G) G)
(declare-fun c_y () G)
(declare-fun c_x () G)
(assert
 (forall ((x G) (y G) )(= x (f (f (f y y) y) (f x y))))
 )
(assert
 (let ((?x17651 (f c_y c_y)))
(let ((?x118192 (f (f ?x17651 c_x) ?x17651)))
(and (distinct c_x ?x118192) true))))
(check-sat)
