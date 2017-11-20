;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1027.|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; An inventory is either:
;;   - empty, or
;;   - (cons inventory-record inventory)

;; An inventory-record is:
;;   (make-ir S N)
;; where S is a symbol, and
;;       N is a number.
(define-struct ir (name price))

;; recall : inventory -> inventory
;; 除掉一个元素

#|
;; TEMPLATE 
(define (recall an-inv sym)
  (cond
    [(empty? an-inv) ...]
    [else (ir-name (car an-inv)) ...
          (ir-price (car an-inv)) ...
          (recall (cdr an-inv)) ...]))
|#

(define (recall an-inv sym)
  (cond
    ((empty? an-inv) empty)
    (else (cond
            ((eq? (ir-name (car an-inv)) sym) (recall (cdr an-inv) sym))
            (else (cons (car an-inv) (recall (cdr an-inv) sym)))))))

;; EXAMPLES AS TESTS
(recall empty 'doll) "should be" empty
(recall (cons (make-ir 'doll 2.31) empty) 'doll) "should be" empty
(recall (cons (make-ir 'rocket 1.21) empty) 'doll) "should be" 
(cons (make-ir 'rocket 1.21) empty)

(recall (cons (make-ir 'rocket 1.21)
              (cons (make-ir 'rocket 1.21)
                    (cons (make-ir 'doll 2.31)
                          (cons (make-ir 'rocket 1.21)
                                empty))))
        'rocket)
"should be"
(cons (make-ir 'doll 2.31) empty)