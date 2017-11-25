;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1712|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; cross : list-of-symbols list-of-numbers -> list-of-pairs
;; 读入一个符号表和一个数表，返回所有可能的符号——数对

(define (cross los lon)
  (cond
    ((empty? los) empty)
    (else (append (make-pairs (car los) alon)
                  (cross (cdr alon) alon)))))

(define (make-pairs sym alon)
  (cond
    ((empty? alon) empty)
    (else (cons (list sym (car alon))
                (make-pairs sym (cdr alon))))))