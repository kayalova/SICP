(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (begin
        (display guess) ; display the intermediate guess values
        (newline)
        (sqrt-iter (improve guess x) x)
      )
  )
)

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(display (sqrt 123456789876543210101010101))(newline)

; If I understand these things right

; we use floating point instead of fixed point so we can hold very large and small numbers
; because of its convenient form of record
; 600 000 000 000 000 = 6 x 10^15
; 0.000 000 000 03 = 0.3 х 10^(-10)

; these numbers can be shown with a mantissa and an exponent.
; For 32 bits mantissa is given 23 bits and exponent is given 8 bits and the remaining bit is for sign
; A Mantissa holds the main digits and the exponent defines where the decimal point should be placed
; so there are limits for integer and fractional parts of a number

; when sqrt procedure takes too large number its guess refinement starts needing more significants for greater precision
; as for very small numbers we need greater precision than 0.001