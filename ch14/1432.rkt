;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1432|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; a Web-page(short: WP) is
;; 1. empty
;; 2. (cons s wp), s is a symbol, wp is a Web page
;; 3. (cons ewp wp), ewp and wp are Web pages

;; occurs1 : WP symbol -> number
;; to count the number of the symbol that occur in a-wp

#|
(define (occurs1 a-wp sym)
  (cond
    ((empty? a-wp) ...)
    ((symbol? (car a-wp)) ... (car a-wp) ... (occurs1 (cdr a-wp) sym) ...)
    (else ... (occurs1 (car a-wp) sym) ... (occurs1 (cdr a-wp) sym) ...)))
|#

(define (occurs1 a-wp sym)
  (cond
    ((empty? a-wp) 0)
    ((symbol? (car a-wp))
     (cond
       ((eq? (car a-wp) sym) (+ 1 (occurs1 (cdr a-wp) sym)))
       (else (occurs1 (cdr a-wp) sym))))
    (else (occurs1 (cdr a-wp) sym))))

; occurs2: web-page symbol -> number
; to count the occurences of the given symbol in the given web page, including
; embedded web pages
(define (occurs2 a-wp sym)
  (cond
    ((empty? a-wp) 0)
    ((symbol? (car a-wp))
     (cond
       ((eq? (car a-wp) sym) (+ 1 (occurs2 (cdr a-wp) sym)))
       (else (occurs2 (cdr a-wp) sym))))
    (else (+ (occurs2 (car a-wp) sym) (occurs2 (cdr a-wp) sym)))))

;; examples
(= (occurs1 empty 'a) 0)
(= (occurs1 '(a b a) 'a) 2)
(= (occurs1 '((a b c) b (a a a) a) 'a) 1)

(= (occurs2 empty 'a) 0)
(= (occurs2 '(a b a) 'a) 2)
(= (occurs2 '((a b c) b (a a a) a) 'a) 5)


