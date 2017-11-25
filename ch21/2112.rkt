;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |2112|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; fold : list-of-numbers (number X -> X) number -> X
(define (fold alon acc init)
  (cond
    [(empty? alon) init]
    [else (acc (first alon) (fold (rest alon) acc init))]))

(define (prod alon) (fold alon * 1))
(define (sum alon) (fold alon + 0))

;; tests
(= (prod empty) 1)
(= (prod (list 1 2 3 4)) 24)
(= (sum empty) 0)
(= (sum (list 1 2 3 4)) 10)

;; concat : lon lon -> lon
(define (concat lon1 lon2)
  (fold lon1 cons lon2))

;; append tests
(equal? (concat empty empty) empty)
(equal? (concat (list 1 2 3) (list 4 5 6)) (list 1 2 3 4 5 6))

;; map : (X -> Y) (listof X) -> (listof Y)
(define (map2 f l)
  (local ([define (cmb fst rst) (cons (f fst) rst)])
    (fold l cmb empty)))

;; map tests
(equal? (map2 add1 empty) empty)
(equal? (map2 add1 (list 1 2 3)) (list 2 3 4))