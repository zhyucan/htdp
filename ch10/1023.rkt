;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1023|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; an inventory is either:
;;   - empty, or
;;   - (cons inventory-record inventory)

;; an inventory-recode(ir) is a structure:
;;   (make-ir name price)
;; where name is a symbol, price is a number
(define-struct ir (name price))

;; price-of : inventory symbol -> number or 'not-in-inventory
;; 读入一个玩具的名字和一个库存清单，返回玩具价格

#|
(define (price-of inv sym)
  (cond
    ((empty? ir) ...)
    (else (ir-name (car inv)) ...
          (ir-price (car inv)) ...
          (price-of (cdr inv) sym))))
|#

(define (price-of inv sym)
  (cond
    ((empty? inv) 'not-in-inventory)
    (else (cond
            ((eq? (ir-name (car inv)) sym) (ir-price (car inv)))
            (else (price-of (cdr inv) sym))))))

;; examples
(price-of empty 'rocket) "should be" 'not-in-inventory
(price-of (cons (make-ir 'rocket 3.22) empty) 'rocket) "should be" 3.22
(price-of (cons (make-ir 'doll 1.21)
                        (cons (make-ir 'rocket 3.22)
                              empty)) 'rocket)
"should be" 
3.22