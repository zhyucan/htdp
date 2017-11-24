;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1444|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
a scheme-expression(short: se) is:
1. number
2. symbol
3. (make-add se se)
4. (make-mul se se)
|#

(define-struct add (left right))
(define-struct mul (left right))

;; subst : scheme-expression symbol number -> scheme-expression
;; replaces all occurrences of var with num in a-se
(define (subst a-se var num)
  (cond
    ((number? a-se) a-se)
    ((symbol? a-se) (if (eq? var a-se) num a-se))
    ((add? a-se) (make-add (subst (add-left a-se) var num)
                           (subst (add-right a-se) var num)))
    ((mul? a-se) (make-mul (subst (mul-left a-se) var num)
                           (subst (mul-right a-se) var num)))))

;; EXAMPLES AS TESTS
(subst 1 'x 2)
"should be"
1

(subst 'x 'x 2)
"should be"
2

(subst 'x 'y 2)
"should be"
'x

(subst (make-mul 'x 'y) 'x 2)
"should be"
(make-mul 2 'y)


(subst (make-add 'x 'y) 'x 2)
"should be"
(make-add 2 'y)