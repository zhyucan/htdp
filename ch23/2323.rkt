;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |2323|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; a-fives : N -> N
;; 读入一个自然数,返回其在初值为 3,差值为 5的等差数列中的对应值

(define (a-fives n)
  (cond
    ((zero? n) 3)
    (else (+ 5 (a-fives (sub1 n))))))

(define (series-local a-term)
  (local ((define (run n)
            (cond
              ((zero? n) (a-term n))
              (else (+ (a-term n)
                       (run (sub1 n)))))))
    run))

(define a-fives-sum (series-local a-fives))

(a-fives-sum 3)
(a-fives-sum 7)
(a-fives-sum 88)

;; examples
(a-fives 0)
(a-fives 1)
(a-fives 2)
(a-fives 3)

(a-fives-sum 0)
(a-fives-sum 1)
(a-fives-sum 2)
(a-fives-sum 3)