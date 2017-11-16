;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |515|) (read-case-sensitive #t) (teachpacks ((lib "master.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "master.rkt" "teachpack" "htdp")) #f)))
;; check-color : symbol symbol symbol symbol -> symbol
;; 猜两种颜色
(define (check-color g1 g2 c1 c2)
  (cond
    ((and (symbol=? g1 c1) (symbol=? g2 c2)) 'Perfect)
    ((or (symbol=? g1 c1) (symbol=? g2 c2)) 'OneColorAtCorrectPosition)
    ((or (symbol=? g1 c2) (symbol=? g2 c1)) 'OneColorOccurs)
    (else 'NothingCorrect)))
(symbol=? (check-color 'red 'blue 'black 'red) 'OneColorOccurs)
(symbol=? (check-color 'black 'red 'black 'red) 'Perfect)
(symbol=? (check-color 'black 'white 'black 'red) 'OneColorAtCorrectPosition)
(symbol=? (check-color 'white 'blue 'black 'red) 'NothingCorrect)

(master check-color)