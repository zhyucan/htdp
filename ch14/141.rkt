;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |141|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; a family-tree-node(short: ftn) is either
;; 1. empty, or
;; 2. (make-child f m na da ec), where f and m are ftns,
;;    na and ec are symbols, and da is a number.
(define-struct child (father mother name date eyes))

;;Oldest Generation:
(define Cral (make-child empty empty 'Cral 1926 'green))
(define Bettina (make-child empty empty 'Bettina 1926 'green))

;; Middle Generation:
(define Adam (make-child Cral Bettina 'Adam 1950 'yellow))
(define Dave (make-child Cral Bettina 'Dave 1955 'black))
(define Eva (make-child Cral Bettina 'Eva 1965 'blue))
(define Fred (make-child empty empty 'Fred 1966 'pink))

;; Youngest Generation:
(define Gustav (make-child Eva Fred 'Guatav 1988 'brown))

;; blue-eyed-ancestor? : ftn -> boolean
;; to determine whether a-ftree contains a child structure
;; with 'blue in the eyes field

#|
(define (blue-eyed-ancestor? a-ftree)
  (cond
    ((empty? a-ftree) ...)
    (else ... (blue-eyed-ancestor? (child-father a-ftree)) ...
          ... (blue-eyed-ancestor? (child-mother a-ftree)) ...
          ... (child-name a-ftree) ...
          ... (child-date a-ftree) ...
          ... (child-eyes a-ftree) ...)))
|#

(define (blue-eyed-ancestor? a-ftree)
  (cond
    ((empty? a-ftree) false)
    (else (or (blue-eyed-ancestor? (child-father a-ftree))
              (blue-eyed-ancestor? (child-mother a-ftree))
              (eq? (child-eyes a-ftree) 'blue)))))

;; examples
(blue-eyed-ancestor? Cral) "should be" false
(blue-eyed-ancestor? Gustav) "should be" true