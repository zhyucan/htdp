;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |331|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define INCHCM 2.54)
(define FOOTIN 12)
(define YARDFT 3)
(define RODYD 5.5)
(define FURLONGRD 40)
(define MILEFL 8)

;; inches->cm : number -> number
;; 英寸转厘米
;; (inches->cm 1) is 2.54 ; (inches->cm 5) is 12.7 ; (inches->cm 10) is 25.4
(define (inches->cm inch)
  (* inch INCHCM))
;; (inches->cm 1)
;; (inches->cm 5)
;; (inches->cm 10)

;; feet->inches : number -> number
;; 英尺转英寸
;; (feet->inches 1) is 12 ; (feet->inches 5) is 60 ; (feet-inches 10) is 120
(define (feet->inches foot)
  (* foot FOOTIN))
;; (feet->inches 1)
;; (feet->inches 5)
;; (feet->inches 10)

;; yards->feet : number -> number
;; 码转英尺
;; (yards->feet 1) is 3 ; (yards->feet 5) is 15 ; (yards->feet 10) is 30
(define (yards->feet yard)
  (* yard YARDFT))
;; (yards->feet 1)
;; (yards->feet 5)
;; (yards->feet 10)

;; rods->yards : number -> number
;; rod转码
;; (rods->yards 1) is 5.5 ; (rods->yards 5) is 27.5 ; (rods->yards 10) is 55
(define (rods->yards rod)
  (* rod RODYD))
;; (rods->yards 1)
;; (rods->yards 5)
;; (rods->yards 10)

;; furlongs->rods : number -> number
;; 浪转rod
;; (furlongs->robs 1) is 40 ; (furlongs->robs 5) is 200 ; (furlongs->robs 10) is 400
(define (furlongs->robs furlong)
  (* furlong FURLONGRD))
;; (furlongs->robs 1)
;; (furlongs->robs 5)
;; (furlongs->robs 10)

;; miles->furlongs : number -> number
;; 英里转浪
;; (miles->furlongs 1) is 8 ; (miles->furlongs 5) is 40 ; (miles->furlongs 10) is 80
(define (miles->furlongs mile)
  (* mile MILEFL))
;; (miles->furlongs 1)
;; (miles->furlongs 5)
;; (miles->furlongs 10)

;; feet->cm : number -> number
;; 英寸转厘米
;; (feet->cm 1) is 30.48 ; (feet->cm 5) is 152.4 ; (feet-cm 10) is 304.8
(define (feet->cm feet)
  (inches->cm (feet->inches feet)))
;; (feet->cm 1)
;; (feet->cm 5)
;; (feet->cm 10)

;; yards->cm : number -> number
;; 码转厘米
;; (yards->cm 1) is 91.44 ; (feet->cm 5) is 457.2 ; (yards->cm 10) is 914.4
(define (yards->cm yard)
  (feet->cm (yards->feet yard)))
;; (yards->cm 1)
;; (yards->cm 5)
;; (yards->cm 10)

;; rods->inches : number -> number
;; rod转英寸
;; (rods->inches 1) is 198 ; (rods->inches 5) is 990 ; (rods->inches 10) is 1980
(define (rods->inches rod)
  (feet->inches (yards->feet (rods->yards rod))))
;; (rods->inches 1)
;; (rods->inches 5)
;; (rods->inches 10)

;; miles->feet : number -> number
;; 英里转英尺
;; (miles->feet 1) is 5280 ; (miles->feet 5) is 26400 ; (miles->feet 10) is 52800
(define (miles->feet mile)
  (yards->feet (rods->yards (furlongs->robs (miles->furlongs mile)))))
;; (miles->feet 1)
;; (miles->feet 5)
;; (miles->feet 10)

