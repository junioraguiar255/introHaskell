--bd = [('a'),('b'),('c'),('d'),('e'),('f'),('g'),('h'),('i'),('k')]

alfa :: Int -> Char
alfa 0 = 'a'
alfa 1 = 'b'
alfa 2 = 'c'
alfa 3 = 'd'
alfa 4 = 'e'
alfa 5 = 'f'
alfa 6 = 'g'
alfa 7 = 'h'
alfa 8 = 'i'
alfa 9 = 'k'


fatia :: Int -> Int -> [Char]
fatia i j
    |i > j = []
    |i == j = [alfa j]
    |i <= j = [alfa i] ++ fatia (i + 1) j



    