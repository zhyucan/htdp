;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1145|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; a list-of-posns is either:
;;  - empty
;;  - (cons posn list-of-posns)

;; f : number -> number
(define (f x) 
  (+ (* 3 (* x x)) 
     (+ (* -6 x) 
        -1)))

;; tabulate-lim: limit N [>= limit] -> list-of-posns
;; 读入一个大于等于 limit 的自然数 n,返回一个 posn 表
;; 表中的每个元素都是结构体 (make-posn m (f m)),m in (limit, n]

#|
;; TEMPLATE
(define (tabulate-lim limit n)
  (cond
    [(zero? n) ...]
    [else (tabulate-lim limit (sub1 n)) ...]))
|#


(define (tabulate-lim limit n)
  (cond
    ((= limit n) empty)
    (else (cons (make-posn n (f n)) (tabulate-lim limit (sub1 n))))))

;; EXAMPLES AS TESTS
(tabulate-lim 10 10) "should be" empty
(tabulate-lim -7 -3) "should be"
(cons (make-posn -3 44)
      (cons (make-posn -4 71)
            (cons (make-posn -5 104)
                  (cons (make-posn -6 143)
                        empty))))