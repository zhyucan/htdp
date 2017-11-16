;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |412|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define x 3.5)
(> x 3)
(and (> 4 x) (> x 3))
(= (* x x) x)

;; x = 4 : true false false
;; x = 2 : false false false
;; x = 3.5 : true true false


