;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1761|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; merge : list-of-numbers -> list-of-numbers
;; 合并升序数表

#|
(define (merge alon1 alon2)
  (cond
    ((and (empty? alon1) (empty? alon2))
     ...)
    ((and (empty? alon1) (cons? alon2))
     ... (car alon2) ... (cdr alon2) ...)
    ((and (cons? alon1) (empty? alon2))
     ... (car alon1) ... (cdr alon1) ...)
    ((and (cons? alon1) (cons? alon2))
     ...(car alon1)...(cdr alon2)...
     ...(merge (car alon1) alon2)...
     ...(merge alon1 (cdr alon2))...
     ...(merge (car alon1) (cdr alon2))...]))
|#

(define (merge alon1 alon2)
  (cond
    ((empty? alon1) alon2)
    ((empty? alon2) alon1)
    (else (cond
            ((< (car alon1) (car alon2))
             (cons (car alon1) (merge (cdr alon1) alon2)))
            (else
             (cons (car alon2) (merge alon1 (cdr alon2))))))))

;; examples
(check-expect 
 (merge empty empty)
 empty)

(check-expect 
 (merge empty (list 1 2 3))
 (list 1 2 3))

(check-expect 
 (merge (list 1 2 3) empty)
 (list 1 2 3))

(check-expect 
 (merge (list 1 2 3) (list 7 8 9))
 (list 1 2 3 7 8 9))

(check-expect 
 (merge (list 1 3 5 7 9) (list 0 2 4 6 8))
 (list 0 1 2 3 4 5 6 7 8 9))

(check-expect 
 (merge (list 1 8 8 11 12) (list 2 3 4 8 13 14))
 (list 1 2 3 4 8 8 8 11 12 13 14))