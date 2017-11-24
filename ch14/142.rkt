;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |142|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct node (ssn name left right))
;; a binary-tree(short: BT) is either
;; 1. false, or
;; 2. (make-node soc pn lft rgt)
;;    where soc is a number, pn is a symbol, and lft and rgt are BTs

;; two binary-trees
(make-node 15 'd false (make-node 24 'i false false))
(make-node 15 'd (make-node 87 'h false false) false)