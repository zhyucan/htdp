;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |281|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define Graph
  '((A (B E))
    (B (E F))
    (E (C F))
    (C (D))
    (F (D G))
    (D ())
    (G ())))

;; find-route : node node graph -> (listof node) or false
;; to create a path from origination to destination in G
;; if there is no path, the function produces false
(define (find-route origination destination G)
  (cond
    [(symbol=? origination destination) (list destination)]
    [else (local ((define possible-route
                    (find-route/list (neighbors origination G) destination G)))
            (cond
              [(boolean? possible-route) false]
              [else (cons origination possible-route)]))]))

;; find-route/list : (listof node) node graph -> (listof node) or false
;; to create a path from some node on lo-Os to D
;; if there is no path, the function produces false
(define (find-route/list lo-Os D G)
  (cond
    [(empty? lo-Os) false]
    [else (local ((define possible-route (find-route (first lo-Os) D G)))
            (cond
              [(boolean? possible-route) (find-route/list (rest lo-Os) D G)]
              [else possible-route]))]))

;; examples
(find-route 'C 'D Graph) ; (list 'C 'D)

(find-route 'E 'D Graph) ; (list 'E 'C 'D)

(find-route 'C 'G Graph) ; false