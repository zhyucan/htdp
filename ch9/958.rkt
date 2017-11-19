;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |958|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
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

;; Examples:
(start 300 300)
(draw-circles (make-posn 10 10) empty)
(draw-circles (make-posn 10 10) (cons 5 empty))
(draw-circles (make-posn 150 150)
             (cons 20
                   (cons 40
                         (cons 60
                               (cons 80
                                     (cons 100
                                           (cons 120
                                                 (cons 140
                                                       empty))))))))
