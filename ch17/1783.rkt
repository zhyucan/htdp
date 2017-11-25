;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1783|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; sym-list=? : list-of-numbers list-of-numbers -> boolean
;; to determine whether a-list and another-list
;; contain the same numbers in the same order

(define (sym-list=? a-list another-list)
  (cond
    ((or (empty? a-list) (empty? another-list))
     (and (empty? a-list) (empty? another-list)))
    (else
     (and (eq? (car a-list) (car another-list))
          (sym-list=? (cdr a-list) (cdr another-list))))))
