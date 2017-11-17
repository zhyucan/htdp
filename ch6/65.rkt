;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |65|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 处理复合数据的函数设计
;;
;; 数据定义
;; 合约
;; 模板
;; 函数定义
;; 测试

;; 数据定义
(define-struct student (last first teacher))
;; student 是结构体 (make-student l f t)，其中 f、l 和 t 是符号

;; 合约
;; subst-teacher : student symbol -> student
;; 给老师 Fritz 换名字

;; 模板
;; (define (process-student a-student a-teacher)
;; ... (student-last a-student) ...
;; ... (student-first a-student) ...
;; ... (student-teacher a-student) ...)

;; 函数定义
(define (subst-teacher a-student a-teacher)
  (cond
    ((symbol=? (student-teacher a-student) 'Fritz)
     (make-student (student-last a-student)
                   (student-first a-student)
                   a-teacher))
    (else a-student)))

;; 测试
(subst-teacher (make-student 'Find 'Matthew 'Fritz) 'Elise)
;; (make-student 'Find 'Matthew 'Elise)
(subst-teacher (make-student 'Find 'Matthew 'Amanda) 'Elise)
;; (make-student 'Find 'Matthew 'Amanda)