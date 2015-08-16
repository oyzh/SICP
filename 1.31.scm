(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))
(define (inc x) (+ 1 x))
(define (factorial x) x)
(product factorial 1 inc 10)
