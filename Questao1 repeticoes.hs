contaOcorrencias :: [Int] -> Int -> Int
contaOcorrencias [] _ = 0
contaOcorrencias (cabeca:xs) valor
    |cabeca == valor = 1 + contaOcorrencias xs valor
    |otherwise = contaOcorrencias xs valor


trazOco :: [Int] -> [Int] -> Int -> [Int]
trazOco [] listavazia _ = listavazia
trazOco (x:xs) listavazia cont 
    |(contaOcorrencias (x:xs) x) == (cont+1) = trazOco xs (listavazia++[x]) cont
    |otherwise = trazOco xs listavazia (cont)


