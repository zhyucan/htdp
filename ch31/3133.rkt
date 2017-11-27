;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |3133|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; product : (listof numbers) -> number
;; to compute the product of the numbers
(define (product alon)
  (local ((define (run alon pp)
            (cond
              ((empty? alon) pp)
              (else (run (cdr alon) (* (car alon) pp))))))
    (run alon 1)))

;; examples as tests
(= (product empty) 1)
(= (product (list 1 2 3 4)) 24)