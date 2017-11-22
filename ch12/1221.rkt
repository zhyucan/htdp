;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1221|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct mail (from date message))
;; mail-message is structure:
;; (make-mail name n s), name and s are string, n is number

;; sort-by-date : list-of-mail-messages -> list-of-mail-messages
;; 按照日期对邮件进行排序

#|
(define (sort-by-date lom)
  (cond
    ((empty? lom) ...)
    (else ... (car lom) ... (sort-by-date (cdr lom)) ...)))
|#

(define (sort-by-date lom)
  (cond
    ((empty? lom) empty)
    (else (insert-by-date (car lom) (sort-by-date (cdr lom))))))

;; insert-by-date : list-of-mail-messages number -> list-of-mail-messages
;; 把一封邮件插入已排好序的邮件列表中

#|
(define (insert-by-date lom md)
  (cond
    ((empty? lom) ...)
    (else ... (mail-from (car lom)) ...
              (mail-date (car lom)) ...
              (mail-message (car lom)) ...
              (insert-by-date (cdr lom) md) ...)))
|#

(define (inset-by-date lom md)
  (cond
    ((empty? lom) (cons md empty))
    (else (cond
            ((>= (mail-date md) (mail-date (car lom))) (cons md lom))
            (else (cons (car lom) (insert-by-date (cdr lom) md)))))))


(define (sort-by-message lom)
  (cond
    ((empty? lom) empty)
    (else (insert-by-message (car lom) (sort-by-message lom))

(define (inset-by-message lom mm)
  (cond
    ((empty? lom) (cons mm empty))
    (else (cond
            ((string<? (mail-date (car lom)) (mail-date mm)) (cons mm lom))
            (else (cons (car lom) (insert-by-message (cdr lom) mm)))))))          