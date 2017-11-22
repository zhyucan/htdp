;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1152|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
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

;; multiply-by-pi : number -> number
;; consume a natural number
;; multiply it by 3.14 without using *

(define (multiply-by-pi n)
  (cond
    ((zero? n) 0)
    (else (+ pi (multiply-by-pi (sub1 n))))))

;; EXAMPLES AS TESTS
(multiply-by-pi 0) "should be" 0
(multiply-by-pi 2) "should be" (* pi 2)

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