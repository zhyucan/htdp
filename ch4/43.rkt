;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |43|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; interest-rate : number -> number
;; 由存款额算利率
(define (interest-rate amount)
  (cond
    ((<= amount 1000) 0.040)
    ((<= amount 5000) 0.045)
    (else 0.050)))
(= (interest-rate 1000) 0.040)
(= (interest-rate 5000) 0.045)
(= (interest-rate 8000) 0.050)