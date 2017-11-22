;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1311|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(list 0 1 2 3 4 5) 
"should be"
(cons 0 (cons 1 (cons 2 (cons 3 (cons 4 (cons 5 empty))))))

(list (list 'adam 0) (list 'eve 1) (list 'louisXIV 2))
"should be"
(cons (cons 'adam (cons 0 empty))
      (cons (cons 'eve (cons 1 empty))
            (cons (cons 'louisXIV (cons 2 empty)) empty)))

(list 1 (list 1 2) (list 1 2 3))
"should be"
(cons 1
      (cons (cons 1 (cons 2 empty))
            (cons (cons 1 (cons 2 (cons 3 empty))) empty)))


