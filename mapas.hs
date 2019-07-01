--map (+3) [1,5,3,1,6]  = [4,8,6,4,9]
--map (++ "!") ["Josemar","Aguiar"] = ["Josemar!","Aguiar!"]
-- map (replicate 3) [3..6] = [[3,3,3],[4,4,4],[5,5,5],[6,6,6]]
-- map (map (^2)) [[1,2],[3,4,5,6],[7,8]] = [[1,4],[9,16,25,36],[49,64]]
-- map fst [(1,2),(3,5),(6,3),(2,6),(2,5)] = [1,3,6,2,2]

-- map (+3) [1,5,3,1,6] mesma coisa que [x+3 | x <- [1,5,3,1,6]]

--recebe uma função e uma lista e aplica essa funcao em todos os elementos da lista