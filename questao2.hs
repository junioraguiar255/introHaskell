import Prelude

type Palavras = String
type Count = Int
type Registro = (Palavras,Count)
bd = [("de"),("manha"),("teve"),("sol"),("de"),("tarde"),("teve"),("chuva")]

retorna1 :: [Palavras] ->  String -> [Registro]
retorna1 bda x
    |bda == [] = []
    |otherwise = [(x,contaOcorrencias bda x)]


contaOcorrencias :: [Palavras] -> String -> Int
contaOcorrencias [] _ = 0
contaOcorrencias (cabeca:xs) nome
    |cabeca == nome = 1 + contaOcorrencias xs nome
    |otherwise = contaOcorrencias xs nome
