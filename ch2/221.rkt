;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |221|) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (Fahrenheit->Celsius fah)
  (* (- fah 32) (/ 5 9)))

(convert-gui Fahrenheit->Celsius)

(convert-repl Fahrenheit->Celsius)

(convert-file "in.dat" Fahrenheit->Celsius "out.dat")