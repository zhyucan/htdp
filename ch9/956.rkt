;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |956|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; delta : list-of-numbers list-of-numbers -> number
;; calculates the change in value of two lists of prices

(define (delta a-lon another-lon)
  (- (sum a-lon) (sum another-lon)))


;; sum : list-of-numbers -> number
;; calculates the sum of the numbers in the list

#|
;; Template
(define (sum a-lon)
  (cond
    [(empty a-lon) ...]
    [else ... (first a-lon) ...
          ... (sum (rest a-lon)) ...]))
|#

(define (sum a-lon)
  (cond
    [(empty? a-lon) 0]
    [else (+ (first a-lon)
             (sum (rest a-lon)))]))

;; examples:

(sum empty) "should be" 0
(sum (cons 1 empty)) "should be" 1
(sum (cons 2 (cons 4 (cons 537 empty)))) "should be" 543

(delta empty empty) "should be" 0
(delta (cons 1 empty) empty) "should be" 1
(delta empty (cons 1 empty)) "should be" -1
(delta (cons 1 empty) (cons 1 empty)) "should be" 0
(delta (cons 2 (cons 4 (cons 537 empty)))
       (cons 2 (cons 5 (cons 212 empty))))
"should be"
324