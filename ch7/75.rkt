;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |75|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; checked-area-of-disk : Scheme-value -> number
;; 如果给了一个数，算出半径为这个数的圆面积
(define (checked-area-of-disk v)
  (cond
    ((and (number? v) (> v 0)) (area-of-disk v))
    (else (error 'checked-area-of-disk "number expected"))))