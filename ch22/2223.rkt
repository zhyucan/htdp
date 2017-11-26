;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |2223|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; sum : (listof number) -> number
;; to compute the sum of alon
(define (sum alon)
  (cond
    [(empty? alon) 0]
    [else (+ (first alon)
             (sum (rest alon)))]))

;; product : (listof number) -> number
;; to compute the product of alon
(define (product alon)
  (cond
    [(empty? alon) 1]
    [else (* (first alon)
             (product (rest alon)))]))

(define (fold n sm)
  (local ((define (run alon)
            (cond
              ((empty? alon) n)
              (else (sm (car alon)
                        (run (cdr alon)))))))
    run))

(define sum (fold 0 +))
(define product (fold 1 *))