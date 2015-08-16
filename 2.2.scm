(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

(define (make-segment p1 p2)
  (cons p1 p2))

(define (start-segment seg)
  (car seg))

(define (end-segment seg)
  (cdr seg))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display "£¬")
  (display (y-point p))
  (display ")"))


(define (midpoint-segment seg)
  (make-point
   (/ (+ (x-point (start-segment seg)) 
	 (x-point (end-segment seg)))
      2.0)
   (/ (+ (y-point (start-segment seg))
	 (y-point (end-segment seg)))
      2.0)))

;;test

(midpoint-segment (make-segment (make-point 1 2) (make-point 2 5)))
