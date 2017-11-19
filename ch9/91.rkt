;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |91|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; pair -> list

(define-struct pair (left right))
(define (our-cons a-value a-list) (make-pair a-value a-list))
(define (our-car a-pair) (pair-left a-pair))
(define (our-cdr a-pair) (pair-right a-pair))
(define (our-cons? x) (pair? x))
