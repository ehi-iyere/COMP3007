; Ebehiremen Iyere 101120396

;the purpose of this function is to caluclate mulititlpcation by adding x to itself y times

(define (my-mult x y)(
  cond
       ((zero? y) 0)
       ((= y 1) x)
       (else (+  x (my-mult x (- y 1))))
       )
  )
;the purpose of this function is to caluclate exponential by multiplying x to itself y times

(define (my-exp x y)
  (
  cond
       ((zero? y) 1)
       ((= y 1) x)
       (else (*  (my-mult x (my-exp x (- y 1)))  ) )
       )
  )

;the purpose of this function is to caluclate Tetration by exponenting x to itself y times

(define (my-tetra x y)
   (
  cond
       ((zero? y) 1)
       ((= y 1) x)
       (else expt  (my-exp x (my-tetra x (- y 1)))   )
       )
  )

(define (hyper x)
  (cond
    ((eq? x +) (lambda (y z)(my-mult y z  )))
    ((eq? x my-mult) (lambda (y z)(my-exp y z  )))
    ((eq? x my-exp) (lambda (y z)(my-tetra y z  )))
    (else display "no hyperopertator available"   )
    )
  )

"testing for my-mult"
(my-mult 4 0)
(my-mult 5 5)
"testing for my-exp"
(my-exp 3 0)
(my-exp 2 4)
"testing for my-tetra"
(my-tetra 2 0)
(my-tetra 5 2)