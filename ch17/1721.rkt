;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1721|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct employee (name ssn payRate))
(define-struct work-record (name hours))
(define-struct weekly-pay (name pay))

#|
an employee is a structure:
     (make-employee n s p)
where n and s are symbols and p is a number

a list-of-employees is either
  1. empty or
  2. (cons e loe)
  where e is an employee and loe is a list-of-employees
|#

#|
a work-record is a structure:
     (make-work-record n h)
where n is a symbol and h is a number

a list-of-work-records is either
  1. empty or
  2. (cons w low)
  where w is a work-record and low is a list-of-work-records
|#

#|
a weekly-pay is a structure:
     (make-weekly-pay n w)
where n is a symbol and w is a number

a list-of-weekly-pay is either
  1. empty or
  2. (cons wp lowp)
  where wp is a weekly-pay and lowp is a list-of-weekly-pay
|#

#|
;Template:
(define (hours->wages aloe alow)
  (cond
    [(empty? aloe) ...]
    [else
     ...(calc-weekly-pay (car aloe) (car alow))...
     ...(hours->wages (cdr aloe) (cdr alow))... ]))
|#

;;hours->wages : list-of-employees list-of-work-records ->  list-of-weekly-pay
;;to construct a new list-of-weekly-pay  by 
;;multiplying employee's pay rate by the 
;;corresponding hours in the list-of-work-records
;;ASSUMPTION: the two lists are of equal length 
;;ASSUMPTION: the two lists are in the same order so 
;;that the nth member of the first list has the same 
;;name as the nth element of the second list.

(define (hours->wages aloe alow)
  (cond
    ((empty? aloe) empty)
    (else (cons (calc-weekly-pay (car aloe) (car alow))
                (hours->wages (cdr aloe) (cdr alow))))))

#| We need a helper function that calculates weekly pay
------------------------------------------------------------
;Template
(define (calc-weekly-pay a-employee a-work-record)
     ... (employee-name a-employee) ... 
     ... (employee-ssn a-employee) ...
     ... (employee-payRate a-employee) ...
     ... (work-record-name a-work-record) ...
     ... (work-record-hours a-work-record) ...)
|#
;; employee->weekly-pay : employee work-record -> weekly-pay
;;consumes an employee and a work-record and produces the 
;;weekly-pay based on that data
(define (calc-weekly-pay a-employee a-work-record)
  (make-weekly-pay
   (employee-name a-employee) 
   (* (employee-payRate a-employee) 
      (work-record-hours a-work-record))))