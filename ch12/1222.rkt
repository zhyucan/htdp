;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1222|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; search-sorted : number list-of-numbers -> boolean
;; 判断一个数是否在一个有序表中出现

(define (search-sorted n alon)
  (cond
    ((empty? alon) false)
    (else (cond
            ((= n (car alon)) true)
            ((< n (car alon)) false)
            ((> n (car alon)) (search-sorted n (cdr alon)))))))

;; EXAMPLES AS TESTS
(search-sorted 0 empty) "should be" false

(search-sorted 2 (cons 1 (cons 2 (cons 3 (cons 4 empty)))))
"should be" true

(search-sorted 2 (cons 1 (cons 3 (cons 4 empty))))
"should be" false