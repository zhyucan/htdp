;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |151|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct parent (children name date eyes))

#|
a parent is a structure
(make-parent loc n d e)
loc is a list of children, n and e are symbols, d is a number

a list-of-children is
1. empty
2. (cons p loc), p is a paarent, loc is a list of children
|#

;; Youngest Generation:
(define Gustav (make-parent empty 'Gustav 1988 'brown))

(define Fred&Eva (list Gustav))

;; Middle Generation:
(define Adam (make-parent empty 'Adam 1950 'yellow))
(define Dave (make-parent empty 'Dave 1955 'black))
(define Eva (make-parent Fred&Eva 'Eva 1965 'blue))
(define Fred (make-parent Fred&Eva 'Fred 1966 'pink))

(define Carl&Bettina (list Adam Dave Eva))

;; Oldest Generation:
(define Carl (make-parent Carl&Bettina 'Carl 1926 'green))
(define Bettina (make-parent Carl&Bettina 'Bettina 1926 'green))

;; blue-eyed-descendant? : parent -> boolean
;; to determine whether a-parent or any of its descendants
;; (children, grandchildren, and so on) have 'blue in the eyes field

#|
(define (blue-eyed-descendant? a-parent)
  (cond
    [(symbol=? (parent-eyes a-parent) 'blue) true]
    [else
      ... (parent-children a-parent) ...
      ... (parent-name a-parent) ...
      ... (parent-date a-parent) ...]))
|#

(define (blue-eyed-descendant? a-parent)
  (or (eq? (parent-eyes a-parent) 'blue)
      (blue-eyed-children? (parent-children a-parent))))

;; blue-eyed-children? : list-of-children -> boolean
;; to determine whether any of the structures in aloc is blue-eyed
;; or has any blue-eyed descendant

#|
(define (blue-eyed-children? aloc)
  (cond
    [(empty? aloc) ...]
    [else
      ... (first aloc) ...
      ... (blue-eyed-children? (rest aloc)) ...]))
|#

(define (blue-eyed-children? aloc)
  (cond
    ((empty? aloc) false)
    (else (or (blue-eyed-descentdant? (car aloc))
              (blue-eyed-children? (cdr aloc))))))

;; examples
(boolean=? (blue-eyed-descendant? Gustav) false)
(boolean=? (blue-eyed-descendant? Eva) true)
(boolean=? (blue-eyed-descendant? Bettina) true)

(boolean=? (blue-eyed-children? (list Gustav)) false)
(boolean=? (blue-eyed-children? (list Adam Dave Eva) true)