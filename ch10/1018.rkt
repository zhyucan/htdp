;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1018|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; quadratic-roots : number number number -> symbol or number or list-of-numbers
;; 根据二次方程系数求解

(define (quadratic-roots a b c)
  (cond
    ((= a 0) 'degenerate)
    ((< (sqr b) (* 4 a c)) 'none)
    ((= (sqr b) (* 4 a c)) (/ (- b) (* 2 a)))
    ((> (sqr b) (* 4 a c))
     (list (/ (+ (- b) (sqrt (- (sqr b) (* 4 a c)))) (* 2 a))
           (/ (- (- b) (sqrt (- (sqr b) (* 4 a c)))) (* 2 a))))))

;; examples
(quadratic-roots 1 2 1) "should be" -1
(quadratic-roots 3 4 1) "should be" (list -1/3 -1)
(quadratic-roots 2 4 3) "should be" 'none
(quadratic-roots 1 0 -1) "should be" (list 1 -1)
(quadratic-roots 2 4 2) "should be" -1
(quadratic-roots 0 1 1) "should be" 'degenerate