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
  
  
  -- 2 3 5 7 - 8
-- 2 3 5 7 11 13 - 16

goldbach::Int->(Int,Int)
goldbach n = goldbachImpl n (n-1) 2

goldbachImpl::Int->Int->Int->(Int,Int)
goldbachImpl n primo_ant primo_seq
  |primo primo_ant == False = goldbachImpl n (primo_ant-1) primo_seq
  |primo primo_seq == False = goldbachImpl n primo_ant (primo_seq+1)
  |primo_ant+primo_seq==n == (primo_seq, primo_ant)
  |(primo_ant+primo_seq)<n = goldbachImpl n primo_ant (primo_seq+1)
  |otherwise = goldbachImpl n (primo_ant-1) 2

primo :: Int -> Bool
primo n = ehPrimoImpl n (n-1)

ehPrimoImpl :: Int -> Int -> Bool
ehPrimoImpl n dgo
  |n==2 || n==1 = True
  |d==1 = True
  |mod n d == 0 = False
  |otherwise = ehPrimoImpl n (d-1)
  
  