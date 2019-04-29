--função que gera como resultado True, exceto quando ambos os argumentos são True

nand :: Bool -> Bool -> Bool
nand x y
 |x == True && y == True = False
 |otherwise = True
 
-- Defina uma função onde n m p retorna a quantidade de números iguais ao máximo entre n m e p

numEquallMax :: Int -> Int -> Int -> Int
numEquallMax n m p
 |numIgual n m == True = 
 
numIgual :: Int -> Int -> Bool
numIgual x y
 |x==y=True
 |otherwise = False
 

-- tentativa com lista

numqtd :: {Int} -> Int
numqtd (x) 0
numqtd :: (x:xs) n
