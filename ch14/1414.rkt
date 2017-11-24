;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1414|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
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

;; count-persions : ftn -> number
;; 读入一个家谱树节点,返回相应家谱树中的人数

#|
(define (count-persons a-ftree)
  (cond
    ((empty? a-ftree) ...)
    (else ... (count-persons (child-father a-ftree)) ...
          ... (count-persons (child-mother a-ftree)) ...
          ... (child-name a-ftree) ...
          ... (child-date a-ftree) ...
          ... (child-eyes a-ftree) ...)))
|#

(define (count-persons a-ftree)
  (cond
    ((empty? a-ftree) 0)
    (else (+ 1 (count-persons (child-father a-ftree))
               (count-persons (child-mother a-ftree))))))

;; count-ages : ftn number -> number
;; 读入一个家谱树节点和当前纪年,返回家谱树中所有人的年龄之和

(define (sum-of-ages a-ftree year)
  (cond
    ((empty? a-ftree) 0)
    (else (+ (- year (child-date a-ftree))
             (sum-of-ages (child-father a-ftree) year)
             (sum-of-ages (child-mother a-ftree) year)))))

;; average-age : ftn number -> number
;; 读入一个家谱树节点和当前纪年，返回家谱树中所有人的平均年龄

(define (average-age a-ftree year)
  (/ (sum-of-ages a-ftree year) (count-persons a-ftree)))

;; EXAMPLES AS TESTS
(sum-of-ages Carl 2001) "should be" 75
(sum-of-ages Bettina 2001) "should be" 75
(sum-of-ages Adam 2001) "should be" 201
(sum-of-ages Dave 2001) "should be" 196
(sum-of-ages Eva 2001) "should be" 186
(sum-of-ages Fred 2001) "should be" 35
(sum-of-ages Gustav 2001) "should be" 234

(average-age Carl 2001) "should be" 75
(average-age Bettina 2001) "should be" 75
(average-age Adam 2001) "should be" 67
(average-age Dave 2001) "should be" (+ 65 1/3)
(average-age Eva 2001) "should be" 62
(average-age Fred 2001) "should be" 35
(average-age Gustav 2001) "should be" (+ 46 4/5)