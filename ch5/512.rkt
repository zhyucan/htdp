;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |512|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp")) #f)))
;; check-guess : number number -> symbol
;; 有个数，给另一个数和她比较
(define (check-guess guess target)
  (cond
    ((< guess target) 'TooSmall)
    ((= guess target) 'Perfect)
    (else 'TooLarge)))

(guess-with-gui check-guess)