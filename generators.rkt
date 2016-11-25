#lang racket

(define (generator fgen init)
  (let ([x init])
    (lambda () (begin
                 (set! x (fgen x))
                 x))))

(define (new-counter n)
  (generator add1 n))

(define (aux-fib)
  (generator
   (lambda (p) (cons (+ (car p) (cdr p)) (car p)))
   (cons 1 1)))

(define (take n gen)
  (if (= n 0)
      '()
      (cons (gen) (take (- n 1) gen))))

(define (take-while cond gen)
  (let ([x (gen)])
    (if (cond x)
        (cons x (take-while cond gen))
        '())))

(define (map f gen)
  (let ([g gen]) (lambda () (f (g)))))

(define cnt1 (new-counter 0))

(take-while (lambda (x) (< x 10))
            (map (lambda (x) (* x x)) cnt1))

(take-while (lambda (p) (< (car p) 25000000000000)) (aux-fib))