(define (make-mobile left right)
  (list left right))
(define (make-branch length structure)
  (list length structure))
;;a
(define (left-branch mobile)
  (car mobile))
(define (right-branch mobile)
  (car (cdr mobile)))
(define (branch-length branch)
  (car branch))
(define (branch-structure branch)
  (car (cdr branch)))

;;b
(define (total-weight mobile)
  ())
