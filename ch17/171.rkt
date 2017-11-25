;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |171|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; replace-eol-with : list-of-numbers list-of-numbers -> list-of-numbers
;; to construct a new list by replacing empty in alon1 with alon2

(define (replace-eol-with alon1 alon2)
  (cond
    ((empty? alon1) alon2)
    (else (cons (car alon1) (replace-eol-with (cdr alon1) alon2)))))

;; our-append : list list list -> list
;; 合并 list

(define (our-append alon1 alon2 alon3)
  (replace-eol-with alon1 (replace-eol-with alon2 alon3)))

;Tests:
(check-expect (our-append 
               empty
               empty
               empty)
              empty)
(check-expect (our-append 
               empty
               (list 'a 'b 'c)
               empty)
              (list 'a 'b 'c))
(check-expect (our-append 
               (list 1 2 3)
               (list 'a 'b 'c)
               empty)
              (list 1 2 3 'a 'b 'c))
(check-expect (our-append 
               (list 1 2 3)
               (list 'a 'b 'c)
               (list 5 'w  'r))
              (list 1 2 3 'a 'b 'c 5 'w  'r))
