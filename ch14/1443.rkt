;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1443|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
a scheme-expression(short: se) is:
1. number
2. symbol
3. (make-add se se)
4. (make-mul se se)
|#

(define-struct add (left right))
(define-struct mul (left right))

;; evaluate : scheme-expression -> number
;; to determine the value of a scheme expression
(define (evaluate-expression a-se)
  (cond
    [(number? a-se) a-se]
    [(symbol? a-se) (error 'evaluate-expression "got a variable")]
    [(add? a-se) (+ (evaluate-expression (add-lhs a-se))
                    (evaluate-expression (add-rhs a-se)))]
    [(mul? a-se) (* (evaluate-expression (mul-lhs a-se))
                    (evaluate-expression (mul-rhs a-se)))]))


;; EXAMPLES AS TESTS
(evaluate-expression 1)
"should be"
1

(evaluate-expression (make-add 1 2))
"should be"
3

(evaluate-expression (make-mul 4 2))
"should be"
8

(evaluate-expression (make-add (make-add 5 7) (make-mul 4 3)))
"should be"
24

; (evaluate-expression 'x)
; error!