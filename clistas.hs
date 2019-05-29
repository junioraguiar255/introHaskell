par :: Int -> Bool
par x = mod x 2 == 0

lista = [x| x <- [1 .. 10], par x,x>6]

listaaoq = [x*x | x <- [1..10]]

listatupla = [(x,y) | x <- [1..5],y <- [6..10]]

zip :: [a] -> [b] -> [(a,b)]