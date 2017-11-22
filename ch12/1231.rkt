;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1231|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; draw-polygon : polygon -> true
;; to draw the polygon specified by a-poly

(define (draw-polygon a-poly)
  (connect-dots (add-at-end a-poly (car a-poly))))

;; connect-dots : polygon -> true
;; to draw connections between the dots of a-poly

(define (connect-dots a-poly)
  (cond
    [(empty? (rest a-poly)) true]
    [else (and (draw-solid-line (car a-poly) (second a-poly) RED)
               (connect-dots (cdr a-poly)))]))

;; add-at-end : polygon posn -> polygon
;; add the first posn to the end of a-poly 

(define (add-at-end a-poly a-posn) 
  (cond 
    [(empty? a-poly) (cons a-posn empty)] 
    [else (cons (car a-poly) (add-at-end (cdr a-poly) a-posn))]))