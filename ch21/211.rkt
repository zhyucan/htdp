;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |211|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; tabulate : (Nat -> X) Mat -> (listof X)
(define (tabulate f n)
  (cond
    [(= n 0) (list (f 0))]
    [else (cons (f n)
                (tabulate f (- n 1)))]))

;; tabulate-sin : Nat -> list-of-number
(define (tabulate-sin n) (tabulate sin n))

;; tabulate-sqrt : Nat -> list-of-number
(define (tabulate-sqrt n) (tabulate sqrt n))

;; tabulate-tan : Nat -> list-of-number
(define (tabulate-tan n) (tabulate tan n))

;; tabulate-sqr : Nat -> list-of-number
(define (tabulate-sqr n) (tabulate sqr n))

;; examples as tests
(equal? (tabulate-sqr 5) (list 25 16 9 4 1 0))
(equal? (tabulate-sin 3) (list (sin 3) (sin 2) (sin 1) (sin 0)))
(equal? (tabulate-sqrt 3) (list (sqrt 3) (sqrt 2) (sqrt 1) (sqrt 0)))
(equal? (tabulate-tan 3) (list (tan 3) (tan 2) (tan 1) (tan 0)))