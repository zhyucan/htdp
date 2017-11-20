;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1013|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; convertFC : list-of-numbers -> list-of-numbers
;; 华氏表转摄氏表

#|
;; Template
(define (convertFC a-lon)
  (cond
    [(empty? a-lon) ...]
    [else ... (first a-lon) ...
          ... (convertFC (rest a-lon)) ...]))
|#

(define (convertFC alon)
  (cond
    ((empty? alon) empty)
    (else (cons (fahrenheit->celsius (car alon))
                (convertFC (cdr alon))))))

;; fahrenheit->celsius : number -> number
;; computes the celsius equivalent of t

(define (fahrenheit->celsius t)
  (* 5/9 (- t 32)))

;; EXAMPLES
(fahrenheit->celsius 32) "should be" 0
(fahrenheit->celsius 212) "should be" 100
(fahrenheit->celsius -40) "should be" -40

(convertFC empty) "should be" empty
(convertFC (cons 32 (cons 212 (cons 86 empty)))) "should be" 
(cons 0 (cons 100 (cons 30 empty)))