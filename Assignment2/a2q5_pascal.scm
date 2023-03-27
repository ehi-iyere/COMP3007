;Ebehiremen Iyere 101120396

#|(define (pascal row col)
   (cond ((< row col) #f)
         ((or (= 0 col) (= row col)) 1)
         (else #t)))|#

; the purpose of this function is function is to determine the value at the specified row and col of the pascals triangle
(define (pascals row col)
   (cond ((< row col) 0)
         ((or (= 0 col) (= row col)) 1)
         (else (+ (pascals (- row 1) col)
                  (pascals (- row 1) (- col 1))))))
(define (increment x)
  (+ 1 x) 
)
#|(define (printTriangle row)
  ( let ((col 0) )
     (cond
       (
        (= row 0) 1)
        ((> row 0) ( (display(pascals row col))(printTriangle (- row 1)) ))
        
          )
   )
     )|#
;the purpose of this function is to print all the triangles on the pascals triangle fron a certian row
  (define (printTriangle n)
    (define (iter row col)
        (cond
          ( (= row 0) (display(pascals row col )))
          ( (< row col)  )
            (else 
                  ;(increment col)
                  (display(pascals row  col  ))
                  (iter   (- row 1) col)
                 
                  ;(iter   row (+ col 1))
                
                  )))
    (define (d n t)
      (cond(
           (> t n) )
           ;(else (iter n (+ t 1)) )
           ((< t n) 
                     (iter n t)
                     (iter n (+ t 1))
                     


                    )
           )
      )
      
    (d n 0))
   
#|(define (printTriangle row)
  (define (iter row col)
    (if (> row col)
       (display(pascals row  (+ col 1)))
       (iter (- row 1)  col 1)))
  (iter row 0))|#
    
  

"testing pascals "
"(pascals 0 6) " (pascals 0 6)
"(pascals 1 1) " (pascals 1 1)
"(pascals 4 6) " (pascals 4 6)
"(pascals 10 3) " (pascals 10 3)
"(pascals 3 3) " (pascals 3 3)