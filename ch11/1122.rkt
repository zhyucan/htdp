;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1122|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; f : number -> number
(define (f x)
  (+ (* 3 (* x x)) (+ (* -6 x) -1)))

;; tabulate-f : natural-number -> list-of-posns
;; 函数读入自然数 n，返回由 n 个 posn 结构体组成的表

#|
(define (tabulate-f n)
  (cond
    ((zero? n) ...)
    (else ... (tabulate-f (sub1 n)) ...)))
|#

(define (tabulate-f n)
  (cond
    ((zero? n) empty)
    (else (cons (make-posn n (f n))
                (tabulate-f (sub1 n))))))

;; examples
(tabulate-f 0) "should be" empty
(tabulate-f 4) "should be"
(cons (make-posn 4 23)
      (cons (make-posn 3 8)
            (cons (make-posn 2 -1)
                  (cons (make-posn 1 -4)
                        empty))))