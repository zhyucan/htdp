;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |441|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; interest : number -> number
;; 给定存款额，计算年存款收益
(define (interest amount)
  (cond
    ((<= amount 1000) (* amount 0.040))
    ((<= amount 5000) (+ (* 1000 0.040) (* (- amount 1000) 0.045)))
    (else (+ (* 1000 0.040) (* 4000 0.045) (* (- amount 5000) 0.050)))))
(= (interest 1000) 40)
(= (interest 2800) 121)
(= (interest 15000) 720)