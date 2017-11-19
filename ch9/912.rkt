;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |912|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define l (cons 10 (cons 20 (cons 5 empty))))

(cdr l) ;; (cons 20 (cons 5 '()))
(car (cdr l)) ;; 20
(cdr (cdr l)) ;; (cons 5 '())
(car (cdr (cdr l))) ;; 5
(cdr (cdr (cdr l))) ;; '()