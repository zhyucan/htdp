;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |144|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct add (left right))
(define-struct mul (left right))

#|
3                       3
x                       x
(* 3 10)                (make-mul 3 10)
(+ (* 3 3) (* 4 4))     (make-add (make-mul 3 3) (make-mul 4 4))
(+ (* x x) (* y y))     (make-add (make-mul 'x 'x) (make-mul 'y 'y))
(* 1/2 (* 3 3))         (make-mul 1/2 (make-mul 3 3))
|#