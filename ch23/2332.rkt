;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |2332|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; g-fives-closed : N -> N
;; 读入一个自然数,返回其在初值为 3, 比例为 5的等比数列中的对应值

(define (g-fives-closed n)
  (* 3 (expt 5 n)))

;; examples

(g-fives-closed 0)
(g-fives-closed 1)
(g-fives-closed 2)
(g-fives-closed 3)
(g-fives-closed 4)

