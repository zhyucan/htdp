;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1029|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; An inventory is either:
;;   - empty, or
;;   - (cons inventory-record inventory)

;; An inventory-record is:
;;   (make-ir S N)
;; where S is a symbol, and
;;       N is a number.
(define-struct ir (name price))

;; substitute : inventory symbol symbol -> inventory
;; substitute all occurrences of old with new

#|
;; TEMPLATE 
(define (substitute inv new old)
  (cond
    [(empty? inv) ...]
    [else (ir-name (car inv)) ...
          (ir-price (car inv)) ...
          (substitute (cdr inv)) ...]))
|#

(define (substitute inv new old)
  (cond
    ((empty? inv) empty)
    (else (cond
            ((eq? (ir-name (car inv)) old)
             (cons (make-ir new (ir-price (car inv)))
                   (substitute (cdr inv) new old)))
            (else (cons (car inv) (substitute (cdr inv) new old)))))))