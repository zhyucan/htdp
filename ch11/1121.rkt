;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1121|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; repeat : N symbol -> list-of-symbols
;; 建立包含 n 个符号的表

#|
(define (repeat n sym)
  (cond
    ((zero? n) ...)
    (else ... (repeat (sub1 n) sym) ...)))
|#

(define (repeat n sym)
  (cond
    ((zero? n) empty)
    (else (cons sym (repeat (sub1 n) sym)))))

;; Examples
(repeat 0 'doll) "should be" empty
(repeat 2 'rocket) "should be" (cons 'rocket (cons 'rocket empty))