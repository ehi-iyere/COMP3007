#|
Ebehiremen Iyere
1011204396
|#

#|a. The purpose of this procedure was the find the n in x = y*10^n|#

( define ( sci-exponent x)
   (cond
   ((zero? x) "undefined") ; as there is no defined coeffecient for zero
   ((positive? x)(inexact->exact(floor(log x 10))))
   ((negative? x)(inexact->exact(floor(log (* -1 x) 10))))
   )
   )
#|b. The purpose of this function is to find the y in x = y*10^n. ill will be using the previous procedure |#

(define (sci-coefficient x)
  (cond
  ((zero? x) 0)
  (else (let ((power (expt 10 (* -1 (sci-exponent x)))))
  (exact->inexact(* x power))
  ))
  )
  )
#|c. The purpose of this procdure is to represent x as  y*10^n |#

(define (sci-num x)
  (cond
    ((zero? x) "undefined" )
    ((number? x)(string-append (number->string (sci-coefficient  x)) "x10^" (number->string( sci-exponent x) )))
   
    
     (else #f)
  )
  )



;testing
 "sci-exponent testing"
(sci-exponent -23555)
(sci-exponent -0.22)
(sci-exponent 122.3)
(sci-exponent 1)
(sci-exponent 0) 

"sci-coefficient testing"
(sci-coefficient -23555)
(sci-coefficient -0.22)
(sci-coefficient 122.3)
(sci-coefficient 1)
(sci-coefficient 0)

"sci-num testing"
(sci-num -23555)
(sci-num -0.22)
(sci-num 122.3)
(sci-num 1)
(sci-num 0)