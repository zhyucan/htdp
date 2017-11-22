;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1314|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(list (symbol=? 'a 'b) (symbol=? 'c 'c) false)
"should be"
(list false true false)
"should be"
(cons false (cons true (cons false empty)))

(list (+ 10 20) (* 10 20) (/ 10 20))
"should be"
(list 30 200 0.5)
"should be"
(cons 30 (cons 200 (cons 0.5 empty)))

(list 'dana 'jane 'mary 'laura)
"should be"
(cons 'dana (cons 'jane (cons 'mary (cons 'laura empty))))

