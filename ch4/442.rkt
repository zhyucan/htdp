;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |442|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; tax : number -> number
;; 毛收入 -> 税款
(define (tax income)
  (cond
    ((<= income 240) 0)
    ((<= income 480) (* (- income 240) 0.15))
    (else (+ (* 240 0.15) (* (- income 480) 0.28)))))
;; (= (tax 240) 0)
;; (= (tax 480) 36)
;; (= (tax 500) 41.6)

;; income : number -> number
;; 工作时长 -> 毛收入
(define (income time)
  (* time 12))
;; (= (income 40) 480)

;; tax1 : number -> number
;; 工作时长 -> 税款
(define (tax1 time)
  (tax (income time)))
;; (= (tax1 40) 36)

;; netpay : number -> number
;; 工作时长 -> 净收入
(define (netpay time)
  (- (income time) (tax1 time)))
;; (= (netpay 40) 444)
