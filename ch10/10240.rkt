;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |10240|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; (make-ir s n) is a structure, s is a symbol, n is a number
;; an inventory is
;;  - empty
;;  - (cons ir inv), ir is an inventory record, inv is an inventory
(define-struct ir (name price))

;; extract>1 : inventory -> inventory
;; to create an inventory from an-inv for all
;; those items that cost more than $1

#|
(define (extract>1 an-inv) (cond
[(empty? an-inv) ...]
[else ... (first an-inv) ... (extract1 (rest an-inv)) ...]))
|#

(define (extract>1 an-inv)
  (cond
    [(empty? an-inv) empty]
    [else (cond
            [(> (ir-price (first an-inv)) 1.00)
             (cons (first an-inv) (extract>1 (rest an-inv)))]
            [else (extract>1 (rest an-inv))])]))

;; examples
(extract>1 empty) "should be" empty
(extract>1 (cons (make-ir 'doll .50) empty)) "should be" empty
(extract>1 (cons (make-ir 'rocket 1.50) empty))
"should be"
(cons (make-ir 'rocket 1.50) empty)