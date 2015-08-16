(define (subsets s)
  (if (null? s)
      (list '());;important
      (let ((rest (subsets (cdr s))))
	(append rest (map (lambda (x) (cons (car s) x)) rest)))))

;;this is right when test in mit-scheme.
