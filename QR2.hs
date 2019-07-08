ehPrimo::Int->Bool
ehPrimo n = testaPrimo n 2

testaPrimo::Int->Int->Bool
testaPrimo n div
  |n==1 = False
  |n==div = True
  |mod n div==0 = False
  |otherwise = testaPrimo n(div+1)


totiente :: Int -> Int
totiente n
    |n==0 = 0
    |n==1 = 1
    |ehPrimo (n-1) == True = 1 + totiente (n-1)
    |otherwise = totiente (n-1)


  

