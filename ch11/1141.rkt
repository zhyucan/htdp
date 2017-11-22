;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1141|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; ! : N -> N
;; to compute n · (n-1) · ... · 2 · 1

#|
(define (! n)
  (cond
    ((zero? n) ...)
    (else ... (! (sub1 n)) ...)))
|#

(define (! n)
  (cond
    ((zero? n) 1)
    (else (* n (! (sub1 n))))))

(! 2)
(! 10)
(! 100)
(! 1000)