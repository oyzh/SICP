;;scip
;;1.15
(define count 0)
(define (cube x)
  (* x x x))
(define (p x)
  (+ count 1)
  (- (* 3 x) (* 4 (cube x))))
(define (sine x)
  (if (not (> (abs x) 0.1))
      x
      (p (sine (/ x 3.0)))))
