;Ebehiremen Iyere 101120396

; The purpose of this function is to use a recursive method to solve a sequence where term is the base and next is the next variablle in the sequence from the valuse a - b
(define (product  a b term next)
  (cond ((> a b) 1)
        (else (* (term a) (product (next a) b term  next )))))

; The purpose of this function is to use a iterative method to solve a sequence where term is the base and next is the next variablle in the sequence from the valuse a - b

(define (product-it a b term  next )
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

;(product 1 5 (lambda(x)(* x x x))(lambda(x)(* -1 (* x x))))

;c /testing
(product 2 20 (lambda(x)(- (* x x x) (* x  x)))(lambda(x)(+ x 1)))

(product-it 1 15 (lambda(x)(+ 1 (* 4 x x) (* 4  x)))(lambda(x)(+ x 1)))

