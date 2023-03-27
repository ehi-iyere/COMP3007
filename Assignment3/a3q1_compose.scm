#|
Ebehiremen Iyere
101120396
|#

;The purpose of this function is to create a procedure that creates a composition of 2 functions 
(define (comp-func . functions)
  (define (comp-rec arg)
    (if (null? functions)
        arg
        (let ((proc (car functions))
              (rest (cdr functions)))
          (set! functions rest)
          (proc (comp-rec arg)))))

  comp-rec)

(define square (lambda(x)(* x x)))
(define double (lambda(x)(+ x x)))
((comp-func square double) 3)

(define (compose2 f g)
  ;; Returns a function that computes (g (f x)).
  (lambda (x)
    (g (f x))))

(define (identity x)
  x)

(define (compose . functions)
  (reduce compose2 identity functions))

;2

(define (divisibleBy x) 

 (lambda (y)(zero? (modulo y x))))


(define mod3 (divisibleBy 3))
(mod3 7)
"testing db"
(divisibleBy 3)

;3


((lambda(x)(* x 2))2)
;4 the purpose of this procedure is to write a procedure that returns a producer that can be mapped to a list
(define (append-element lst elem) ; a function to add the variable to the end of the list
  (append lst (list elem)))

(define (newmap f)
  (lambda (list) 
    ( if (null? f)
         list
         (if (null? list)
             #f
             (let loop (
                        (r_list  ( cdr list))
                        (v (car list))
                        (n_list '() )
                        )
               (cond
                 ((null? r_list) (set! n_list (append-element n_list (f v) ) ) n_list)
                 (else (set! n_list (append-element n_list (f v) ) )  (loop ( cdr r_list) (car r_list) n_list ))
                 )
               ))
     ))
  )
"Testing c"
(define double-mapper (newmap (lambda(x)(* x 2))))
(double-mapper '(1 2 3 4))

;4

(define (newfilter f . x)
  (lambda (list) 
    ( if (null? f)
         list
         (if (null? list)
             #f
             (let loop (
                        (r_list  ( cdr list))
                        (v (car list))
                        (n_list '() )
                        
                        )
               (cond
                 ((null? r_list) (set! n_list (append-element n_list  v ) ) n_list)
                 ((equal?  (f v)  #t ) (set! n_list (append-element n_list  v ) ) (loop ( cdr r_list) (car r_list) n_list ) )
                 (else (loop ( cdr r_list) (car r_list) n_list ))
                 )
               ))
     )))

(define evens-filter (newfilter (divisibleBy 2)))
"Testing eves filter"
(evens-filter '(1 2 3 4 6 8))

;e
(define (range a b)
    (if (= a b) (list a)
        (cons a (range (+ a 1) b))))

(define myfunc  ( newfilter (divisibleBy 4) 
  (newmap (lambda(x)(* x x)))))
(myfunc (range 1 20))

(range a b) gotten from chapter 
