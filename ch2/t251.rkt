;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname t251) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; 设计程序四步走
;; 合约 -- 程序名 : 输入数据类型 -> 输出数据类型
;; 目的 -- 程序要完成任务的简短注释
;; 例子 -- 构造输入确定输出，测试错误，思考程序，说明用途
;; 定义 -- 使用基本操作和已定义或即将定义的函数，从参数计算出结果
;; 测试 -- 揭示语法错误，运行问题，逻辑错误

;; e.g.

;; Contract: area-of-ring : number number -> number

;; Purpose: to compute the area of a ring whose radius is outer and whose hole has a radius of inner

;; Example: (area-of-ring 5 3) should produce 50.24

;; Definition: [refines the header]
(define (area-of-ring outer inner)
  (- (area-of-disk outer)
     (area-of-disk inner)))

;; Tests:
(area-of-ring 5 3)
;; expected value
50.24

