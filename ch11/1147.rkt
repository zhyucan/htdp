;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1147|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; is-not-divisible-by<=i : i [>=1] m [> i] -> boolean
;; m 能不能被 (1, i] 之间的任何一个数整除

(define (is-not-divisible-by<=i i m)
  (cond
    ((= 1 i) true)
    (else (and (not (= 0 (modulo m i)))
               (is-not-divisible-by<=i (sub1 i) m)))))

;; prime? : number -> boolean
;; 判断参数是不是素数

(define (prime? n)
  (cond
    [(= n 1) false]
    [else
     (is-not-divisible-by<=i (- n 1) n)]))

(prime? 1) "should be" false
(prime? 2) "should be" true
(prime? 3) "should be" true
(prime? 4) "should be" false