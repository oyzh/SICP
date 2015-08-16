;;fast mult
;;1.17
(define (fast-mult a b)
  (cond ((= b 1) a)
	((even? b) (fast-mult (double a) (halve b)))
	(else (+ a (fast-mult (double a) (halve (- b 1)))))))

(define (double x)
  (+ x x))
(define (halve x)
  (/ x 2))

(define (fast-mult-new a b c)
  (cond ((= b 1) (+ a c))
	((even? b) (fast-mult-new (double a) (halve b) c))
	(else (fast-mult-new (double a) (halve (- b 1)) (+ c a)))))
