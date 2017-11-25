;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |191|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (filter1 rel-op alon t)
  (cond
    [(empty? alon) empty]
    [else (cond
            [(rel-op (car alon) t)
             (cons (car alon)
                   (filter1 rel-op (cdr alon) t))]
            [else
             (filter1 rel-op (cdr alon) t)])]))

(define (filter predicate alon)
  (cond
    [(empty? alon) empty]
    [else (cond
            [(predicate (first alon))
             (cons (first alon)
                   (filter predicate (rest alon)))]
            [else
             (filter predicate (rest alon))])]))

(define (filter1 rel-op alon t)
  (cond
    [(empty? alon) empty]
    [(rel-op (car alon) t)
     (cons (car alon)
           (filter1 rel-op (cdr alon) t))]
    [else
     (filter1 rel-op (cdr alon) t)]))

(define (filter1 rel-op alon t)
  (cond
    [(empty? alon) empty]
    [else
     (local ((define first-item (car alon))
             (define rest-filtered (filter1 rel-op (cdr alon) t)))
       (cond
         [(rel-op first-item t)
          (cons first-item rest-filtered)]
         [else rest-filtered]))]))
