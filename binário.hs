type Binario = (String,String)
type Bd = [Binario]

base = [("0011","3"),("0001","1"),
		("0010","2"),("0100","4")]
		
converte :: Bd->String ->String
converte [] _ = ""
converte ((bin,hex):resto) string
		|string==bin=hex
		|otherwise=converte resto string


fib :: Int -> Int 
fib n
	|n==1 = 1
	|n==2 = 1
	|otherwise = fib(n-1) + fib(n-2)

fib2 :: Int -> Int 
fib2 n
	|n==1 = 1
	|n==2 = 1
	|otherwise = sum(take 2 (reverse fib2(n-1)) + (reverse fib2(n-1))

listafib::Int->[Int]
listafib n
	|n==1 = [1]
	|n==2 = [1,1]
	|otherwise = listafib (n-1)++[fib n]

fibo = [1,1,2,3,5,8,13]

umalinha :: Int->[Int]
umalinha j
	|j==0 = []
	|otherwise = take j fibo



