;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |221|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; add : number -> (number -> number)
;; to create a function that adds x to its input
(define (add x)
  (local ((define (x-adder y) (+ x y)))
    x-adder))

(define f (add 5))

(define f (local ((define (x-adder y) (+ 5 y)))
            x-adder))

(define f (local ((define (x-adder5 y) (+ 5 y)))
            x-adder5))

(define (x-adder5 y) (+ 5 y))
(define f x-adder5)

(f 10)

(x-adder5 10)

(+ 5 10)

15