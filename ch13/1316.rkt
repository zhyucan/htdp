;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |1316|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
'(1 a 2 b 3 c)
"should be"
(list 1 'a 2 'b 3 'c)

'((alan 1000)
  (barb 2000)
  (carl 1500)
  (dawn 2300))
"should be"
(list (list 'alan 1000)
      (list 'barb 2000)
      (list 'carl 1500)
      (list 'dawn 2300))

'((My First Paper)
   (Sean Fisler)
   (Section 1
     (Subsection 1 Life is difficult)
     (Subsection 2 But learning things makes it interesting))
   (Section 2
     Conclusion? What conclusion?))
"should be"
(list (list 'My 'First 'Paper)
      (list 'Sean 'Fisler)
      (list 'Section 1
            (list 'Subsection 1 'Life 'is 'difficult)
            (list 'Subsection 2 'But 'learning 'things 'makes 'it 'interesting))
      (list 'Section 2
            (list 'Conclusion? 'What 'conclusion?)))