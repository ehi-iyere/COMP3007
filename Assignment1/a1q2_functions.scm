#|
Ebehiremen Iyere
1011204396
|#

#|a. The Purpose of this procudure is to calulate the cube of a given x
|#

(define (cube x) (* x x x))

#|b. The Purpose of this procudure is to calulate 3x^2 + 1 for a given x
|#

(define (f x) ( + (* 3 x x) 1))

#|c. The Purpose of this procudure is to calulate the f(2x) - 2x^3 for a given x
 i will do so by making use of the  previous functionss|#

(define (g x) ( - (f (* 2 x)) (* 2 (cube x))))

#|d. The Purpose of this procudure is to calulate the 3f(x/2) + (g x) for a given x
 i will do so by making use of the  previous functionss|#

(define (h x)
  (+ (g x) (* 3 (f (/ x 2))))
  )

#|e. The purpose of this question is to use applicative order of substitution to solve for (h (* 2 3))|#

(h (* 2 3))
(+ (g (* 2 3)) (* 3 (f (/ (* 2 3) 2))))
(+ ( - (f (* 2 (* 2 3))) (* 2 (cube (* 2 3)))) (* 3 ( + (* 3 (/ (* 2 3) 2) (/ (* 2 3) 2)) 1) ))
(+ ( - ( + (* 3 (* 2 (* 2 3)) (* 2 ( * 2 3))) 1) (* 2 (* 2 3) (* 2 3) (* 2 3))) (* 3 ( + (* 3 (/ (* 2 3) 2) (/ (* 2 3) 2)) 1) ))
(+ ( - ( + (* 3 (* 2 6) (* 2 6)) 1) (* 2 (* 6 6 6))) (* 3 ( + (* 3 (/ 6 2) (/ 6 2)) 1) ))
(+ ( - ( + (* 3 12 12) 1) (* 2 216)) (* 3 ( + (* 3 3 3) 1) ))
(+ ( - ( + 432 1) 432) (* 3 ( + 27 1) ))
(+ ( - 433 432) (* 3 28 ))
(+ 1 84)
85

#|e. The purpose of this question is to use normal order of substitution to solve for (h (* 2 3))|#

(h (* 2 3))
(+ (g (* 2 3)) (* 3 (f (/ (* 2 3) 2))))
(+ ( - (f (* 2 (* 2 3))) (* 2 (cube (* 2 3)))) (* 3 (f (/ (* 2 3) 2))))
(+ ( - ( + (* 3 (* 2 (* 2 3)) (* 2 ( * 2 3))) 1) (* 2 (cube (* 2 3)))) (* 3 (f (/ (* 2 3) 2))))
(+ ( - ( + (* 3 (* 2 6) (* 2 6)) 1) (* 2 (cube (* 2 3)))) (* 3 (f (/ (* 2 3) 2))))
(+ ( - ( +  (* 3 12 12) 1)  (* 2 (cube (* 2 3)))) (* 3 (f (/ (* 2 3) 2))))
(+ ( - ( + 432 1)  (* 2 (cube (* 2 3)))) (* 3 (f (/ (* 2 3) 2))))
(+ ( - 433  (* 2 (cube (* 2 3)))) (* 3 (f (/ (* 2 3) 2))))
(+ ( - 433  (* 2 (* (* 2 3) (* 2 3) (* 2 3)))) (* 3 (f (/ (* 2 3) 2))))
(+ ( - 433  (* 2 (* 6 6 6) )) (* 3 (f (/ (* 2 3) 2))))
(+ ( - 433  (* 2 216 )) (* 3 (f (/ (* 2 3) 2))))
(+ ( - 433  432) (* 3 (f (/ (* 2 3) 2))))
(+ ( - 433  432) (* 3 (f (/ (* 2 3) 2))))
(+ 1 (* 3 (f (/ (* 2 3) 2))))
(+ 1 (* 3 ( + (* 3 (/ (* 2 3) 2) (/ (* 2 3) 2)) 1)))
(+ 1 (* 3 ( + (* 3 3 3) 1)))
(+ 1 (* 3 ( + 27 1)))
(+ 1 (* 3 28))
(+ 1 84)
85

;Testing

(cube 22)

(f 4)

(f 2)

(g 4)

(h 4)











