;;simpson 
;;
(define (integral f a b n)
  (define h (/ (- b a) n))
  (define (sum f a k n h)
    (cond ((= k n) (f (+ a (* k h))))
	  ((= k 0) (+ (f (+ a (* k h)))
		      (sum f a (+ 1 k) n h)))
	  ((even? k) (+ (* (f (+ a (* k h)))
			 2)
		      (sum f a (+ 1 k) n h)))
	  (else (+ (* 4
		      (f (+ a (* k h))))
		   (sum f a (+ 1 k) n h)))))
  (* (/ h 3) (sum f a 0 n h)))
