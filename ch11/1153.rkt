;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1153|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; to add n and x
(define (add n x)
  (cond
    [(zero? n) x]
    [else (add1 (add (sub1 n) x))]))

;; EXAMPLES AS TEST
(add 0 0) "should be" 0
(add 0 10) "should be" 10
(add 10 0) "should be" 10
(add 10 10) "should be" 20

;; multiply : number number -> number
;; comsume n and x, reduce n * x without using * and +

(define (multiply n x)
  (cond
    ((zero? n) 0)
    (else (add x (multiply (sub1 n) x)))))

;; EXAMPLES AS TESTS
(multiply 10 0) "should be" 0
(multiply 0 10) "should be" 0
(multiply 3 3) "should be" 9

;; exponent : number number -> number
;;  comsume n and x, compute x^n without using *
(define (exponent n x)
  (cond
    ((zero? n) 1)
    (else (multiply x (exponent (sub1 n) x)))))

;; EXAMPLES AS TESTS
(exponent 0 2) "should be" 1
(exponent 3 2) "should be" 8
