;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |115|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; add-to-pi : N -> number
;; to compute n + 3.14 without using +

(define (add-to-pi n)
  (cond
    ((zero? n) ...)
    (else ... (add-to-pi (sub1 n)) ...)))

(define (add-to-pi n)
  (cond
    ((zero? n) 3.14)
    (else (add1 (add-to-pi (aub1 n))))))

;; examples
(= (add-to-pi 0) 3.14)
(= (add-to-pi 2) 5.14)
(= (add-to-pi 6) 9.14)
