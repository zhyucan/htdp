;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |514|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp")) #f)))
;; what-kind : number number number -> symbol
;; 给定二次方程系数，判断根的个数
(define (what-kind a b c)
  (cond
    ((= a 0) 'degenerate)
    ((> (* b b) (* 4 a c)) 'two)
    ((= (* b b) (* 4 a c)) 'one)
    (else 'none)))
(symbol=? (what-kind 0 5 1) 'degenerate)
(symbol=? (what-kind 1 0 -1) 'two)
(symbol=? (what-kind 2 4 2) 'one)
(symbol=? (what-kind 1 0 1) 'none)