;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |153|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct wp (header body))

#|
a Web-page(short: WP) is a structure
(make-wp h p), h is a symbol, p is a Web document

a Web document is
1. empty
2. (cnos s p), s is a symbol, p is a document
3. (Cons w p), w is a Web page, p is a document
|#

;; size-wp : wp -> number
;; determines the number of words in a web page
(define (size a-wp)
  (size-document (wp-body a-wp)))

;; size-document : web-document -> number
;; determines the number of words in a web document
(define (size-document a-wd)
  (cond
    [(empty? a-wd) 0]
    [(symbol? (car a-wd)) (+ 1 (size-document (cdr a-wd)))]
    [(wp? (car a-wd)) (size-document (cdr a-wd))]))

;; EXAMPLE WEB PAGES
(define dogs-wp
  (make-wp 'dogs-wp 
           (list 'my 'dogs 'web 'page)))

(define cats-wp
  (make-wp 'cats-wp
           (list 'my 'cats 'web 'page)))

(define my-wp
  (make-wp 'my-wp
           (list 'see 'my 'dog dogs-wp
                 'see 'my 'cat cats-wp)))

(size dogs-wp) "should be" 4
(size cats-wp) "should be" 4
(size my-wp) "should be" 6