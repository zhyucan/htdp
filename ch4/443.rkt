;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |443|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; pay-back : number -> number
;; 消费额 -> 奖励金
(define (pay-back pay)
  (cond
    ((<= pay 500) (* pay 0.0025))
    ((<= pay 1500) (+ (* 500 0.0025)
                      (* (- pay 500) 0.0050)))
    ((<= pay 2500) (+ (* 500 0.0025)
                      (* 1000 0.0050)
                      (* (- pay 1500) 0.0075)))
    (else (+ (* 500 0.0025)
             (* 1000 0.0050)
             (* 1000 0.0075)
             (* (- pay 2500) 0.0100)))))
(= (pay-back 400) 1)
(= (pay-back 1400) 5.75)
(= (pay-back 2000) 10)
(= (pay-back 2600) 14.75)