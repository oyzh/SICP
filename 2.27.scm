(define (deep-reverse ls)
  (if (not (pair? ls))
      ls
      (append (cdr ls)
	      (list (car ls)))))
