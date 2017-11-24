;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1425|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct node (ssn name left right))
;; a binary-tree(short: BT) is either
;; 1. false, or
;; 2. (make-node soc pn lft rgt)
;;    where soc is a number, pn is a symbol, and lft and rgt are BTs
 
;; create-bst : binary-tree number symbol -> binary-tree
;; to create a binary search tree with the same values as the input tree
;; and also the given number associated with the given name 

;; TEMPLATE: 
;(define (bst-fun abt)
;  (cond
;    ((boolean? abt) ...)
;    ((node? abt)
;     ... (node-ssn abt) ... (node-name abt) ... 
;     ... (bst-fun (node-left abt)) ... (bst-fun (node-right abt)) ... )))

;; EXAMPLES
(equal? (create-bst false 6 'b)  (make-node 6 'b false false))
(equal? (create-bst (make-node 4 'a false false) 5 'a)
        (make-node 4 'a false (make-node 5 'a false false)))
(equal? (create-bst (make-node 4 'a false false) 3 'g)
        (make-node 4 'a (make-node 3 'g false false) false))
(equal? (create-bst (make-node 4 'a (make-node 2 'a false false) false) 3 'g)
        (make-node 4 'a (make-node 2 'a false (make-node 3 'g false false)) false))
