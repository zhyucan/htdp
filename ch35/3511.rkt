;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |3511|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(set! x 5) ; not legel

(define x 3)
(set! (+ x 1) 5) ; not legel

(define x 3)
(define y 7)
(define z false)
(set! (z x y) 5) ; not legel