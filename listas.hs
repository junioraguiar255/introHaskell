--tamanho/comprimento da lista

size_list [] = 0
size_list (x) = 1
size_list (x:xs) = 1 + size_list xs