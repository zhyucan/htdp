;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |652|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct time (hour minute second))
;; A time is a structure: (make-time h m s) where h, m, and s are symbols.

;; time->seconds : time -> number
;; give a time, return the seconds from midnight to time

;; (define (process-time a-time)
;; ... (time-hour a-time) ...
;; ... (time-minute a-time) ...
;; ... (time-second a-time) ...

(define (time->seconds a-time)
  (+ (time-second a-time)
     (* (time-minute a-time) 60)
     (* (time-hour a-time) 60 60)))

(time->seconds (make-time 12 30 2))
;; 45002