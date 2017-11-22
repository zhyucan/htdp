;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1132|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; draw-circle : posn list-of-numbers -> boolean
;; draws circles centered at a-posn with radis taken from a-lon

#|
;; template
(define (draw-circles a-posn a-lon)
  (cond
    ((empty? a-lon) ...)
    (else ... (car a-lon) ... (draw-circles a-posn (cdr a-lon)) ... )))
|#

(define (draw-circles a-posn a-lon)
  (cond
    ((empty? a-lon) true)
    (else (and (draw-circle a-posn (car a-lon))
               (draw-circles a-posn (cdr a-lon))))))

;; tie-dyed : n -> list-of-numbers
;; to construct a list of numbers between 20 and 120

(define (tie-dyed n)
  (cond
    ((zero? n) empty)
    (else (cons (+ (random 101) 20) (tie-dyed (sub1 n))))))

;; examples
(tie-dyed 3)
;; = a list of three numbers between 20 and 120

(start 240 240)
(draw-circles (make-posn 120 120) (tie-dyed 10))

