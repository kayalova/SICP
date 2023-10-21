; scheme --quiet < main.scm
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(display (sqrt 2))(newline)
;---------------------------------------

; предикаты
(define (≥ x y)
	(or (> x y) (= x y)))

(define z 6)
(display (and (> z 5) (< z 10)))(newline)
;----------------------------------------

; условные выражения
(define (abs3 x)
  (if (< x 0)
      (- x)
      x)
)

(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x)
  )
)

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))
  )
)

(display (abs3 -5))(newline)
;----------------------------------------

; определение процедуры
(define (sum-of-squares x y)
  (+ (square x) (square y)))
(display (sum-of-squares 3 4))(newline)

(define (square x) (* x x))
(display (square 5))(newline)
(display (+ (square 12) (square 13)))(newline)
(define q 5)
(define w 2)
(display (+ (square q) (square w)))(newline)
;-------------------------------------------

(define a (* (+ 2 (* 4 6))
             (+ 3 5 7))
); 26 * 15 = 450;
(display a)(newline)

(define size 2)
(display size)(newline)

; чтобы облегчить чтение
(display (+ (* 3
               (+ (* 2 4)
                  (+ 3 5)))
            (+ (- 10 7)
                6))
)(newline); 9 + 48 = 57
