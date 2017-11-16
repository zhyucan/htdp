;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |511|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; reply : symbol -> symbol
;; 对问候语做出回应
(define (reply s)
  (cond
    ((symbol=? s 'GoodMorning) 'Hi)
    ((symbol=? s 'HowAreYou?) 'Fine)
    ((symbol=? s 'GoodAfternoon) 'INeedANap)
    ((symbol=? s 'GoodEvening) 'BoyAmITired)))
(symbol=? (reply 'HowAreYou?) 'Fine)