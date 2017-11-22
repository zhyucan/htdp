;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1134|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; create-prices : number -> a-list-of-numbers
;; consumes a natural number and produces a list

(define (create-prices n)
  (cond
    ((zero? n) empty)
    (else (cons (* (+ (random 100) 1) 0.10)
                (create-prices (sub1 n))))))

;; EXAMPLES
(create-prices 3)
;; = a list of three prices between $0.10 and $10.00