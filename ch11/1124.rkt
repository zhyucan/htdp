;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1124|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; A deep-list is either 
;;  - s where s is some symbol or 
;;  - (cons dl empty), where dl is a deep-list.

;; depth : deep-list -> natural-number
;; counts the number of cons's used to create this deep list.

#|
;; TEMPLATE
(define (depth a-dl)
  (cond
    [(symbol? a-dl) ...]
    [else (deep-list-template (car a-dl)) ...
          (cdr a-dl) ...]))
|#

(define (depth dl)
  (cond
    ((symbol? dl) 0)
    (else (add1 (depth (car dl))))))

;; make-deep : natural-number symbol -> deep-list 
;; constructs a deep list with s at the bottom of depth n.
#|
;; TEMPLATE
(define (make-deep n s)
  (cond
    [(zero? n) ...]
    [else (make-deep (sub1 n) s) ...]))
|#

(define (make-deep n s)
  (cond
    ((zero? n) s)
    (else (cons (make-deep (sub1 n) s) empty))))

;; EXAMPLES AS TESTS
(depth 'bottom) "should be" 0
(depth (cons (cons (cons (cons 'bottom empty) empty) empty) empty)) "should be" 4

(make-deep 0 'bottom) "should be" 'bottom
(make-deep 4 'bottom) "should be" 
(cons (cons (cons (cons 'bottom empty) empty) empty) empty)