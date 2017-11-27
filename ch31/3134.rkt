;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |3134|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; how-many : (Listof X) -> Number
;; how many items are on the list
(define (how-many alos)
  (local ((define (run alos acc)
            (cond
              ((empty? alos) acc)
              (else (run (cdr alos) (add1 acc))))))
    (run alos 0)))

(= (how-many '(a b c)) 3)