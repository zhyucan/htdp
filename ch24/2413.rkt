;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |2413|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
((lambda (x y) (+ x (* x y))) 1 2) ; 3

((lambda (x y)
   (+ x (local ((define x (* y y)))
                      (+ (* 3 x) (/ 1 x)))))
 1 2) ; (+ 1 (+ (* 3 4) (/ 1 4))) = 13.25

((lambda (x y)
   (+ x ((lambda (x) (+ (* 3 x) (/ 1 x)))
         (* y y))))
 1 2) ; (+ 1 (+ (* 3 4) (/ 1 4))) = 13.25