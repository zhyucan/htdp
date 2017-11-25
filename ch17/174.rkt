;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |174|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; list-pick : list-of-symbols N[>= 1] -> symbol
;; to determine the nth symbol from alos, counting from 1;
;; signals an error if there is no nth item

#|
a natural number [>= 1] (N[>= 1) is
1. 1
2. (add1 n) if n is a N[>=1]

a list-of-symbols is
1. empty
2. (cons s lof), s is a symbol, lof is a list of symbols
|#

#|
(define (list-pick alos n)
  (cond
    [(and (= n 1) (empty? alos))
     ...]
    [(and (> n 1) (empty? alos))
     ... (sub1 n) ...]
    [(and (= n 1) (cons? alos))
     ... (car alos) ... (cdr alos)...]
    [(and (> n 1) (cons? alos))
     ... (sub1 n) ... (car alos) ... (cdr alos) ...]))
|#

(define (list-pick alos n)
  (cond
    [(empty? alos) (error 'list-pick "list too short")]
    [(= n 1) (first alos)]
    [(> n 1) (list-pick (rest alos) (sub1 n))]))