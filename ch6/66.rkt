;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |66|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; 661

(define-struct circle (centre radius color))
;; A circle is a structure: (make-circle ce ra co)
;; ce is a posn, ra is a number, co is a symbol

;; (define (func-for-circle a-circle)
;; ... (circle-centre a-circle) ...
;; ... (circle-radius a-circle) ...
;; ... (circle-color a-circle) ...)

;; 662

;; draw-a-circle : circle -> boolean
;; 给出包含一个圆信息的结构体 circle，画圆
(define (draw-a-circle a-circle)
  (draw-circle (circle-centre a-circle)
               (circle-radius a-circle)
               (circle-color a-circle)))

;; (start 300 300)
;; (draw-a-circle (make-circle (make-posn 200 10) 50 'red))

;; 663

;; point-distance : posn posn -> number
;; 两点之间的距离
(define (point-distance a-posn b-posn)
  (sqrt
   (+ (sqr (- (posn-x a-posn) (posn-x b-posn)))
      (sqr (- (posn-y a-posn) (posn-y b-posn))))))
;; (= (point-distance (make-posn 1 4) (make-posn 5 9)) 5)

;; in-circle? : circle posn -> boolean
;; 确定 posn 表示的点，是否在 circle 表示的圆内
(define (in-circle? a-circle a-posn)
    (>= (circle-radius a-circle)
        (point-distance a-posn (circle-centre a-circle))))

;; (in-circle? (make-circle (make-posn 6 2) 1 'red) (make-posn 6 1.5))
;; true
;; (in-circle? (make-circle (make-posn 6 2) 1 'red) (make-posn 8 6))
;; false

;; 664

;; translate-circle : circle number -> boolean
;; 把 circle 圆右移 number 长度
(define (translate-circle a-circle delta)
  (draw-circle (make-posn (+ (posn-x (circle-centre a-circle)) delta)
                          (posn-y (circle-centre a-circle)))
               (circle-radius a-circle)
               (circle-color a-circle)))
;; (translate-circle (make-circle (make-posn 200 10) 50 'red) 100)

;; 665

;; clear-a-circle : circle -> boolean
;; 清除 circle 圆
(define (clear-a-circle a-circle)
  (clear-circle (circle-centre a-circle)
               (circle-radius a-circle)
               (circle-color a-circle)))

;; (clear-a-circle (make-circle (make-posn 200 10) 50 'red))

;; 666

;; draw-and-clear-circle : circle number -> boolean
;; 画一个 circle 圆，经过 number 秒，圆消失
(define (draw-and-clear-circle a-circle second)
  (and (draw-a-circle a-circle)
       (sleep-for-a-while second)
       (clear-a-circle a-circle)))

;; (start 300 300)
;; (draw-and-clear-circle (make-circle (make-posn 200 10) 50 'red) 3)
