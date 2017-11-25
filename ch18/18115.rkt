;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |18115|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; extract1 : inventory -> inventory
;; to create an inventory from an-inv for all
;; those items that cost less than $1
(define (extract1 an-inv)
  (cond
    [(empty? an-inv) empty]
    [else (local ((define f (first an-inv))
                  (define er (extract1 (rest an-inv))))
            (cond
              [(<= (ir-price f) 1.00)
               (cons f er)]
              [else er]))]))