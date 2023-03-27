;Ebehiremen Iyere 101120396

;the purpose of this function is to computate (f n ) recursively
(define (f n) 
  (cond ((< n 3) n)
        ((or (> n 3) (= n 3)) 
         (+ (* 3 (f (- n 1))) (* 2 (f (- n 2))) (f (- n 3)) ))))
#|
(f 5)
(< 5 3) false
(+ (* 3 (f (- 5 1))) (* 2 (f (- 5 2))) (f (- 5 3)) )
(+ (* 3 (f 4)) (* 2 (f 3)) (f 2) )
(+ (* 3 (< 4 3 (#f))) (* 2 (< 3 3(#f))) (< 2 3 (#t)) )

(+ (* 3 ((+ (* 3 (f (- 4 1))) (* 2 (f (- 4 2))) (f (- 4 3)) ))))
)) (* 2 ((+ (* 3 (f (- 3 1))) (* 2 (f (- 3 2))) (f (- 3 3)) ))))
)) 2 )

(+ (* 3 ((+ (* 3 (f 3)) (* 2 (f 2)) (f 1) ))))
)) (* 2 ((+ (* 3 (f 2)) (* 2 (f 1)) (f 0) ))))
)) 2 )

(+ (* 3 ((+ (* 3 (< 3 3? (#f))) (* 2 (< 2 3? (#t))) (< 1 3? (#t)) ))))
)) (* 2 ((+ (* 3 (< 2 3? (#t))) (* 2 (< 1 3? (#t))) (< 0 3? (#t)) ))))
)) 2 )

(+ (* 3 ((+ (* 3 (< 3 3? (#f))) (* 2 2) 1 ))))
)) (* 2 ((+ (* 3 2) (* 2 1) 0 ))))
)) 2 )

(+ (* 3 ((+ (* 3 ((+ (* 3 (f 2)) (* 2 (f 1)) (f 0) ))) 4 1 ))))
)) (* 2 ((+ 6 2 0 ))) 2 )

(+ (* 3 ((+ (* 3 ((+ (* 3 (< 2 3? (#t))) (* 2 (< 1 3? (#t))) (< 0 3? (#t)) ))) 4 1 ))))
)) (* 2 8) 2 )

(+ (* 3 ((+ (* 3 ((+ (* 3 2) (* 2 1) 0 ))) 4 1 ))))
16 2 )

(+ (* 3 ((+ (* 3 ((+ 6 2 0 ))) 4 1 ))))
16 2 )

(+ (* 3 ((+ (* 3 8) 4 1 )))) 16 2 )

(+ (* 3 ((+ 24 4 1 ))))
16 2 )

(+ (* 3 29))
 16 2 )

(+ 87 16 2 )

105

|#
;;the purpose of this function is to computate (f n ) iteritavely

(define (f-iterative n)
  (if (< n 3)
      n
      (f-iter 2 1 0 n)))

(define (f-iter a b c diff)
  (if (< diff 3)
      a
      (f-iter (+ (* 3 a) (* 2 b) c) 
              a b
              (- diff 1))))
#|
(f 5)
(< 5 3) false
(f-iter 2 1 0 5)
(< 5 3) false
(f-iter (+ (* 3 2) (* 2 1) 0) 
              2 1
              (- 5 1))

(f-iter (+ 6 2 0) 2 1 4)

(f-iter 8 2 1 4)

(< 4 3) false

(f-iter (+ (* 3 8) (* 2 2) 1) 
              8 2
              (- 4 1))

(f-iter (+ 24 4 1) 8 2 3)

(f-iter 29 8 2 3)

(< 3 3) false

(f-iter (+ (* 3 29) (* 2 8) 2) 
              24 8
              (- 3 1))

(f-iter (+ 87 16 2) 24 8 2)

(f-iter 105 24 8 2)

(< 2 3) true

105


|#