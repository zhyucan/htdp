;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1433|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; a Web-page(short: WP) is
;; 1. empty
;; 2. (cons s wp), s is a symbol, wp is a Web page
;; 3. (cons ewp wp), ewp and wp are Web pages

;; replace : WP symbol symbol -> WP
;; replace old by new

#|
(define (replace new old wp)
  (cond
    ((empty? wp) ...)
    ((symbol? (car wp)) ... (car wp) ... (replace new old (cdr wp)) ...)
    (else ... (replace new old (car wp)) ...
          ... (replace new old (cdr wp)) ...)))
|#

(define (replace new old wp)
  (cond
    ((empty? wp) empty)
    ((symbol? (car wp))
     (cond
       ((eq? (car wp) old) (cons new (replace new old (cdr wp))))
       (else (cons (car wp) (replace new old (cdr wp))))))
    (else (cons (replace new old (car wp))
                (replace new old (cdr wp))))))

;; examples
(equal? (replace 'new 'old empty) empty)
(equal? (replace 'new 'old '(other)) (list 'other))
(equal? (replace 'new 'old '(old)) (list 'new))
(equal? (replace 'new 'old '((new old other) other old old))
        (list (list 'new 'new 'other) 'other 'new 'new))