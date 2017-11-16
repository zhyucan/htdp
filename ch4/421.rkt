;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |421|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; between1 : number -> boolean
;; 确定一个数是否在 3、7 之间（包含 7）
(define (between1 n)
  (and (> n 3) (<= n 7)))
;; (between1 3)
;; false
;; (between1 7)
;; true
;; (between1 1.5)
;; false

;; between2 : number -> boolean
;; 确定一个数是否在 3、7 之间(包含 3、7)
(define (between2 n)
  (and (>= n 3) (<= n 7)))
;; (between2 3)
;; true
;; (between2 7)
;; true
;; (between2 1.5)
;; false

;; between3 : number -> boolean
;; 确定一个数是否在 3、9 之间(包含 3)
(define (between3 n)
  (and (>= n 3) (< n 9)))
;; (between3 3)
;; true
;; (between3 9)
;; false
;; (between3 1.5)
;; false

;; between4 : number -> boolean
;; 确定一个数在不在 (1, 3) 和 (9, 11) 的组合区间里
(define (between4 n)
  (or (and (> n 1) (< n 3)) (and (> n 9) (< n 11))))
;; (between4 3)
;; false
;; (between4 5)
;; false
;; (between4 10)
;; true

;; between5 : number -> boolean
;; 确定一个数是否在区间 [1, 3] 之外
(define (between5 n)
  (not (and (>= n 1) (<= n 3))))
;; (between5 1)
;; false
;; (between5 3)
;; false
;; (between5 5)
;; true