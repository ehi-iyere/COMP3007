;Ebehiremen Iyere 101120396

 ; this function flips the string backwards
(define(reverse-string x)
  (list->string (reverse (string->list x))))

;this function checks if the reverse of a string and checks if the reversal of the string is same as the original
(define (palindrome? x)
 
      (if (equal? x (reverse-string x) ) #t #f)
 )
(define (k-palindrome? x y)
  (substring x reverse [end])
  (define (check x )
    (if ((= (string-ref x 0) (string-length x)))
        #t
        (c
         #f)
    )
  )

"testing for palindrome?"
 "racecar"(palindrome? "racecar")
 "raccar"(palindrome? "raccar")
 "isi"(palindrome? "isi")
"palindrome"(palindrome? "palindrome")
