;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |2236|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (series-local a-term)
  (local ((define (run n)
            (cond
              ((zero? n) (a-term n))
              (else (+ (a-term n)
                       (run (sub1 n)))))))
    run))

(define (e-power x)
  (local ((define (e-taylor i)
            (/ (expt x i) (! i)))
          (define (! n)
            (cond
              ((zero? n) 1)
              (else (* n (! (sub1 n)))))))
    ((series-local e-taylor) 3)))

(e-power 1)