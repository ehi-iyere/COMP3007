#|
Ebehiremen Iyere
101120396
|#

;a the purpose of this procedure is to reduce the and apply the operation passed in as x to the values of the reduced tree and y
(define (tree-reduce x y lst)
  (define (operator x) (cond ((equal? x +) +) ; a function that returns the corrent operator
                             ((equal? x *) *)
                    ))
  (define (helper lst) ; a helper function to help with iterating the list
    (cond
      (( and (null? lst) (equal? (operator x) + )) 0)
      (( and (null? lst) (equal? (operator x) * )) 1 )
      ((pair? lst)
       ((operator x) y (helper (car lst))
          (helper (cdr lst))))
      (else lst)))
  (helper lst)
  )

(tree-reduce * 1 '(1 (2 3)((4 5) 6 (7)((8 (9)) 10))))

;b the purpose of this function is to retuen the height of a give tree
(define (height list)
  (cond ((list?  list) ; checks if the parameter is a list 
        (+ 1                                          
          (apply max                                   
                 ( map height  list)))) ; goes through the list wiith map and applies max to it 
        (else 0) ))

(height '(a (b) c))
(height '(((((a(((b)))))))))

; c the purpose of this procedure is to take a list and flatten it to one list
(define (flatten-tree x)
    (cond ((null? x) '()) ;checks if the tree is empty
          ((not (pair? x)) (list x)) ; checks if it is a list if notit makes it one
          (else (append (flatten-tree (car x)) ; calls the function on the front of the list
                        (flatten-tree (cdr x))))));and appends it recursivly
(flatten-tree '(1 (2 3) ((4 5 6 (7)))(((8 (9))))))
