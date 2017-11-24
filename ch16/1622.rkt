;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1622|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct dir (name content))

#|
a directory(short: dir) is a structure
(make-dir n c), n is a symbol, c is a list of files and dirs

a list-of-files-and-dirs(short: LOFD) is
1. empty
2. (cons f d), f is a file, d is a LOFD
3. (cons d1 d2), d1 is a dir, f2 is a LOFD
|#

;; how-many : dir -> number
;; 读入一个 dir,返回该 dir 树中的文件数

#|
(define (how-many dir)
  (cond
    ((empty? dir) ...)
    ((symbol? (car dir)) ... (how-many (cdr dir)) ...)
    (else ... (how-many (car dir)) ...
          ... (how-many (cdr dir)) ...)))
|#

(define (how-many a-dir)
  (how1 (dir-content a-dir)))

(define (how1 a-lofd)
  (cond
    ((empty? a-dir) 0)
    ((symbol? (car a-lofd)) (+ 1 (how1 (cdr a-dir))))
    (else (+ (how-many (car a-lofd))
             (how1 (cdr a-lofd))))))