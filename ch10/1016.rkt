;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1016|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;  substitute : list-of-symbols symbol symbol -> list-of-symbols
;;  把表中的所有某个符号换成另一个符号

;; template
#|
(define (substitute alos new old)
  (cond
    ((empty? alos) ...)
    (else ... (car alos) ... (substitute (cdr alos) new old))))
|#

(define (substitute alos new old)
  (cond
    ((empty? alos) empty)
    (else (cond
            ((eq? (car alos) old)
             (cons new (substitute (cdr alos) new old)))
            (else (cons (car alos) (substitute (cdr alos) new old)))))))

;; examples
(substitute (cons 'robot (cons 'doll (cons 'dress empty))) 'Barbie 'doll)
"should be"
(cons 'robot (cons 'Barbie (cons 'dress empty)))