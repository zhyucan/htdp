;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1133|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; create-temps : n integer integer -> list-of-numbers
;; 返回 n 个由两个整数之间的整数构成的表

#|
(define (create-temps n low high)
  (cond
    ((zero? n) ...)
    (else ... (create-temp (sub1 n) low high) ...)))
|#

(define (create-temps n low high)
  (cond
    ((zero? n) empty)
    (else (cons (+ low (random high low))
                (create-temps (sub1 n) low high)))))