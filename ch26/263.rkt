;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |263|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; gcd : N[>= 1] N[>= 1] -> N
;; to find the greatest common divisior of n and m

;; gcd-structural : N[>= 1] N[>= 1] -> N
;; to find the greatest common divisior of n and m
;; structural recursion using data definition of N[>= 1]
(define (gcd-structural n m)
  (local ((define (first-divisior-<= i)
            (cond
              ((= i 1) 1)
              (else (cond
                      ((and (= (remainder n i) 0)
                            (= (remainder m i) 0)) i)
                      (else (first-divisior-<= (- i 1))))))))
    (first-divisior-<= (min n m))))

;; gcd-generative : N[>= 1] N[>=1] -> N
;; to find the greatest common divisior of n and m
;; generative recursion: (gcd n m) = (gcd n (remainder m n)) if (<= m n)
(define (gcd-generative n m)
  (local ((define (clever-gcd larger smaller)
            (cond
              [(= smaller 0) larger]
              [else (clever-gcd smaller (remainder larger smaller))])))
    (clever-gcd (max m n) (min m n))))
