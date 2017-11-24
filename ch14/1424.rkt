;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1424|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct node (ssn name left right))
;; a binary-tree(short: BT) is either
;; 1. false, or
;; 2. (make-node soc pn lft rgt)
;;    where soc is a number, pn is a symbol, and lft and rgt are BTs

;; search-bst : number BST -> boolean
;; 读入一个数和一颗 BST,判断这个数是否在树中出现,如果出现则返回这个节点的 pn

#|
(define (search-bst n a-bt)
  (cond
    ((empty? a-bt) ...)
    (else ... (node-ssn a-bt) ...
          ... (node-name a-bt) ...
          ... (search-bst n (node-left a-bt)) ...
          ... (search-bst n (node-right a-bt)) ...)))
|#

(define (search-bt n a-bt)
  (cond
    ((boolean? a-bt) false)
    (else (cond
            ((= n (node-ssn a-bt)) (node-name a-bt))
            ((> n (node-ssn a-bt)) (search-bt n (node-right a-bt)))
            ((< n (node-ssn a-bt)) (search-bt n (node-left a-bt)))))))
            
;; EXAMPLES as tests

(search-bt 1 false)
"should be" 
false

(search-bt 1 (make-node 2 'x false false))
"should be"
false

(search-bt 2 (make-node 2 'x false false))
"should be" 
'x

(search-bt 1 
             (make-node 2 
                        'x
                        (make-node 1 'y false false)
                        (make-node 3 'z false false)))
"should be" 
'y

(search-bt 3
             (make-node 2 
                        'x 
                        (make-node 1 'y false false)
                        (make-node 3 'z false false)))
"should be" 
'z
