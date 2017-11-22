;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1144|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; a list-of-posns is either:
;;  - empty
;;  - (cons posn list-of-posns)

;; f : number -> number
(define (f x) 
  (+ (* 3 (* x x)) 
     (+ (* -6 x) 
        -1)))

;; tabulate-f20: N [>= 20] -> list-of-posns
;; 读入一个大于等于 20 的自然数 n，返回一个 posn 表
;; 表中的每个元素都是结构体 (make-posn m (f m))，m in (20, n]

#|
;; TEMPLATE
(define (tabulate-f20 n)
  (cond
    [(zero? n) ...]
    [else (tabulate-f20 (sub1 n)) ...]))
|#


(define (tabulate-f20 n)
  (cond
    ((= 20 n) empty)
    (else (cons (make-posn n (f n)) (tabulate-f20 (sub1 n))))))

;; EXAMPLES AS TESTS
(tabulate-f20 20) "should be" empty
(tabulate-f20 24) "should be"
(cons (make-posn 24 1583)
      (cons (make-posn 23 1448)
            (cons (make-posn 22 1319)
                  (cons (make-posn 21 1196)
                        empty))))