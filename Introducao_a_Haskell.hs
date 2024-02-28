-- Exemplos de funcoes e variaveis em Haskell
size :: Int -- Variavel do tipo Inteiro
size = 56

x::Bool
x = True || False

-- funcao potencia de dois
square :: Int -> Int
square n = n*n

-- funcao que droba os elemntos
doubleMe :: Int -> Int
doubleMe x = x + x

-- funcao que multiplica por quatro 
mult4 :: Int-> Int 
mult4 x = 4*x

-- funcao que compara se tres elementos sao iguais
allEqual :: Int -> Int -> Int -> Bool
allEqual n m p = (n == p) && (m == p)

name :: String -- Variavel do tipo string
name = "Hello World!"

example :: Int -- Variavel inteira 
example = doubleMe(size - square(4))

-- Exclusive Or function
exOr :: Bool->Bool->Bool
exOr x y = (x || y) && not (x && y)

-- Funcao Negacao
myNot :: Bool->Bool
myNot x = not x
--myNot True = False
--myNot False = True

letra :: Char -- variavel caractere
letra = '1'

nome :: String
nome = "Casa"

letra_1 :: String 
letra_1 = "A"++" "++nome

-- funcao que calcula a diferenca entre dois caracteresna tabela ASCII e retorna essa diferenca tambem como caracter
offset :: Char->Char->Char
offset x y = toEnum(fromEnum x - (fromEnum y))::Char

-- Exemplos do uso de Guards
-- Retorna Y se um numero x inteiro estah no intervalo de 0 a 10
between0_10 :: Int->Char
between0_10 n 
          |(n>=0) && (n <= 10) = 'Y'
          |otherwise = 'N'

-- Retorna valor maximo 
myMax :: Int->Int->Int
myMax x y
  |x >= y = x
  | otherwise = y

newMax :: Int->Int->Int
newMax x y = if x > y then x else y
        
-- Calculadores - recebe um numero para definir a operacao matematica e outros dois numeros que atuam como operandos
calculadora ::Int->Int->Int->Char
calculadora x y z
  | x == 1 = (toEnum(y + z)::Char)
  | x == 2 = (toEnum(y - z)::Char)
  | x == 3 = (toEnum(y*z)::Char)
  | x == 4 = (toEnum(div y z)::Char)
  | otherwise = '0'

calculadora_2 ::Int->Int->Int->String
calculadora_2 x y op
  | op == 1 = show(x + y)
  | op == 2 = show(x - y)
  | op == 3 = show(x*y)
  | op == 4 = show(div x y)
  | otherwise = "opcao errada"

-- Função Fatorial 
fac :: Int->Int
fac n
  |n <= 0 = 1
  |otherwise  = fac(n-1)*n

fat :: Int->Int
fat 0 = 1
fat a = a*fat (a - 1)


