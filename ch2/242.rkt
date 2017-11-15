;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |242|) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
; (define (f 1)
;   (+ x 10))
; expected a variable, but found a number
(define (f x)
  (+ x 10))

; (define (g x)
;   + x 10)
; expected only one expression for the function body, but found 2 extra parts
(define (g x)
  (+ x 10))

; (define h(x)
;   (+ x 10))
; expected only one expression after the variable name h, but found 1 extra part
(define (h x)
  (+ x 10))