;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1017|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; recall : list-of-symbols symbol -> list-of-symbols
;; 从表中去掉给定的元素

;; template
#|
(define (recall alos ty)
  (cond
    ((empty? alos) ...)
    (else ... (car alos) ... (recall (cdr alos) ty))))
|#

(define (recall alos ty)
  (cond
    ((empty? alos) empty)
    (else (cond
            ((eq? (car alos) ty) (recall (cdr alos) ty))
            (else (cons (car alos) (recall (cdr alos) ty)))))))

;; examples
(recall empty 'doll) "should be" empty
(recall (cons 'doll empty) 'doll) "should be" empty
(recall (cons 'doll empty) 'rocket) "should be" (cons 'doll empty)
(recall (cons 'doll (cons 'elephant (cons 'rocket empty))) 'elephant)
"should be"
(cons 'doll (cons 'rocket empty))