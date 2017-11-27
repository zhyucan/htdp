;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |353|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define x 3)
(define y 5)
(define (swap-x-y x0 y0)
  (begin
    (set! x y0)
    (set! y x0)))
(swap-x-y x y)

(define x 3)
(define y 5)
(define (swap-x-y x0 y0)
  (begin
    (set! x y0)
    (set! y x0)))
(swap-x-y 3 5)

(define x 3)
(define y 5)
(define (swap-x-y x0 y0)
  (begin
    (set! x y0)
    (set! y x0)))
(begin
  (set! x 5)
  (set! y 3))

(define x 5)
(define y 3)
     (define (swap-x-y x0 y0)
      (begin
        (set! x y0)
        (set! y x0)))
(void)

