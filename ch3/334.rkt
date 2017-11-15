;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |334|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define PI 3.14)

(define (area-of-disk r)
  (* PI (* r r)))

(define (area-of-ring outer inner)
  (- (area-of-disk outer) (area-of-disk inner)))

(define (area-cylinder circle height)
  (* 2 PI circle height))

;; area-pipe : number number number -> number
;; 一管道，给定内半径、长度和厚度，计算表面积
;; (area-pipe 5 10 2) is 904.32
(define (area-pipe circle length thick)
  (+ (area-cylinder circle length)
     (area-cylinder (+ circle thick) length)
     (* 2 (area-of-ring (+ circle thick) circle))))
;; (area-pipe 5 10 2)