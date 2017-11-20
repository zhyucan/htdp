;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1024|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; an contact is either:
;;   - empty, or
;;   - (cons contact-recode contact)

;; a contact-recode is a structure:
;;   (make-cr people phone)
;; where people is a symbol, phone is a number
(define-struct cr (phone people ))

#|
(define (fun-contact cont)
  (cond
    ((empty? cont) ...)
    (else (cr-people (car cont)) ...
          (cr-phone (car cont)) ...
          (fun-contact (cdr cont)))))
|#

(define (whose-number cont ph)
  (cond
    ((empty? cont) 'not-this-record)
    (else (cond
            ((= (cr-phone (car cont)) ph) (cr-people (car cont)))
            (else (whose-number (cdr cont) ph))))))

(define (phone-number cont pe)
  (cond
    ((empty? cont) 'not-this-record)
    (else (cond
            ((eq? (cr-people (car cont)) pe) (cr-phone (car cont)))
            (else (phone-number (cdr cont) pe))))))

;; examples
(whose-number empty 2029398100) "should be" 'not-this-record
(whose-number (cons (make-cr 2125551212 'ny-information) empty)
              2125551212)
"should be"
'not-this-record
(whose-number (cons (make-cr 2125551212 'ny-information)
                    (cons (make-cr 2025551212 'dc-information)
                          empty))
              2025551212)
"should be"
'dc-information

(phone-number empty 'san-fransisco-info) "should be" 'not-this-record
(phone-number (cons (make-cr 2125551212 'ny-information) empty)
              'ny-information)
"should be"
2125551212
(phone-number (cons (make-cr 2125551212 'ny-information)
                    (cons (make-cr 2025551212 'dc-information)
                          empty))
              'dc-information)
"should be"
2025551212