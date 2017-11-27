;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |351|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(set! var exp)

(define x 3)
(local ((define z (set! x (+ x 2)))) x)

(define x 3)
(define z (set! x (+ x 2)))
x

(define x 3)
(define z (set! x 5))
x

(define x 5)
(define z (void))
x