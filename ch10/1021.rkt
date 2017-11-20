;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1021|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; an inventory is either:
;;  - empty, or
;;  - (cons inventory-record inventory)

;; an inventory-record is a structure: (make-ir s n)
;; where s is a symbol and n is a posnum
(define-struct ir (name price))

;; contains-doll? : inventory -> boolean
;; 检查 an-inv 是否包含一条 'doll 记录

(define (contains-doll? inventory)
  (cond
    ((empty? inventory) ...)
    (else (ir-name (car inventory)) ...
          (ir-price (car inventory)) ...
          (contains-doll? (cdr inventory)))))

(define (contains-doll? inventory)
  (cond
    ((empty? inventory) false)
    (else (or (eq? (ir-name (car inventory)) 'doll)
              (contains-doll? (cdr inventory))))))


;; contains? : symbol inventory -> boolean
;; 测定 an-inv 是否包含一条 asymbol 记录

(define (contains? asymbol an-inv)
  (cond
    ((empty? an-inv) false)
    (else (or (= (ir-name (car an-inv)) asymbol)
              (contains? asymbol (cdr an-inv))))))

;; EXAMPLES AS TESTS
(contains-doll? empty) "should be" false
(contains-doll? (cons (make-ir 'rocket 1) empty)) "should be" false
(contains-doll? (cons (make-ir 'doll 1) empty)) "should be" true