;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |513|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp")) #f)))
;; make-number : number number number -> number
;; 输入三个数组成三位数
(define (make-number a b c)
  (+ a (* b 10) (* c 100)))
;; (= (make-number 0 5 2) 250)
;; (= (make-number 5 0 0) 5)

(define (check-guess guess target)
  (cond
    ((< guess target) 'TooSmall)
    ((= guess target) 'Perfect)
    (else 'TooLarge)))

;; check-guess3 : number number number -> symbol
;; 输入三个数组成三位数，和目标数比较大小
(define (check-guess3 a b c target)
  (check-guess (make-number a b c) target))
;; (symbol=? (check-guess3 9 4 2 250) 'TooSmall)
;; (symbol=? (check-guess3 0 5 2 250) 'Perfect)
;; (symbol=? (check-guess3 1 5 2 250) 'TooLarge)

(guess-with-gui-3 check-guess3)
