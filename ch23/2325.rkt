;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |2325|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; a-fives : N -> N
;; 读入一个自然数,返回其在初值为 3,差值为 5的等差数列中的对应值

(define (a-fives n)
  (cond
    ((zero? n) 3)
    (else (+ 5 (a-fives (sub1 n))))))

;; arithmetic-series : start s -> (N -> N)
;; 读入初值和差值，返回代表等差数列的函数

(define (arithmetic-series start s)
  (local ((define (run n)
            (cond
              ((zero? n) start)
              (else (+ s (run (sub1 n)))))))
    run))

(define a-fives1 (arithmetic-series 3 5))

(a-fives1 0)
(a-fives1 1)
(a-fives1 2)
(a-fives1 3)