;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |661|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))


;; 667

(define-struct rect (lefton wide height color))
;; A rect is a structure: (make-rect l w h c)
;; c is a posn, w and h are numbers, c is a symbol

;; (define (func-for-rect a-rect)
;; ... (rect-lefton a-rect) ...
;; ... (rect-wide a-rect) ...
;; ... (rect-height a-rect) ...
;; ... (rect-color a-rect) ...)

;; 668

;; draw-a-rect : rect -> boolean
;; 给出包含一个矩形信息的结构体 rect,画矩形
(define (draw-a-rect a-rect)
  (draw-solid-rect (rect-lefton a-rect)
                   (rect-wide a-rect)
                   (rect-height a-rect)
                   (rect-color a-rect)))

;; (start 300 300)
;; (draw-a-rect (make-rect (make-posn 20 10) 50 200 'blue))

;; 669

;; in-rect? : rect posn -> boolean
;; 确定 posn 表示的点,是否在 rect 表示的矩形内
(define (in-rect? a-rect a-posn)
  (and (>= (posn-x a-posn) (posn-x (rect-lefton a-rect)))
       (<= (posn-x a-posn) (+ (posn-x (rect-lefton a-rect))
                              (rect-wide a-rect)))
       (>= (posn-y a-posn) (posn-y (rect-lefton a-rect)))
       (<= (posn-y a-posn) (+ (posn-y (rect-lefton a-rect))
                              (rect-height a-rect)))))

;; (in-rect? (make-rect (make-posn 2 3) 3 2 'red) (make-posn 4 4))
;; true
;; (in-rect? (make-rect (make-posn 2 3) 3 2 'red) (make-posn 8 6))
;; false

;; 6610

;; translate-rect : rect number -> boolean
;; 把 rect 矩形右移 number 长度
(define (translate-rect a-rect delta)
  (draw-solid-rect (make-posn (+ (posn-x (rect-lefton a-rect)) delta)
                          (posn-y (rect-lefton a-rect)))
               (rect-wide a-rect)
               (rect-height a-rect)
               (rect-color a-rect)))
;; (translate-rect (make-rect (make-posn 20 10) 50 200 'blue) 51)

;; 6611

;; clear-a-rect : rect -> boolean
;; 清除 rect 矩形
(define (clear-a-rect a-rect)
  (clear-solid-rect (rect-lefton a-rect)
               (rect-wide a-rect)
               (rect-height a-rect)
               (rect-color a-rect)))

;; (clear-a-rect (make-rect (make-posn 20 10) 50 200 'blue))

;; 666

;; draw-and-clear-rect : rect number -> boolean
;; 画一个 rect 矩形,经过 number 秒,矩形消失
(define (draw-and-clear-rect a-rect second)
  (and (draw-a-rect a-rect)
       (sleep-for-a-while second)
       (clear-a-rect a-rect)))

;; (start 300 300)
;; (draw-and-clear-rect (make-rect (make-posn 20 10) 50 200 'blue) 3)