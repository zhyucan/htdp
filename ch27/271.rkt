;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |271|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; sierpinski : posn posn posn -> true
;; to draw a Sierpinski triangle down at a, b, and c,
;; assuming it is large enough
(define (sierpinski a b c)
  (cond
    ((too-small? a b c) true)
    (else
     (local ((define a-b (mid-point a b))
             (define b-c (mid-point b c))
             (define c-a (mid-point c a)))
       (and (draw-triangle a b c)
            (sierpinski a a-b c-a)
            (sierpinski b a-b b-c)
            (sierpinski c c-a b-c))))))

;; mid-point : posn posn -> posn
;; to compute the mid-point between a-posn and b-posn
(define (mid-point a-posn b-posn)
  (make-posn
   (mid (posn-x a-posn) (posn-x b-posn))
   (mid (posn-y a-posn) (posn-y b-posn))))

;; mid : number number -> number
;; to computer the average of x and y
(define (mid x y)
  (/ (+ x y) 2))