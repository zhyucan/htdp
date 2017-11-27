;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |274|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; newton : (number -> number) number -> number
;; to find a number r such that (< (abs f r)) TOLERANCE)
(define (newton f r0)
  (cond
    ((<= (abs (f r0)) TOLERANCE))
    (else (newton f (find-root-tangent f r0)))))

;; find-root-tangent : (number -> number) number -> number
(define (find-root-tangent f r0)
  (local ((define fprime (d/dx f)))
    (- r0 (/ (f r0) (fprime r0)))))