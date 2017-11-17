;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 632e) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct star (last first instrument sales))

;; increment-sales : star -> star
;; star 销量 up 20000
(define (increment-sales a-star)
  (make-star (star-last a-star)
             (star-first a-star)
             (star-instrument a-star)
             (+ (star-sales a-star) 20000)))
(increment-sales (make-star 'Abba 'John 'vocals 12200))
;; (make-star 'Abba 'John 'vocals 32200)