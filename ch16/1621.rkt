;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1621|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
a file is a symbol

a directory(short: dir) is
1. empty
2. (cons f d), f is a file, d is a dir
3. (cons d1 d2), d1 and d2 are dirs
|#

;; how-many : dir -> number
;; 读入一个 dir，返回该 dir 树中的文件数

#|
(define (how-many dir)
  (cond
    ((empty? dir) ...)
    ((symbol? (car dir)) ... (how-many (cdr dir)) ...)
    (else ... (how-many (car dir)) ...
          ... (how-many (cdr dir)) ...)))
|#

(define (how-many a-dir)
  (cond
    ((empty? a-dir) 0)
    ((symbol? (car a-dir)) (+ 1 (how-many (cdr a-dir))))
    (else (+ (how-many (car a-dir))
             (how-many (cdr a-dir))))))

;Examples as Tests:
(check-expect (how-many empty) 0)
(check-expect (how-many (list 'read!)) 1)
(check-expect (how-many (list 'part1 'part2 'part3)) 3)
(check-expect (how-many (list (list 'part1 'part2 'part3) 
                              (list (list 'hang 'draw) 
                                    (list 'read!))
                              'read!))
              7)