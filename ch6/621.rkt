;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |621|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; (start 300 300)
;; (draw-solid-line (make-posn 1 1) (make-posn 5 5) 'red)
;; (draw-solid-rect (make-posn 20 10) 50 200 'blue)
;; (draw-circle (make-posn 200 10) 50 'red)
;; (draw-solid-disk (make-posn 200 10) 50 'green)
;; (stop)

(define WIDTH 50)
(define HEIGHT 160)
(define BULB-RADIUS 20)
(define BULB-DISTANCE 10)

(define X-BULBS (quotient WIDTH 2))
(define Y-RED (+ BULB-DISTANCE BULB-RADIUS))
(define Y-YELLOW (+ Y-RED BULB-DISTANCE (* 2 BULB-RADIUS)))
(define Y-GREEN (+ Y-YELLOW BULB-DISTANCE (* 2 BULB-RADIUS)))

(start WIDTH HEIGHT)
(draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
(draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
(draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)