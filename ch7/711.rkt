;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |711|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct star (last first dob ssn))
(define-struct airplane (kind max-speed max-load price))

(number? (make-posn 2 3)) ;; false
(number? (+ 12 10)) ;; true
(posn? 23) ;; false
(posn? (make-posn 23 3)) ;; true
(star? (make-posn 23 3)) ;; false