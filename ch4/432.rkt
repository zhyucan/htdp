;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |432|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; (define n 500) : 0.04
;; (define n 2800) : 0.045
;; (define n 15000) : 0.06

(cond
  ((<= n 1000) 0.040)
  ((<= n 5000) 0.045)
  ((<= n 10000) 0.055)
  ((> n 10000) 0.060))