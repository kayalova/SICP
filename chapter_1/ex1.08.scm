(define (cube-root-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (cube-root-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- guess x)) 0.001))

(define (improve guess x)
  (/
     (+
       (/ x (square guess))
       (* 2 guess))
     3))

(define (square x) (* x x))

(define (cube-root x)
  (cube-root-iter 1.0 x))

(display (cube-root 27))(newline)