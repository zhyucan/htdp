;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1313|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(cons 'a (list 0 false))
"should be"
(list 'a 0 false)

(list (cons 1 (cons 13 empty)))
"should be"
(list (list 1 13))

(list empty empty (cons 1 empty))
"should be"
(list empty empty (list 1))

(cons 'a (cons (list 1) (list false empty)))
"should be"
(list 'a (list 1) false empty)