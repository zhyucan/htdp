;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1812|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
(local ((define x 10)
        (y (+ x x)))
  y)
(y (+ x x)) is not a definition

(local ((define (f x) (+ (* x x) (* 3 x) 15))
        (define x 100)
        (define f@100 (f x)))
  f@100 x)
f@100 x is not a single expression

(local ((define (f x) (+ (* x x) (* 3 x) 14))
        (define x 100)
        (define f (f x)))
  f)
f occurs on the left-hand side two times
|#