;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |433|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; (define n 500) : 40
;; (define n 2800) : 121
;; (define n 15000) : 495

(cond
  ((<= n 1000) (* 0.040 1000))
  ((<= n 5000) (+ (* 1000 0.040) (* (- n 1000) 0.045)))
  (else (+ (* 1000 0.040) (* 4000 0.045) (* (- n 10000) 0.055))))