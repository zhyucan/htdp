;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1789|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
A Slist is either
 1. empty
 2. (con s sl), s is a Sexpr, sl is a Slist.

A Sexpr is either
 1. a number
 2. a boolean
 3. a symbol
 4. a Slist
|#

;; Slist=? : Slist Slist -> boolean
;; 读入两个 Slist，判断是否相等
(define (Slist=? slist1 slist2)
  (cond
    ((empty? slist1) (empty? slist2))
    (else (and (cons? slist2)
               (Sexpr=? (car slist1) (car slist2))
               (Slist=? (cdr slist1) (cdr slist2))))))

;; Sexpr=? : Sexpr Sexpr -> boolean
;; 判断两个 Sexpr 是否相等
(define (Sexpr=? a-sexpr another-sexpr)
  (cond
    [(number? a-sexpr)
     (and (number? another-sexpr)
          (= a-sexpr another-sexpr))]
    [(boolean? a-sexpr)
     (and (boolean? another-sexpr)
          (boolean=? a-sexpr another-sexpr))]    
    [(symbol? a-sexpr)
     (and (symbol? another-sexpr)
          (symbol=? a-sexpr another-sexpr))]
    [else
     (and (or (empty? another-sexpr) (cons? another-sexpr))
          (Slist=? a-sexpr another-sexpr))]))

;Examples as Tests:
(check-expect
 (Slist=?
  empty
  empty)
 true)

(check-expect
 (Slist=?
  empty
  (list 'w 6 6 false))
 false)

(check-expect
 (Slist=?
  (list 'w 6 6 false)
  empty)
 false)

(check-expect
 (Slist=?
  (list 'w 6 6 false)
  (list 'w 6 6 false))
 true)

(check-expect
 (Slist=?
  (list 'w 6 6 false)
  (list 'w 6 false))
 false)

(check-expect
 (Slist=?
  (list 'w 6 6 false (list true 'a 7 'b))
  (list 'w 6 6 false (list true 'a 7 'b)))
 true)

(check-expect
 (Slist=?
  (list 'w 6 6 false (list true 'a 7 'b))
  (list 'w 6 (list true 'a 7 'b) 6 false ))
 false)

(check-expect
 (Slist=?
  (list 'w (list 5) 6 false)
  (list 'w (list 5) 6 false))
 true)

;Examples as Tests:
(check-expect
 (Sexpr=? 5 5)
 true)

(check-expect
 (Sexpr=? 5 8)
 false)

(check-expect
 (Sexpr=? 5 true)
 false)

(check-expect
 (Sexpr=? 5 'hello)
 false)

(check-expect
 (Sexpr=? false false)
 true)

(check-expect
 (Sexpr=? false 8)
 false)

(check-expect
 (Sexpr=? false 'hello)
 false)

(check-expect
 (Sexpr=? false 8)
 false)

(check-expect
 (Sexpr=? 'hello 'hello)
 true)

(check-expect
 (Sexpr=? 'hello 8)
 false)

(check-expect
 (Sexpr=? 'hello true)
 false)

(check-expect
 (Sexpr=? 'hello 'goodbye)
 false)

(check-expect
 (Sexpr=? empty
          empty)
 true)

(check-expect
 (Sexpr=? (list 6 'bye true)
          (list 6 'bye true))
 true)

(check-expect
 (Sexpr=? (list 6 'bye true)
          (list true 7 'bye))
 false)

(check-expect
 (Sexpr=? (list 6 'bye true)
          9)
 false)

(check-expect
 (Sexpr=? (list 6 'bye true)
          true)
 false)

(check-expect
 (Sexpr=? (list 6 'bye true)
          'bye)
 false)


(check-expect
 (Sexpr=? (list 6 'bye (list 5 6) true)
          (list 6 'bye (list 5 6) true))
 true)

