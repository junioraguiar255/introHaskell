replicaChar :: Char -> Int -> [Char]
replicaChar ch num
    |num == 0 = []
    |otherwise = ch :(replicaChar ch (num-1))
