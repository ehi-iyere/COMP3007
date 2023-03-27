;Ebehiremen Iyere 101120396

(define (cube-root x)
  
; This function checks if the previous guess was close enough to the answer
  (define (good-enough? pastGuess guess)
    (< (abs (/ (- guess pastGuess) guess)) 0.000000001))
  
; this function takes the previous guess and uses it to make a better guess
  (define (improve pastGuess guess)
    (/ (+ (/ guess (* pastGuess pastGuess)) (* 2 pastGuess)) 3))
;This function does the job of iteration, it checks if a guess is good enough, if it is it returns the guess else it improves the guess and repeates the whole process.
  (define (cuberoot-iter guess x)
    (if (good-enough? (improve guess x) guess)
        guess
        (cuberoot-iter (improve guess x) x)))



  (cuberoot-iter 1.0 x))

 (define (new-if predicate consequent alternate)
      (cond (predicate consequent)
            (else alternate)))
(new-if (< 1 2) (- 1) 1)
 "Testing cube root"
(cube-root 8)
(cube-root -8)
(cube-root 27)
(cube-root -27)
(cube-root -1)

 #|
b.
when using the new-if the cuberoot-iter went into an infint loop because it keeps finding
(good-enough? (improve guess x) guess) to be true and doesnt update the valsue which will in turn exit the loop
, this prevented the function from reaching a conclution, this the generated the error  Interactions disabled; out of memory
. 
|#