;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |632|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct movie (title producer))

(movie-title (make-movie 'ThePhantomMenace 'Lucas)) ;; 'ThePhantomMenace

(movie-producer (make-movie 'TheEmpireStrukesBack 'Lucas)) ;; 'Lucas

(movie-title (make-movie x y)) ;; x

(movie-producer (make-movie x y)) ;; y