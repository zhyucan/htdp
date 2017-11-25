;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1781|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; web=? : web-page web-page -> boolean
;; to determine whether a-wp and another-wp have the same tree shape
;; and contain the same symbols in the same order

#|
A Web-page (short: WP) is either
1. empty;
2. (cons s wp)
where s is a symbol and wp is a Web page; or
3. (cons ewp wp)
where both ewp and wp are Web pages.
|#

#|
(define (web=? a-wp another-wp)
  (cond
    [(empty? a-wp) ...]
    [(symbol? (first a-wp))
     ... (car a-wp) ... (cdr another-wp) ...
     ... (web=? (cdr a-wp) (cdr another-wp)) ...]
    [else
     ... (web=? (car a-wp) (car another-wp)) ...
     ... (web=? (cdr a-wp) (cdr another-wp)) ...]))
|#

(define (web=? a-wp another-wp)
  (cond
    [(empty? a-wp) (empty? another-wp)]
    [(symbol? (first a-wp))
     (and (and (cons? another-wp) (symbol? (first another-wp)))
          (and (symbol=? (first a-wp) (first another-wp))
               (web=? (rest a-wp) (rest another-wp))))]
    [else
     (and (and (cons? another-wp) (list? (first another-wp)))
          (and (web=? (first a-wp) (first another-wp))
               (web=? (rest a-wp) (rest another-wp))))]))
