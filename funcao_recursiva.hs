-- Defina uma função recursiva elemNum :: Int-> [Int] -> Int que recebe um número inteiro x, 
-- e uma lista de inteiros xs e retorna o número de vezes que x aparece na lista xs (0.25 pontos).

-- Ex: elemNum 2 [1,2,3,4,2,5] = 2
-- Ex: elemNum 2 [] = 0
-- Ex: elemNum 3 [1..10] = 1


elemNum :: Int -> [Int] -> Int
elemNum _ [] = 0 
elemNum x (y:ys)
  | x == y    = 1 + elemNum x ys  
  | otherwise = elemNum x ys


-- Exemplo de recursão em lista do slide
-- soma dos elementos da lista

-- sum :: [Int] -> Int
-- sum [] = 0
-- sum (x:xs) = x + sum xs