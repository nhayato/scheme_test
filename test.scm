(define (list? obj)
  (or (null? obj)
      (and (pair? obj) (list? (cdr obj)))))
(define (sum-of-numbers lis)
  (fold + 0 lis))

#|
(define (max-number lis) 
  (define (pick-greater a b)
    (if (> a b) a b))
  (fold pick-greater -inf.0 lis))

|#

(define (max-number lis)
  (define (pick-greater a b)
    (if (> a b) a b))
  (if (null? lis)
      (error "max-number needs at least one number")
      (fold pick-greater (car lis) (cdr lis))))
#|
(define (length lis)
  (define (increment2 a b) (+ b 1))
    (fold increment2 0 lis))
|#

(define (print-elements lis)
  (define (print-one-element a b) (print a))
  (fold print-one-element #f lis))

(define (fold proc init lis)
  (if (null? lis)
      init
      (fold proc (proc (car lis) init) #?=(cdr lis))))
