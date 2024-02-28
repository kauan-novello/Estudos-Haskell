-- 3 - Defina uma função recursiva digits ::String -> String que recebe uma string a e filtra os
-- dígitos, ou seja, remove qualquer caractere que não seja dígito (0.5 pontos)

-- Ex: digits “a1b23c” = “123”
-- Ex : digits “Bom dia” = “ ”
-- Ex: digits “26810” = “26810”

digits :: String -> String
digits [] = []
digits (x:xs)
  | x >= '0' && x <= '9' = x : digits xs
  | otherwise = digits xs

-- asciiToChar :: Int -> Char
-- asciiToChar n = toEnum n