vendaSemana :: Int -> Int
vendaSemana n = venda n

venda :: Int -> Int
venda 0 = 5
venda 1 = 6
venda 2 = 4
venda 3 = 8

--totalVenda :: Int -> Int
-- |n == 0 = venda 0
-- |n > 0 = totalVenda (n-1) + venda n
-- |otherwise = 0

maiorvenda :: Int -> Int
maiorvenda n = venda 0
maiorvenda n |(venda n > venda n+1) = n
             |otherwise = maiorvenda n