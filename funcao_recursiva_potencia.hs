-- 1 - Defina uma função recursiva power :: Int-> Int-> Int que recebe dois números inteiros, x e y, 
-- e eleva um número x a potência de y. 

power :: Int-> Int-> Int
power x 0 = 1
power x y = x * power x (y - 1)