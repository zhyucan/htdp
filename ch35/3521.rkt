;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |3521|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define x 1)
(define y 1)
(begin (set! x (+ x 1))
       (set! y (- y 1))
       (* x y))

(define a 5)
(* (+ a 1) (- a 1))