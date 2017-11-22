;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |122|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; sort : list-of-numbers -> list-of-numbers
;; to create a sorted list of numbers from all the numbers in alon

#|
(define (sort alon)
  (cond
    ((empty? alon) ...)
    (else ... (car alon) ... (sort (cdr alon)) ...)))
|#

(define (sort alon)
  (cond
    ((empty? alon) empty)
    (else (insert (car alon) (sort (cdr alon))))))

;; inesrt : number list-of-numbers -> list-of-numbers
;; to create a list of numbers from n and the numbers on alon
;; that is sorted in descending order; alon is already sorted

#|
(define (insert n alon)
  (cond
    ((empty? alon) ...)
    (else ... (car alon) ... (insert n (cdr alon)) ...)))
|#

(define (insert n alon)
  (cond
    ((empty? alon) (cons n empty))
    (else (cond
            ((>= n (car alon)) (cons n alon))
            (else (cons (car alon) (insert n (cdr alon))))))))

;; examples
(sort empty)
;; expected value:
empty
(sort (cons 1297.04 (cons 20000.00 (cons -505.25 empty))))
;; expected value:
(cons 20000.00 (cons 1297.04 (cons -505.25 empty)))

(insert 5 empty)
;; expected value:
(cons 5 empty)
(insert 1297.04 (cons 20000.00 (cons -505.25 empty)))
;; expected value:
(cons 20000.00 (cons 1297.04 (cons -505.25 empty)))