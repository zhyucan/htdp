;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1631|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct file (name size content))

;; A file is a structure:
;;   (make-file n s x)
;; n is a symbol, s is a number, x is some Scheme value

;; A list-of-files is
;; 1. empty
;; 2 (cons s lof), s is a file, lof is a list of files

(define-struct dir (name dirs files))

;; A dir is a structure:
;;   (make-dir n ds fs)
;; n is a symbol, ds is a list of dirs, fs is a list of files

;; A list-of-directories is
;; 1. empty
;; 2. (cons s lod), s is a dir, lod is a list of dirs

;; files: 
(define hang (make-file 'hang 8 empty))
(define draw (make-file 'draw 2 empty))
(define read (make-file 'read! 19 empty))
(define one  (make-file 'part1 99 empty))
(define two  (make-file 'part2 52 empty))
(define thre (make-file 'part3 17 empty))
(define rdme (make-file 'read 10 empty))

;; directories: 
(define Code (make-dir 'Code '() (list hang draw)))
(define Docs (make-dir 'Docs '() (list read)))
(define Libs (make-dir 'Libs (list Code Docs) '()))
(define Text (make-dir 'Text '() (list one two thre)))
(define Top  (make-dir 'TS (list Text Libs) (list rdme)))