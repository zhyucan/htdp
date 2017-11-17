;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |631|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct movie (title producer))
(define dream (make-movie 'dream 'earth))
(movie-title dream)
(movie-producer dream)

(define-struct boyfriend (name hair eyes phone))
(define huge (make-boyfriend 'huge 'black 'black 'iphone))
(boyfriend-name huge)
(boyfriend-hair huge)
(boyfriend-eyes huge)
(boyfriend-phone huge)

(define-struct cheerleader (name number))
(define xi (make-cheerleader 'xidd 60))
(cheerleader-name xi)
(cheerleader-number xi)

(define-struct CD (artist title price))
(define akb (make-CD 'aj 'pring 100))
(CD-artist akb)
(CD-title akb)
(CD-price akb)

(define-struct sweater (material size producer))
(define niao (make-sweater 'mao 100 'nike))
(sweater-material niao)
(sweater-size niao)
(sweater-producer niao)