;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1772|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct add (left right))
(define-struct mul (left right))
(define-struct app (rator rand))
(define-struct del (name name body))

;; (define (f x) (+ 3 x))
(make-del 'f 'x (make-add 3 'x))

;; (define (g x) (* 3 x))
(make-del 'g 'x (make-mul 3 'x))

;; (define (h u) (f (* 2 u)))
(make-del 'h 'u (make-app 'f (make-mul 2 'u)))

;; (define (i v) (+ (* v v) (* v v)))
(make-del 'i 'v (make-add (make-mul 'v 'v) (make-mul 'v 'v)))

;; (define (k w) (* (h w) (i w))
(make-del 'k 'w (make-mul (make-app 'h 'w) (make-app 'i 'w)))