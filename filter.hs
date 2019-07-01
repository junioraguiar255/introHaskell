-- filter é uma função que recebe um predicado (um predicado é uma função que diz que qualquer coisa é verdadeira ou não, nesse caso, uma função que retorna um valor booleano) e 
-- uma lista e então retorna uma lista com elementos que satisfazem o predicado.

-- filter (>3) [1,5,3,2,1,6,4,3,2,1]  = [5,6,4]
-- filter even [1..10]  = [2,4,6,8,10]     
--filter even [1,8,10,48,5,-3] = [8,10,48]
--filter odd [1,8,10,48,5,-3] =  [1,5,-3]
--filter isDigit "A186 B70" = "18670"
--filter (not . null) ["abc","","ok",""] = ["abc", "ok"]