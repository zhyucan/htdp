;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |431|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(cond
  ((< n 10) 20)
  ((> n 20) 0)
  (else 1))

(cond
  ((< n 10) 20)
  ((and (> n 20) (<= n 30)))  ;; ?
  (else 1))

(cond
  ((< n 10) 20)
  (* 10 n)     ;; ?
  (else 555))
