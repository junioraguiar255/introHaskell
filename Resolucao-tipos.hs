exOr::Bool->Bool->Bool
exOr True x = not x
exOr False x = x

nAnd::Bool->Bool->Bool
nAnd True True = False
nAnd _ _ = True

numEquallMax::Int->Int->Int->Int
numEquallMax n1 n2 n3
   |n1==n2 && n2==n3 = 3
   |n1==n2 || n2==n3 || n1==n3 = 2
   |otherwise = 0

maiusculo::Char->Char
maiusculo c
   |fromEnum c<97 || fromEnum c>122 = c
   |otherwise = toEnum (fromEnum c - 32)

somaChar::Char->Char->Int
somaChar c1 c2
   |fromEnum c1<48 || fromEnum c1>57 = 0
   |fromEnum c2<48 || fromEnum c2>57 = 0
   |otherwise = (fromEnum c1)-48 + (fromEnum c2)-48