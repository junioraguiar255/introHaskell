fibonacciPrimo :: Int -> Int
fibonacciPrimo n = fibPrimoImpl 1 2 n

fibPrimoImpl :: Int -> Int -> Int -> Int
fibPrimoImpl f s n
  |n==0 = f
  |(n>0) && (ehPrimo s==True) = fibPrimoImpl s (f+s) (n-1)
  |otherwise = fibPrimoImpl s (f+s) n


fibPrimo::Int->Int
fibPrimo n = fibPrimoAux 2 n

fibPrimoAux::Int->Int->Int
fibPrimoAux n p
  |p==0 = fibonacci (n-1)
  |ehPrimo (fibonacci n) == True = fibPrimoAux (n+1) (p-1)
  |otherwise = fibPrimoAux (n+1) p 

fibonacci :: Int -> Int
fibonacci n = fib 1 1 n

fib :: Int -> Int -> Int -> Int
fib f s n
  |n==0 = f
  |n>0 = fib s (f+s) (n-1)
  |otherwise = 0


ehPrimo::Int->Bool
ehPrimo n = testaPrimo n 2

testaPrimo::Int->Int->Bool
testaPrimo n div
  |n==1 = False
  |n==div = True
  |mod n div==0 = False
  |otherwise = testaPrimo n(div+1)