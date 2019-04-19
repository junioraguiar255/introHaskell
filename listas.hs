--tamanho/comprimento da lista

size_list [] = 0
size_list (x:xs) = 1 + size_list xs

--verifica se duas listas sao iguais
--condições:
--mesmo numero de elementos
--possuirem os mesmos elementos
--os elementos estarem na mesma posicao

comp_listas::[Int] -> [Int] -> Bool
comp_listas [] [] = True
comp_listas [] _ = False
comp_listas _ [] = False
comp_listas (a:b) (c:d) | (a==c) = comp_listas b d
                        |otherwise = False
--Recebe uma lista e retorna o inverso dessa lista - mais trabalhosa

inv_aux :: [t]->[t]->[t]
inv_aux [] l_inv = l_inv
inv_aux (x:xs) l_inv = inv_aux xs l_inv++[x]

inv_lista :: [t]->[t]
inv_lista [] = []
inv_lista l = inv_aux l []

--versão simples
invlista :: [t] -> [t]
invlista [] = []
invlista(x:xs) = inv_lista xs ++[x]

-- saber se um numero pertence a uma lista
pertence :: [Int] -> Int -> Bool
pertence [] _ = False
pertence (x:xs) n |(x==n) = True
				  |otherwise = pertence xs n
				  
--maior elemento de uma lista
maior :: [Int] -> Int
maior [x] = x
maior (x:xs) |(x > maior xs) = x
			 |otherwise = maior xs

--recebe uma lista e retorna se todos os elementos são pares
todos_pares :: [Int]->Bool
todos_pares[] = True
todos_pares (x:xs) |(mod x 2 == 1) = False
			       |otherwise = todos_pares xs