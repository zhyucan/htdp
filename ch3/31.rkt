;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |31|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 辅助函数原则
;; 对每种依赖关系都写一个辅助函数

;; 先分析依赖关系
;; 1. 收益是收入和支出之差
;; 2. 收入是票价乘观众数
;; 3. 支出是固定支出 180 加依赖于观众数的可变支出
;; 4. 观众数由票价决定

;; 来写 4 个函数喏

;; revenue : number -> number
;; 给定票价，计算收入
;; (define (revenue ticket-price) ...)
;; (revenue 3) is 1260 ; (revenue 4) is 1080 ; (revenue 5) is 600
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

;; cost : number -> number
;; 给定票价，计算支出
;; (define (cost ticket-price) ...)
;; (cost 3) is 196.8 ; (cost 4) is 190.8 ; (cost 5) is 184.8
(define (cost ticket-price)
  (+ 180 (* 0.04 (attendees ticket-price))))

;; attendees : number -> number
;; 给定票价，计算观众数
;; (define (attendees ticket-price) ...)
;; (attendees 3) is 420 ; (attendees 4) is 270 ; (attendees 5) is 120
(define (attendees ticket-price)
  (+ 120 (* (- 5 ticket-price) 10 15)))

;; profit : number -> number
;; 给定票价，收益是收入和支出之差
;; (define (profit ticket-price) ...)
;; (profit 3) is 1063.2 ; (profit 4) is 889.2 ; (profit 5) is 415.2
(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))
(profit 1)
(profit 2)
(profit 3)
(profit 4)
(profit 5)