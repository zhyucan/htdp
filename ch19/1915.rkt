;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |1915|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; min : nelon -> number
;; to determine the smallest number
;; on alon
(define (min alon)
  (cond
    [(empty? (rest alon)) (first alon)]
    [else (cond
            [(< (first alon) (min (rest alon)))
             (first alon)]
            [else
             (min (rest alon))])]))
;; max : nelon -> number
;; to determine the largest number
;; on alon
(define (max alon)
  (cond
    [(empty? (rest alon)) (first alon)]
    [else (cond
            [(> (first alon) (max (rest alon)))
             (first alon)]
            [else
             (max (rest alon))])]))

(define (mm alon bs)
  (local ((define first-alon (car alon))
          (define mm-first-alon (mm (cdr alon) bs)))
    (cond
    ((empty? (cdr alon)) first-alon)
    ((bs first-alon mm-first-alon) first-alon)
    (else mm-first-alon))))

(define (min1 alon)
  (mm alon <))

(define (max1 alon)
  (mm alon >))