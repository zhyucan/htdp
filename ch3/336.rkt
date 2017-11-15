;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |336|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (Fahrenheit->Celsius fah)
  (* (- fah 32) (/ 5 9)))

(define (Celsius->Fahrenheit cel)
  (+ 32 (* cel (/ 9 5))))

;; I : number -> number
;; 华摄华
;; (I 30) is 30 ; (I 100) is 100
(define (I f)
  (Celsius->Fahrenheit (Fahrenheit->Celsius f)))
;; (I 30)
;; (I 100)