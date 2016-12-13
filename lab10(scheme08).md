<a href="https://urfu-mt-cs101.github.io/lab10.html">Задачи</a>

10.2
```
(non-negative? (list (list 1 2) (list 1 2)))
;#t
(non-negative? (list '(1 2) '(-1 -2)))
;#f
(non-negative? (list '(-1 -2) '(-1 -2)))
;#f
(non-negative? (list '(1 2) '(0 0)))
;#t
(non-negative? (list '(0 0) '(0 0)))
;#t
```
