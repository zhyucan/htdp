;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1771|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
A scheme-expression is either:
  - number,
  - symbol,
  - (make-add scheme-expression scheme-expression)
  - (make-mul scheme-expression scheme-expression)
  - (make-del symbol scheme-expression)
|#

(define-struct add (left right))
(define-struct mul (left right))

(define-struct del (name arg))

;; examples

;; (f(+ 1 1))
(make-del 'f (make-add 1 1))

;; (* 3 (g 2))
(make-mul 3 (make-del 'g 2))
