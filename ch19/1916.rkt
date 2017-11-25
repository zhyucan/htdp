;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |1916|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; sort : list-of-numbers -> list-of-numbers
;; to construct a list with all items from alon in descending order
(define (sort alon)
  (local ((define (sort alon)
            (cond
              [(empty? alon) empty]
              [else (insert (first alon) (sort (rest alon)))]))
          (define (insert an alon)
            (cond
              [(empty? alon) (list an)]
              [else
               (cond
                 [(> an (first alon)) (cons an alon)]
                 [else (cons (first alon) (insert an (rest alon)))])])))
    (sort alon)))

(define (sort1 alon bl)
  (local ((define (sort alon)
            (cond
              [(empty? alon) empty]
              [else (insert (first alon) (sort1 (rest alon) bl))]))
          (define (insert an alon)
            (cond
              [(empty? alon) (list an)]
              [else
               (cond
                 [(bl an (first alon)) (cons an alon)]
                 [else (cons (first alon) (insert an (rest alon)))])])))
    (sort alon))))