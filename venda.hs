vendaSemana :: Int -> Int
vendaSemana n = venda n

venda :: Int -> Int
venda 0 = 5
venda 1 = 0
venda 2 = 8
venda 3 = 4

totaldeVenda :: Int -> Int
totaldeVenda n
    |n==0 = venda 0
    |otherwise = totaldeVenda (n-1) + venda n

maiorVenda :: Int -> Int
maiorVenda n 
    |n == 0 = venda 0
    |maiorVenda (n-1) >= venda n = maiorVenda (n-1)
    |otherwise = venda n

vendazerada :: Int -> Int
vendazerada n 
    |venda n == 0 = venda n
    |venda n /= 0 = vendazerada (venda(n-1))
