;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1764|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
a list-of-numbers is either
  1. empty or
  2. (cons n lon)
  where n is a number and lon is a list-of-numbers

;Template:
(define (value coefficients variables)
  (cond
    [(empty? coefficients)...]
    [else 
     ...(first coefficients)...(first variables)...
     ...(value (rest coefficients) (rest variables))...]))
|#

;;value: list-of-numbers list-of-numbers -> number
;;consumes the representation of a linear combination 
;;and a list-of-numbers.  It produces the value of  
;;the combination for these values
;;ASSUMPTION: The lists are of equal length.

(define (value alon1 alon2)
  (cond
    ((empty? alon1) 0)
    (else (+ (* (car alon1) (car alon2))
             (value (cdr alon1) (cdr alon2))))))

;; examples
(check-expect 
 (value (list 7) 
        (list 8)) 
 56)

(check-expect 
 (value (list 7 12) 
        (list 8 3)) 
 92)

(check-expect 
 (value (list 7 12 8) 
        (list 8 3 9)) 
 164)
