-- 4 - Defina a função palinDromo::String->Bool que recebe uma string a, e determina se a
-- mesma é palíndromo ou não (ou seja, ela lê da mesma maneira na ordem correta e reversa)
-- (0.5 pontos).

-- Ex: palinDromo “Bom Dia” = False
-- Ex :palinDromo “osso” = True
-- Ex: palinDromo “ “ = True
-- Ex: palinDromo “15651 ” = True




-- INFELIZMENTE NÃO CONSEGUI FAZER SEM O REVERSE

-- reverseList :: [a] -> [a]
-- reverseList [] = []
-- reverseList (x:xs) = reverseList xs ++ [x]

-- myList = [1, 2, 3, 4, 5]
-- reversed = reverseList myList

newReverse :: [Int]->[Int]
newReverse [] = []
newReverse [a] = [a] 
newReverse (x:xs) = ((newReverse xs)++[x])

palinDromo :: String -> Bool
palinDromo s = (s == (newReverse s))