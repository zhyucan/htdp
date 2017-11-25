;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |2122|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; convert-euro : (listof number) -> (listof number)
(define (convert-euro alon)
  (map (λ (x) (* x 1.22)) alon))

;; convertFC : (listof number) -> (listof number)
(define (convertFC alon)
  (map (λ (x) (* (- x 32) 5/9)) alon))

;; move-all : (listof posn) -> (listof posn)
(define (move-all alop)
  (map (λ (p)
         (make-posn (posn-x p)
                    (+ (posn-y p) 3)))
       alop))