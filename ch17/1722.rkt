;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1722|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct phone-record (name number))
#|
a list-of-names is either
  1. empty or
  2. (cons n lon)
  where n is a name and lon is a list-of-names

a list-of-phone-numbers is either
  1. empty or
  2. (cons pn lopn)
  where pn is a phone-number and lopn is a list-of-phone-numbers

a phone-record is a structure:
     (make-phone-record n pn)
where n is a symbol and pn is a number

a list-of-phone-records is either
  1. empty or
  2. (cons pr lopr)
  where pr is a phone-record and 
        lopr is a list-of-phone-records
|#

#|
;Template:
(define (zip names numbers)
  (cond
    [(empty? names) ...]
    [else ...(first names)...(first numbers)...
          ...(zip (rest names) (rest numbers))...]))
|#

;;zip: list-of-names list-of-phone-numbers 
;;    -> list-of-phone-records
;;consumes a list of names and a list of phone numbers and 
;;combines them into a list-of-phone-records
;;ASSUMPTION: the two lists are of equal length and 
;;in the same order

(define (zip names numbers)
  (cond
    [(empty? names) empty]
    [else (cons (make-phone-record (car names) (cdr numbers))
                (zip (car names) (cdr numbers)))]))

;Examples as Tests:
(check-expect 
 (zip empty empty)
 empty)

(check-expect
 (zip (list 'john) (list 8739287))
 (list (make-phone-record 'john 8739287)))

(check-expect
 (zip (list 'john 'mary 'carol) 
      (list 8739287 4569354 4159654))
 (list (make-phone-record 'john 8739287)
       (make-phone-record 'mary 4569354)
       (make-phone-record 'carol 4159654)))