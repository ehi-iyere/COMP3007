#|
Ebehiremen Iyere
101120396
|#

;c this procedure creates a
(define (stream->list x)
  (define (factorial n)
    (if (= n 0)
      1
      (* n (factorial (- n 1)))))
  (define (helper start stop current)
    (if (< stop start)
	'()
	(if (= start stop)
	    (append  current (list  (factorial start)))
	    (helper (+ 1 start) stop (append current (list (factorial start)))))))
  (helper 0 10 '()))



"Testing C "
(stream->list  5)