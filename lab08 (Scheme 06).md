### Блок №8 (Scheme 06)

1. Напишите функцию, которая подсчитывает количество разных элементов в заданном списке:
  ```
  (count-unique '())
  ; 0
  (count-unique '(1))
  ; 1
  (count-unique '(1 1))
  ; 1
  (count-unique '(1 2))
  ; 2
  (count-unique '(6 7 8))
  ; 3
  (count-unique (list 6 (1 . 2) (list 1)))
  ; 3
  ``` 
