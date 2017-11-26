;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |2331|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; g-fives : N -> N
;; 读入一个自然数,返回其在初值为 3,差值为 5的等比数列中的对应值

(define (g-fives n)
  (cond
    ((zero? n) 3)
    (else (* 5 (g-fives (sub1 n))))))

;; examples

(g-fives 0)
(g-fives 1)
(g-fives 2)
(g-fives 3)
(g-fives 4)