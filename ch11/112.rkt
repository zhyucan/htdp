;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |112|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; hellos : N -> list-of-symbols
;; 建立包含 n 个 'hello 的表

#|
(define (hellos n)
  (cond
    ((zero? n) ...)
    (else ... (hellos (sub1 n)) ...)))
|#

(define (hellos n)
  (cond
    ((zero? n) empty)
    (else (cons 'hello (hellos (sub1 n))))))