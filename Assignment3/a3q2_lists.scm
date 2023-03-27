#|
Ebehiremen Iyere
101120396
|#
;1 the purpose of this procedure is to creat a list for x repeated a times
(define (repeat x n)
  (if (positive? n)
  (cons x (repeat x (- n 1)))
  (cons x '())))

(repeat 'a 5)

;2 The purpose of this procedure is to create a nex list with the values from 2 list in an alternating fashion
(define alternate
  (lambda (list-1 list-2)
    (cond ((null? list-1)
        list-2)
          ((null? list-2)
        list-1)
        (else (cons (car list-1) ( cons (car list-2 )(alternate (cdr list-1) ( cdr list-2))))))))
(alternate  '(0 0 0 0) '(1 1 1 1 1 1) )


;3 The purpose of this procedure is to count the occurencs of x in a list L

(define (count x L)
    (cond ((null? L) 0)
          ((equal?  x (car L)) (+ 1 (count x (cdr L))))
          (else (count x (cdr L)))))

(count 3 '(1 4 3 6 2 3 3 1 4 3 5 7) )
(count 'b '(4 b a 3 2 c b 1 b 2 d a))

;4 The purpose of this procedure is to create a procedure where the most common value is returned 

(define (mode a_list)
  (if (null? a_list) ; edge case: empty list
      #f             ; return a special value signaling error   
      (let loop ((a_list (cdr a_list))   ; rest of the list
                 (maxval (count (car a_list) a_list)) ; assumed maximum
                 (v (car a_list)))  ;that value
        (cond ((null? a_list) v )    ; if the list is empty, return max
              ((> (count (car a_list) a_list) maxval)   ; current element > max
               (loop (cdr a_list) (car a_list))) ; found new max
              (else                      ; otherwise
               (loop (cdr a_list) maxval v))))))
111
(mode '(2  3 4 2  1  2 ) )
(mode '(a b a c a d d a b c a b) )

