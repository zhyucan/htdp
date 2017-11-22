;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1143|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; product-from-minus-11 : N -> N
;; to compute the product of the numbers from -11
(define (product-from-minus-11 n)
  (cond
    [(= -11 n) 1]
    [else (* n (product-from-minus-11 (sub1 n)))]))

;; EXAMPLES AS TESTS
(product-from-minus-11 -11) "should be" 1
(product-from-minus-11 -2) "should be" -3628800
(product-from-minus-11 500) "should be" 0