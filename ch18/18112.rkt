;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |18112|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; max : non-empty-lon -> number
;; to determine the largest number on alon
(define (max2 alon)
  (cond
    [(empty? (cdr alon)) (car alon)]
    [else (cond
            [(> (car alon) (max2 (cdr alon))) (car alon)]
            [else (max2 (cdr alon))])]))

(define (max1 alon)
  (cond
    [(empty? (cdr alon)) (car alon)]
    [else (local ((define ca (max1 (cdr alon))))
            (cond
            [(> (car alon) ca) (car alon)]
            [else ca]))]))

;; examples
(max2 (list 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20))

(max1 (list 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20))