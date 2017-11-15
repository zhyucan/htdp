;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |335|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define g 10)

;; speed : number -> number
;; 给定时间，算出速度
;; (speed 1) is 10 ; (speed 5) is 50
(define (speed t)
  (* g t))
;; (speed 1)
;; (speed 5)

;; height : number -> number
;; 给定时间，算出高度
;; (height 1) is 5 ; (height 5) is 125
(define (height t)
  (* 0.5 t (speed t)))
(height 1)
(height 5)