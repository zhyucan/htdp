;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |332|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define PI 3.14)

;; area-cylinder : number number -> number
;; 给定圆柱体半径和高，计算其表面积
;; (area-cylinder 2 4) is 50.24 ; (area-cylinder 5 12) is 376.8
(define (area-cylinder circle height)
  (* 2 PI circle height))
(area-cylinder 2 4)
(area-cylinder 5 12)
