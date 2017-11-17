;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |622|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
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

;; clear-bulb : symbol -> boolean
;; 关灯
(define (clear-bulb color)
  (cond
    ((symbol=? color 'green)
     (and (clear-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
          (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)))
    ((symbol=? color 'yellow)
     (and (clear-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
          (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)))
    ((symbol=? color 'red)
     (and (clear-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
          (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)))))

;; draw-bulb : symbol -> boolean
;; 开灯
(define (draw-bulb color)
  (cond
    ((symbol=? color 'green)
     (and (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
          (clear-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)))
    ((symbol=? color 'yellow)
     (and (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
          (clear-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)))
    ((symbol=? color 'red)
     (and (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
          (clear-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)))))


;; switch : symbol symbol -> boolean
;; 关灯一，开灯二
(define (switch c1 c2)
  (and (clear-bulb c1) (draw-bulb c2)))

;; next : symbol -> symbol
;; 换色
(define (next current-color)
  (cond
    ((and (symbol=? current-color 'red) (switch 'red 'green)) 'green)
    ((and (symbol=? current-color 'yellow) (switch 'yellow 'red)) 'red)
    ((and (symbol=? current-color 'green) (switch 'green 'yellow)) 'yellow)))