;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1019|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; controller : number -> loc
;; The function consumes a number and produces a list
;; with the following 5 items:
;; the dollar amount;
;; the symbol 'dollar if the dollar amount is 1 and 'dollars otherwise;
;; the symbol 'and;
;; the cent amount; and
;; the symbol 'cent if the cent amount is 1 and 'cents otherwise.
(define (controller cents)
  (combine (one-amount (quotient cents 100) 'dollar 'dollars)
           (one-amount (modulo cents 100) 'cent 'cents)))

(define (combine dollar-words cents-words)
  (cond
    [(empty? dollar-words) cents-words]
    [(empty? cents-words) dollar-words]
    [else (append dollar-words (list 'and) cents-words)]))

(define (one-amount n singular-form plural-form)
  (cond
    [(= n 0) empty]
    [(= n 1) (list 1 singular-form)]
    [else (list n plural-form)]))

;; Testcases
(check-expect (one-amount 0 'cent 'cents) empty)
(check-expect (one-amount 1 'cent 'cents) (list 1 'cent))
(check-expect (one-amount 2 'cent 'cents) (list 2 'cents))

(check-expect (controller   0)  (list))
(check-expect (controller   1)  (list 1 'cent))
(check-expect (controller   50) (list 50 'cents))
(check-expect (controller  100) (list 1 'dollar))
(check-expect (controller  101) (list 1 'dollar 'and 1 'cent))
(check-expect (controller  103) (list 1 'dollar 'and 3 'cents))
(check-expect (controller 1101) (list 11 'dollars 'and 1 'cent))
(check-expect (controller 1102) (list 11 'dollars 'and 2 'cents))