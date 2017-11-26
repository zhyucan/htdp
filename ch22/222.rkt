;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |222|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (filter1 rel-op alon t)
  (cond
    [(empty? alon) empty]
    [else (cond
            [(rel-op (car alon) t)
             (cons (car alon)
                   (filter1 rel-op (cdr alon) t))]
            [else
             (filter1 rel-op (cdr alon) t)])]))

(define (filter2 rel-op)
  (local ((define (abs-fun alon t)
            (cond
              ((empty? alon) empty)
              (else
               (cond
                 ((rel-op (car alon) t)
                  (cons (car alon)
                        (abs-fun (cdr alon) t)))
                 (else
                  (abs-fun (cdr alon) t)))))))
    abs-fun))

(filter2 <)

(local ((define (abs-fun alon t)
            (cond
              ((empty? alon) empty)
              (else
               (cond
                 ((< (car alon) t)
                  (cons (car alon)
                        (abs-fun (cdr alon) t)))
                 (else
                  (abs-fun (cdr alon) t)))))))
    abs-fun)

(define (abs-fun1 alon t)
            (cond
              ((empty? alon) empty)
              (else
               (cond
                 ((< (car alon) t)
                  (cons (car alon)
                        (abs-fun1 (cdr alon) t)))
                 (else
                  (abs-fun1 (cdr alon) t))))))
abs-fun1

(define below (filter2 <))

