;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1532|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Language: Beginning Student with List Abbreviations

;; Data Definitions

(define-struct wp (header body))
;; A Web-page (short: WP) is a structure:
;;   (make-wp h p) 
;; where h is a symbol and p is a (Web) document.

;; A (Web) document is either:
;; 1. empty
;; 2. (cons s p)  where s is a symbol and p is a (Web) document
;; 3. (cons wp p)  where wp is a web-page and p is a document

;; A list-of-symbols is either:
;; 1. empty
;; 2. (cons symbol list-of-symbols)

;; wp-to-file : WP -> list-of-symbols
(define (wp-to-file wp)
  (doc-to-file (wp-body wp)))

(define (doc-to-file doc)
  (cond
    [(empty? doc) empty]
    [(symbol? (car doc))
     (cons (car doc) (doc-to-file (cdr doc)))]
    [else
     (cons (wp-header (car doc))
           (doc-to-file (cdr doc)))]))

;; --- test code

;; data examples:
(define empty-page (make-wp 'empty-page empty))
(define page-1-word (make-wp 'page-1-word (cons 'w1 empty)))
(define page-2-words (make-wp 'page-2-words (list 'w1 'w2)))
(define with-1-word-subpage (make-wp 'page-1-word-with-subpage (cons page-1-word empty)))
(define with-2-words-subpage (make-wp 'with-2-words-subpage (cons page-2-words empty)))
(define dense-page1 (make-wp 'realistic (list 'w3  page-2-words 'w4 page-1-word 'w5)))
(define dense-page2 (make-wp 'realistic (list 'w3  empty-page 'w4 with-1-word-subpage 'w5)))

;; test cases

;; test for 'wp-to-file'
(equal? (wp-to-file empty-page) (list))
(equal? (wp-to-file page-1-word) (list 'w1))
(equal? (wp-to-file page-2-words) (list 'w1 'w2))
(equal? (wp-to-file with-1-word-subpage) (list 'page-1-word))
(equal? (wp-to-file with-2-words-subpage) (list 'page-2-words))
(equal? (wp-to-file dense-page1) (list 'w3 'page-2-words 'w4 'page-1-word 'w5))
(equal? (wp-to-file dense-page2) (list 'w3 'empty-page 'w4 'page-1-word-with-subpage 'w5))

;; --- end test code