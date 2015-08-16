(define (expt a n)
  (cond ((= n 0) 1)
	((even? n) (expt (square a) (/ n 2)))
	(else (* a (expt (square a) (/ (- n 1) 2))))))
(define (square x)
  (* x x))
;test
(expt 4 4)

(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (get-expt x a)
  (if (remainder x a)
      (+ 1 (get-expt (/ x a)))
      0))

(define (car x)
  (get-expt x 2))
(define (cdr x)
  (get-expt x 3))

;test
(car (cons 2 2))
(cdr (cons 2 2))
(car (cons 10 11))
(cdr (cons 10 12))
