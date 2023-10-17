; excercise 1.3
; Define procedure that takes three numbers as arguments and returns
; the sum of the squares of the two larger numbers

;
(display (define x (sum-of-squares-of-two-largest-among-three 1, 2, 3)))(newline)

(define (sum-of-squares-of-two-largest-among-three a b c) (+ (square (find-largest-of-three a b c))
                                                             (square (find-second-largest a b c))))

(define (square x) (* x x))

(define (find-largest-of-three a b c)
        (cond ((and (> a b) (> a c)) a)
               ((and (> b a) (> b c)) b)
               (else c) ))

; errors
(define (find-second-largest a b c)
          (define largest-of-three (find-largest-of-three a b c)
          (cond ((= largest-of-three a) (find-largest-of-two b c))
                ((= largest-of-three b) (find-largest-of-two a c))
                (else (find-largest-of-two a b)))))

(display (define x (find-second-largest 1 2 3)))(newline)

(define (find-largest-of-two a b) (if (> a b) a b))

; на вход даны 3 числа - найти первое наибольшее +
; на вход даны 3 числа - найти второе наибольшее
