(define (cons1 x y)
  (lambda (m) (m x y)))
(define (car1 z)
  (z (lambda (p q) p)))

;test
(car1 (cons 1 2))

(define (cdr1 z)
  (z (lambda (p q) q)))

;test
(cdr1 (cons 1 2))
