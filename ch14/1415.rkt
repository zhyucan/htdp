;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1415|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; a family-tree-node(short: ftn) is either
;; 1. empty, or
;; 2. (make-child f m na da ec), where f and m are ftns,
;;    na and ec are symbols, and da is a number.
(define-struct child (father mother name date eyes))

;;Oldest Generation:
(define Carl (make-child empty empty 'Carl 1926 'green))
(define Bettina (make-child empty empty 'Bettina 1926 'green))

;; Middle Generation:
(define Adam (make-child Carl Bettina 'Adam 1950 'yellow))
(define Dave (make-child Carl Bettina 'Dave 1955 'black))
(define Eva (make-child Carl Bettina 'Eva 1965 'blue))
(define Fred (make-child empty empty 'Fred 1966 'pink))

;; Youngest Generation:
(define Gustav (make-child Eva Fred 'Guatav 1988 'brown))

;; eye-colors : ftn -> list-of-symbols
;; 读入一个家谱树节点，返回这棵树中所有眼睛颜色的表

#|
(define (eye-colors a-ftree)
  (cond
    ((empty? a-ftree) ...)
    (else ... (eye-colors (child-father a-ftree)) ...
          ... (eye-colors (child-mother a-ftree)) ...
          ... (child-name a-ftree) ...
          ... (child-date a-ftree) ...
          ... (child-eyes a-ftree) ...)))
|#

(define (eye-colors a-ftree)
  (cond
    ((empty? a-ftree) empty)
    (else (cons (child-eyes a-ftree)
                (append (eye-colors (child-father a-ftree))
                        (eye-colors (child-mother a-ftree)))))))

;; EXAMPLES AS TESTS
(eye-colors empty) "should be" empty
(eye-colors Carl) "should be" (list 'green)
(eye-colors Bettina) "should be" (list 'green)
(eye-colors Adam) "should be" (list 'yellow 'green 'green)
(eye-colors Dave) "should be" (list 'black 'green 'green)
(eye-colors Eva) "should be" (list 'blue 'green 'green)
(eye-colors Fred) "should be" (list 'pink)
(eye-colors Gustav) "should be" (list 'brown 'pink 'blue 'green 'green)