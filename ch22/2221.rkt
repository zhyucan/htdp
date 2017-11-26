;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |2221|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; convertCF : lon  ->  lon
(define (convertCF alon)
  (cond
    [(empty? alon) empty]
    [else
      (cons (C->F (first alon))
	(convertCF (rest alon)))]))

;; names : loIR  ->  los
(define (names aloIR)
  (cond
    [(empty? aloIR) empty]
    [else
      (cons (IR-name (first aloIR))
	(names (rest aloIR)))]))

(define (map f lon)
  (cond
    [(empty? lon) empty]
    [else (cons (f (first lon))
                (map f (rest lon)))]))

(define (map1 f)
  (local ((define (run alon)
            (cond
              ((empty? alon) empty)
              (else (cons (f (car alon))
                          (run (cdr alon)))))))
    run))

(define convertCF (map1 C->F))
(define names (map1 IR-name))
