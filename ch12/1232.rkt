;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1232|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; draw-polygon : polygon -> true
;; to draw the polygon specified by a-poly

(define (draw-polygon a-poly) 
  (connect-dots a-poly (car a-poly)))

;; connect-dots : polygon -> true
;; to draw connections between the dots of a-poly

(define (connect-dots a-poly a-posn) 
  (cond 
    [(empty? (cdr a-poly)) 
     (draw-solid-line (car a-poly) a-posn 'red)] 
    [else (and (draw-solid-line (car a-poly) (second a-poly) 'red)
               (connect-dots (cdr a-poly) a-posn))]))

;; EXAMPLES AS TESTS
(start 200 200)

(define example-polygon
  (cons
   (make-posn 10 10)
   (cons
    (make-posn 90 100)
    (cons
     (make-posn 10 190)
     (cons
      (make-posn 190 190)
      (cons
       (make-posn 110 100)
       (cons
        (make-posn 190 10)
        empty)))))))

(draw-polygon example-polygon)