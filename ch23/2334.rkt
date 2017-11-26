;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |2334|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; g-fives : N -> N
;; 读入一个自然数,返回其在初值为 3,差值为 5的等比数列中的对应值

(define (g-fives n)
  (cond
    ((zero? n) 3)
    (else (* 5 (g-fives (sub1 n))))))

;; arithmetic-series : start s -> (N -> N)
;; 读入初值和差值,返回代表等比数列的函数

(define (geometric-series start s)
  (local ((define (run n)
            (cond
              ((zero? n) start)
              (else (* s (run (sub1 n)))))))
    run))

(define g-fives1 (geometric-series 3 5))

(g-fives1 0)
(g-fives1 1)
(g-fives1 2)
(g-fives1 3)
(g-fives1 4)