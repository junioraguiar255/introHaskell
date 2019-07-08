nome :: Int -> String
nome 0 = "Zero"
nome 1 = "Um"
nome 2 = "Dois"
nome 3 = "Três"
nome 4 = "Quatro"
nome 5 = "Cinco"
nome 6 = "Seis"
nome 7 = "Sete"
nome 8 = "Oito"
nome 9 = "Nove"

extenso :: Int -> String -> String
extenso num conca
    |num == 0 = nome 0
    |(mod num 10 == 0) || (div num 10) == 0  = conca  
    |otherwise = extenso (div num 10) (conca ++ nome (mod num 10))