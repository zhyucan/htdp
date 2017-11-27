;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |273|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; find-root : (number -> number) number number -> number
;; to determine R such that f has a rot in [R, R + TOLERANCE]
;; ASSUMPTION: (or (<= (f left) 0 (f right)) (<= (f right) 0 (f left)))

(define (find-root f left right)
  (cond
    ((<= (- right left) TOLERANCE) left)
    (else
     (local ((define mid (/ (+ left right) 2)))
       (cond
         ((<= (f mid) 0 (f right))
          (find-root mid right))
         (else (find-root left mid)))))))