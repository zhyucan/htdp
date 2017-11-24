;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1423|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct node (ssn name left right))
;; a binary-tree(short: BT) is either
;; 1. false, or
;; 2. (make-node soc pn lft rgt)
;;    where soc is a number, pn is a symbol, and lft and rgt are BTs

;; inorder : BT -> list-of-numbers
;; 读入一颗 BT，返回树中所有 ssn 组成的表

#|
(define (inorder a-bt)
  (cond
    ((empty? a-bt) ...)
    (else ... (node-ssn a-bt) ...
          ... (node-name a-bt) ...
          ... (inorder (node-left a-bt)) ...
          ... (inorder (node-right a-bt)) ...)))
|#

(define (inorder abt)
  (cond
    ((boolean? abt) empty)
    ((node? abt)
     (append (inorder (node-left abt))
             (cons (node-name abt)
               (inorder (node-right abt)))))))

;; TESTS:
(inorder (make-node 66 'a (make-node 53 'b false false) false))
"should be" (cons 'b (cons 'a empty))

(inorder (make-node 53 'b (make-node 66 'a false false) false))
"should be" (cons 'a (cons 'b empty))
