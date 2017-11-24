;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |143|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; a Web-page(short: WP) is
;; 1. empty
;; 2. (cons s wp), s is a symbol, wp is a Web page
;; 3. (cons ewp wp), ewp and wp are Web pages

;; size : WP -> number
;; to count the number of symbols that occur in a-wp

#|
(define (size a-wp)
  (cond
    ((empty? a-wp) ...)
    ((symbol? (car a-wp)) ... (car a-wp) ... (size (cdr a-wp)) ...)
    (else ... (size (car a-wp)) ... (size (cdr a-wp)) ...)))
|#

(define (size a-wp)
  (cond
    ((empty? a-wp) 0)
    ((symbol? (car a-wp)) (+ 1 (size (cdr a-wp))))
    (else (+ (size (car a-wp)) (size (cdr a-wp))))))

;; examples
(= (size empty) 0)
(= (size (cons 'One empty)) 1)
(= (size (cons (cons 'One empty) empty)) 1)