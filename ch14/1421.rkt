;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1421|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct node (ssn name left right))
;; a binary-tree(short: BT) is either
;; 1. false, or
;; 2. (make-node soc pn lft rgt)
;;    where soc is a number, pn is a symbol, and lft and rgt are BTs

;; contains-bt : number BT -> boolean
;; 读入一个数和一颗 BT，判断这个数是否在书中出现

#|
(define (contains-bt n a-bt)
  (cond
    ((empty? a-bt) ...)
    (else ... (node-ssn a-bt) ...
          ... (node-name a-bt) ...
          ... (contains-bt n (node-left a-bt)) ...
          ... (contains-bt n (node-right a-bt)) ...)))
|#

(define (contains-bt n a-bt)
  (cond
    ((boolean? a-bt) false)
    (else (or (= n (node-ssn a-bt))
              (contains-bt n (node-left a-bt))
              (contains-bt n (node-right a-bt))))))

;; examples
(define bt1 (make-node 11 'Bobby false (make-node 12 'Luke false false)))
(define bt2 (make-node 11 'Bobby (make-node 12 'Luke false false) false))
(define bt3 (make-node 11 'Bobby (make-node 12 'Luke false false) (make-node 5 'Paul false false)))

(equal? (contains-bt 11 bt1) true)
(equal? (contains-bt 5 bt3) true)
(equal? (contains-bt 9 bt3) false)
(equal? (contains-bt 12 bt2) true)
(equal? (contains-bt 5 bt2) false)
(equal? (contains-bt 12 bt3) true)