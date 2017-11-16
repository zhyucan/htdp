;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |444|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; how-many : number number number -> number
;; 给定二次方程 (a != 0) 的系数，确定解的数目
(define (how-many a b c)
  (cond
    ((> (* b b) (* 4 a c)) 2)
    ((= (* b b) (* 4 a c)) 1)
    (else 0)))
(= (how-many 1 0 -1) 2)
(= (how-many 2 4 2) 1)
(= (how-many 1 0 1) 0)