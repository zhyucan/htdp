;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1442|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
a scheme-expression(short: se) is:
1. number
2. symbol
3. (make-add se se)
4. (make-mul se se)
|#

(define-struct add (left right))
(define-struct mul (left right))

;; numeric? : scheme-expression -> boolean
;; deteremines if the expression is numeric or not

(define (numeric? a-se)
  (cond
    ((number? a-se) true)
    ((symbol? a-se) false)
    ((add? a-se) (and (numeric? (add-left a-se))
                      (numeric? (add-right a-se))))
    ((mul? a-se) (and (numeric? (mul-left a-se))
                      (numeric? (mul-right a-se))))))

;; EXAMPLES AS TESTS
(numeric? 1)
"should be"
true

(numeric? 'a)
"should be"
false

(numeric? (make-add 1 'a))
"should be"
false

(numeric? (make-add 1 2))
"should be"
true

(numeric? (make-mul 1 'a))
"should be"
false

(numeric? (make-mul 1 2))
"should be"
true