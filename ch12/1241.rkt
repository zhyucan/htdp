;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1241|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
   Data Definitions:
    A word is either
      * empty
      * (cons S W) where S is a (letter) symbol and W is a word. 

    A list-of-words is either
      * empty
      * (cons W L) where W is a word and L is a list-of-words.

    Examples:
      empty is a word
      (list 'b) is a word
      (list 'a 'b) is a word
      (list 'b 'a) is a word
     
      empty is a list of words
      (list (list 'a 'b)) is a list of words
      (list (list 'a 'b) (list 'b 'a)) is a list of words
|#