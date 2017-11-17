;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |61|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; distance-to-0 : posn -> number
;; 计算一个 posn 到原点的距离
(define (distance-to-0 a-posn)
  (sqrt (+ (sqr (posn-x a-posn))
           (sqr (posn-y a-posn)))))
; (= (distence-to-0 (make-posn 3 4)) 5)
; (= (distence-to-0 (make-posn 5 12)) 13)

(distance-to-0 (make-posn 3 4))
(distance-to-0 (make-posn (* 2 3) (* 2 4)))
(distance-to-0 (make-posn 12 (- 6 1)))