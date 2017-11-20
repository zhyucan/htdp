;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1012|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; wage : number -> number
;; to compute the total wage (at $12 per hour)
;; of someone who worked for h hours
(define (wage h)
(* 12 h))

;; hours->wages : list-of-numbers -> list-of-numbers
;; 由周工作时间表 (alon) 创建周工资表

;; template
#|
(define (hours->wages alon)
  (cond
    ((empty? alon) ...)
    (else ... (car alon) ... (hours->wages (cdr alon)) ...)))
|#

(define (hours->wages alon)
  (cond 
    ((empty? alon) empty)
    (else (cond
            ((> (car alon) 100) (error 'hours->wages "too many hours"))
            (else (cons (wage (car alon)) (hours->wages (cdr alon))))))))

;; examples
(hours->wages empty) "should be" empty
(hours->wages (cons 10 empty)) "should be" (cons 120 empty)
(hours->wages (cons 101 empty)) "should be" ;; error