;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1014|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; convert-euro : number number -> number
;; 美元转欧元
(define (convert-euro dollar rate)
  (* rate dollar))

;; convert-enro-1 : list-of-numbers number -> list-of-numbers
;; 根据给出的汇率，把美元表转欧元表

;; template
#|
(define (convert-enro-1 alon rate)
  (cond
    ((empty? alon) ...)
    (else ... (car alon) ... (convert-enro-1 (cdr alon) rate) ...)))
|#

(define (convert-euro-1 alon rate)
  (cond
    ((empty? alon) empty)
    (else (cons (convert-euro (car alon) rate)
                (convert-euro-1 (cdr alon) rate)))))

;; examples
(= (convert-euro 1 1.22) 1.22)
(= (convert-euro 10 1.22) 12.2)

(convert-euro-1 empty 1.82) "should be" empty
(convert-euro-1 (cons 0.50 empty) 1.76) "should be" (cons 0.88 empty)