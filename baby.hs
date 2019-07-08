--teste
--funcao que recebe 1 numero e soma com ele mesmo

doubleMe x = x + x

--recebe 2 numero multiplica por 2 cada 1 e soma o resultado

doubleUs x y = x*2 + y*2

--chamar uma funcao dentro da outra

doublesUsd x y = doubleMe x + doubleMe y

-- se x for maior que 100, escreve 100 senão multiplica o x por 2
doubleSmalNumber x = if x > 100 then x else x*2