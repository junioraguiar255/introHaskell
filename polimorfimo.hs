--triangulo
type Ponto = (Float,Float)
data Figura = Circulo Ponto Float | Retangulo Ponto Float Float |Triangulo Ponto Float Float Float

perimetro :: Figura -> Float
perimetro (Circulo _ r) = 2*3.14*r
perimetro (Retangulo _ b h) = 2*(b+h)
perimetro (Triangulo _ a b c) = a+b+c