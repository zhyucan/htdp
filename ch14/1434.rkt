;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1434|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; a Web-page(short: WP) is
;; 1. empty
;; 2. (cons s wp), s is a symbol, wp is a Web page
;; 3. (cons ewp wp), ewp and wp are Web pages

;; depth : WP -> number
;; compute depth

#|
(define (depth wp)
  (cond
    ((empty? wp) ...)
    ((symbol? (car wp)) ... (car wp) ... (depth (cdr wp)) ...)
    (else ... (depth (car wp)) ...
          ... (depth (cdr wp)) ...)))
|#

(define (depth wp)
  (cond
    ((empty? wp) 0)
    ((symbol? (car wp)) (depth (cdr wp)))
    (else (max (+ 1 (depth (car wp)))
               (depth (cdr wp))))))

;;; tests
(check-expect (depth '()) 0)
(check-expect (depth '(a)) 0)
(check-expect (depth '(())) 1)
(check-expect (depth '(a b c)) 0)
(check-expect (depth '(a (b (c (d))) e (f (g)) h))
              3)

