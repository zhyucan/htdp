;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |423|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; equation1 : number -> boolean
;; x 是否是 4 * n + 2 = 62 的解
(define (equation1 x)
  (= (+ (* 4 x) 2) 62))
;; (equation1 10)
;; false
;; (equation1 12)
;; false
;; (equation1 14)
;; false

;; equation2 : number -> boolean
;; x 是否是 2 * n^2 = 102 的解
(define (equation2 x)
  (= (* 2 x x) 102))
;; (equation2 10)
;; false
;; (equation2 12)
;; false
;; (equation2 14)
;; false

;; equaiton3 : number -> boolean
;; x 是否是 4 * n^2 + 6 * n + 2 = 462 的解
(define (equation3 x)
  (= (+ (* 4 x x) (* 6 x) 2) 462))
;; (equation3 10)
;; true
;; (equation3 12)
;; false
;; (equation3 14)
;; false