;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1142|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; a natural number [>= 20] is either
;;   - 20 or
;;   - (add1 n) if n is a natural number [>= 20]

;; product-from-20: N [>= 20] -> N
;; to compute n · (n-1) · ... · 21 · 1

#|
(define (product-from-20 n-above-20)
  (cond
    ((= n-above-20 20) ...)
    (else ... (product-from-20 (sub1 n-above-20)) ...)))
|#

(define (product-from-20 n-above-20)
  (cond
    [(= n-above-20 20) 1]
    [else (* n-above-20 (product-from-20 (sub1 n-above-20)))]))

;; examples
(= (product-from-20 20) 1)
(= (product-from-20 21) 21)
(= (product-from-20 22) 462)