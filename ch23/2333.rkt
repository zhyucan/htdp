;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |2333|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; g-fives : N -> N
;; 读入一个自然数,返回其在初值为 3,差值为 5的等比数列中的对应值

(define (g-fives n)
  (cond
    ((zero? n) 3)
    (else (* 5 (g-fives (sub1 n))))))

;; seq-a-fives : N -> (listof N)
;; 读入自然数 n,返回数列 g-fives 前 n 项

(define (seq-a-fives n)
  (build-list (add1 n) g-fives))

;; examples

(seq-a-fives 0)
(seq-a-fives 1)
(seq-a-fives 2)
(seq-a-fives 3)
(seq-a-fives 4)