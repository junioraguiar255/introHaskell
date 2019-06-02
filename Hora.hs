type Hora = Int
type Minuto = Int
type Segundos = Int
type Tempo = (Hora,Minuto,Segundos)

retornaSegundos :: Tempo -> Int
retornaSegundos (h,m,s)
    |otherwise = (60 - m) * 60

retornaMinutoPorSegundos :: Float -> [Float]
retornaMinutoPorSegundos s 
    |otherwise =  [1] ++ [s / 3600]


