;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |102|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
(define-struct ir (name price))
(make-ir s n) is a structure, s is a symbol, n is a number
an inventory is
  - empty
  - (cons ir inv), ir is an inventory record, inv is an inventory
|#

;; sum : inventory -> number
;; 计算 an-inv 的价格总和

#|
(define (sum an-inv)
  (cond
    ((empty? an-inv) ...)
    (else ... (car an-inv) ... (sum (cdr an-inv)) ...)))
|#

(define (sum an-inv)
  (cond
    ((empty? an-inv) 0)
    (else (+ (ir-price (car an-inv)) (sum (cdr an-inv))))))