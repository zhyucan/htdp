;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |371|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Constants:

;; the legitimate colors
(define COLORS
  (list 'black 'white 'red 'blue 'green 'gold 'pink 'orange 'purple
'navy))

;; the number of colors
(define COL# (length COLORS))

;; Data Definition:
;; A color is a symbol on COLORS.

;; target1, target2 : color
;; the two variables represent the two colors that the first palyer chose
(define target (car COLORS))
(define target (car COLORS))

;; master : -> void
;; effect: set target1 and target2 to two randomly chosen items from COLORS
(define (master)
  (begin
    (set! target1 (list-ref COLORS (random COL#)))
    (set! target2 (list-ref COLORS (random COL#)))))

;; master-check : color color -> symbol
;; to determine how many colors at how many positions are guessed correctly
;; The function defers to check-color, the solution of exercise 5.1.5.
(define (master-check guess1 guess2)
  (check-color guess1 guess2 target1 target2))