;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1015|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; eliminate-exp : list-of-numbers number -> list-of-numbers
;; 表中所有小于等于给定数字的元素组成的表

;; template
#|
(define (eliminate-exp alon ua)
  (cond
    ((empty? alon) ...)
    (else ... (car alon) ... (eliminate-exp (cdr alon) ua) ...)))
|#

(define (eliminate-exp alon ua)
  (cond
    ((empty? alon) empty)
    (else (cond
            ((<= (car alon) ua) (cons (car alon)
                                      (eliminate-exp (cdr alon) ua)))
            (else (eliminate-exp (cdr alon) ua))))))

;; example
(eliminate-exp empty 1.0) "should be" empty
(eliminate-exp (cons 1.0 empty) 1.0) "should be" (cons 1.0 empty)
(eliminate-exp (cons 1.2 empty) 1.0) "should be" empty
(eliminate-exp (cons 2.95 (cons .95 (cons 1.0 (cons 5 empty)))) 1.0) "should be"
(cons .95 (cons 1.0 empty))