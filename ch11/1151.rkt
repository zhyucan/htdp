;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1151|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; add : number number -> number
;; comsume two natural numbers, n and x
;; produce n + x without using Scheme's +

(define (add n x)
  (cond
    ((zero? n) x)
    (else (add1 (add (sub1 n) x)))))

;; EXAMPLES AS TEST
(add 0 0) "should be" 0
(add 0 10) "should be" 10
(add 10 0) "should be" 10
(add 10 10) "should be" 20