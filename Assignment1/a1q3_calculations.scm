#|
Ebehiremen Iyere
1011204396
|#
#|a, the purpose of this procedure is the round x half away from zero by y|#

(define (standard-roundf x y)
  (let ( (power (expt 10 y )))
    (let ( (npower (expt 10 (* -1 y) )))
      (cond
        ((positive? x) (*( floor (+(* power  x) 0.5)) npower))
        ((negative? x) (*( floor (+(* power  (* -1 x)) 0.5)) (* -1 npower))
        ))
    ))
  )
#|b, The purpose of this procedure is the calculate the root (negative) of a quadratice equation.
I will do this be breaking the formula into 3 diffrent procduers and combine them|#

(define (sqr x)(* x x))

(define (D a b c) (- (sqr b) (* 4 a c)))

(define (QE a b c)
  (cond
  ( (positive? (D a b c) ) (standard-roundf(/ (+ (* -1 b) (sqrt ( D a b c))) (* 2 a)) 3))
  ( else #f)
  )
  )
#|c, The purpose of this procedure is to carry out conversions between KB B and KiB |#

(define (convert x y z)
  ( let (( k 1000))
     (let ((ki 1024))
     (let ((kik 1.024 ))
     (cond
       ((negative? x) "Cannot convert Negative bytes")
       ((and  (eq? y "KB") (eq? z "B")) (* x k))
       ((and  (eq? y "B") (eq? z "KB")) (standard-roundf(exact->inexact(/ x k)) 3))
       ((and  (eq? y "KiB") (eq? z "B")) (* x -k))
       ((and  (eq? y "B") (eq? z "KiB")) (standard-roundf(exact->inexact(/ x ki)) 3))
       ((and  (eq? y "KiB") (eq? z "KB")) (standard-roundf(exact->inexact(* x kik)) 3))
       ((and  (eq? y "KB") (eq? z "KiB")) (standard-roundf(exact->inexact(/ x kik)) 3))
      
   
       (else ( string-append "Could not convert from " y " to " z ))
       )
       )
       )
   ))

;Testing std-roundof
"std-roundof"
(standard-roundf 1.2225 3)
(standard-roundf 21.524 0)
(standard-roundf 1.26 3)
(standard-roundf -3.445444445 2)
(standard-roundf 0.522 0)

; QE testing
"QE tesing"
(QE 1 -6 -7)
(QE 3 3 -3)
(QE 0 0 0)
(QE 0 0 4)

;conversion ttesting
"CONVERSSION TESTING"

(convert 1 "KB" "B")
(convert 33 "B" "MANYBYTES")
(convert 333 "B" "KB")
(convert -103 "B" "KiB")
(convert 103 "B" "KiB")
(convert 103 "KiB" "KB")
(convert 1 "KB" "KiB")