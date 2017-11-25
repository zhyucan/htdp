;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |172|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; hours->wages : list-of-numbers list-of-numbers -> list-of-numbers
;; to construct a new list by multiplying the corresponding items on
;; alon1 and alon2
;; ASSUMPTION: the two lists are of equal length

#|
(define (hours->wages alon1 alon2)
  (cond
    ((empty? alon1) ...)
    (else
     ... (first alon1) ... (first alon2) ...
     ... (hours->wages (rest alon1) (rest alon2)) ... )))
|#

(define (hours->wages alon1 alon2)
  (cond
    ((empty? alon1) empty)
    (else (cons (weekly-wage (car alon1) (car alon2))
                (hours->wages (cdr alon1) (cdr alon2))))))

;; weekly-wage : number number -> number
;; to compute the weekly wage from pay-rate and hours-worked
(define (weekly-wage pay-rate hours-worked)
  (* pay-rate hours-worked))

;; examples:
(hours->wages empty empty)
;; expected value:
empty
(hours->wages (cons 5.65 empty) (cons 40 empty))
;; expected value:
(cons 226.0 empty)
(hours->wages (cons 5.65 (cons 8.75 empty))
              (cons 40.0 (cons 30.0 empty)))
;; expected value:
(cons 226.0 (cons 262.5 empty))

