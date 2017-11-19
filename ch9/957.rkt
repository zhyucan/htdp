;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |957|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; sum : list-of-numbers -> number
;; calculates the sum of the numbers in the list

#|
;; Template
(define (sum a-lon)
  (cond
    ((empty a-lon) ...)
    (else ... (first a-lon) ...
          ... (sum (rest a-lon)) ...)))
|#

(define (sum a-lon)
  (cond
    ((empty? a-lon) 0)
    (else (+ (car a-lon) (sum (cdr a-lon))))))

;; count : list-of-numbers -> number
;; counts the number of numbers on count

#|
;; Template
(define (count a-lon)
  (cond
    ((empty? a-lon) ...)
    (else ... (first a-lon) ...
          ... (count (rest a-lon)) ...)))
|#

(define (count a-lon)
  (cond
    ((empty? a-lon) 0)
    (else (+ 1 (count (cdr a-lon))))))

;; average-price : list-of-numbers -> number
;; 有一个包含了所有玩具价格的表，计算玩具的平均价格

(define (average-price a-lon)
  (/ (sum a-lon) (count a-lon)))

;; Examples:
(sum empty) "should be" 0
(sum (cons 1 (cons 2 (cons 3 empty)))) "should be" 6
(sum (cons 1.25 (cons 3.75 (cons 4.00 empty)))) "should be" 9.00

(count empty) "should be" 0
(count (cons 1 empty)) "should be" 1
(count (cons 1 (cons 2 (cons 3 empty)))) "should be" 3
(count (cons 1.25 (cons 3.75 (cons 4.00 empty)))) "should be" 3

(average-price (cons 1.00 empty)) "should be" 1.00
(average-price (cons 0.50 (cons 1.50 empty))) "should be" 1.00
(average-price (cons 1.25 (cons 3.75 (cons 4.00 empty)))) "should be" 3.00