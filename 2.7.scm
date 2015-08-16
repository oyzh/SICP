;2.7,2.8,2.10,2.11,2.12,2.13
(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
		 (+ (upper-bound x) (upper-bound y))))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
	(p2 (* (lower-bound x) (upper-bound y)))
	(p3 (* (upper-bound x) (lower-bound y)))
	(p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
		   (max p1 p2 p3 p4))))


(define (div-interval x y)
  (mul-interval x
		(make-interval (/ 1.0 (upper-bound y))
			       (/ 1.0 (lower-bound y)))))

(define (div-interval-1 x y)
  (if (and (<= (lower-bound x) 0)
	   (>= (upper-bound x) 0))
      #f
      (div-interval x y)))

(define (make-interval a b) (cons a b))

(define (upper-bound x)
  (max (car x) (cdr x)))
(define (lower-bound x)
  (min (car x) (cdr x)))

(define (sub-interval x y)
  (make-interval (- (upper-bound x) (lower-bound y))
		 (- (lower-bound x) (upper-bound y))))

(define (make-center-percent center percent)
  (let ((p (* center percent)))
    (make-interval (- center p) 
		   (+ center p))))

(define (percent x)
  (let ((center (/  (+ (lower-bound x) (upper-bound x)) 2)))
    (if (= 0 center)
	0
	(/ (- (upper-bound x) center) center))))

(define (mul-percent x y)
  (let ((p1 (percent x))
	(p2 (percent y)))
    (/ (+ p1 p2) (+ 1 (* p1 p2)))))

;2.13
(define (par1 r1 r2)
  (div-interval (mul-interval r1 r2)
		(add-interval r1 r2)))

(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
    (div-interval one
		  (add-interval (div-interval one r1)
				(div-interval one r2)))))
