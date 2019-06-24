listapares :: Int -> [Int]
listapares x = [x|x<-[0..x-1], mod x 2==0]

--gera os 3 numeros
geraNumero :: [Int]
geraNumero = [x | x <- [1,2,3]]

geraNumeroSomando :: [Int]
geraNumeroSomando = [x + 1 | x <- [1,2,3]]

geraNumero2 :: Int -> [Int]
geraNumero2 x = [x| x <- [x+1,x+2,x+3]]

par :: Int -> Bool
par x = mod x 2 == 0

lista = [x*x | x <- [1..10], par x, x>5]


geraVarios :: [Int]
geraVarios = [x | x<- [1..10]]

geraTupla :: [(Int,Int)]
geraTupla = [(x,y) | x <- [1..5], y <- [6..10]]