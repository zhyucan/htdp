;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |301|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; relative-2-absolute : (listof number) -> (listof number)
;; to convert a list of relative distances to a list of absolute distances
;; the first item on the list represents the distance to the origin
(define (relative-2-absolute alon)
  (cond
    ((empty? alon) empty)
    (else
     (cons (car alon)
           (add-to-each (car alon) (relative-2-absolute (cdr alon)))))))

;; add-to-each : number (listof number) -> (listof number)
;; to add n to each number on alon
(define (add-to-each n alon)
  (cond
    ((empty? alon) empty)
    (else (cons (+ (car alon) n)
                (add-to-each n (cdr alon))))))


;; relative-2-absolute2 : (listof number) -> (listof number)
;; to convert a list of relative distances to a list of absolute distances
;; the first item on the list represents the distance to the origin
(define (relative-2-absolute2 alon)
  (local ((define (rel-2-abs alon accu-dist)
            (cond
              [(empty? alon) empty]
              [else
               (cons (+ (car alon) accu-dist)
                     (rel-2-abs (cdr alon) (+ (car alon) accu-dist)))])))
    (rel-2-abs alon 0)))