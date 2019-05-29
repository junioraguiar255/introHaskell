type Pessoa = String
type Livro = String
type Idade = Int
type Registro = (Pessoa, Livro)
type BancodeDados = [Registro]

teste = [("Paulo", "A Mente Nova do Rei"), 
		 ("Ana", "O Segredo de Luiza"), 
		 ("Paulo", " O Capital "), 
		 ("Mauro", "O Capital"), 
		 ("Francisco", "O Auto da Compadecida")]

--livrosEmprestados :: BancodeDados -> Pessoa -> [Livro]
--livrosEmprestados [ ] _ = []
--livrosEmprestados ((inquilino, titulo) : resto) fulano
--
--	| inquilino == fulano = titulo : livrosEmprestados resto fulano
--	| otherwise = livrosEmprestados resto fulano

--tomaEmprestado :: BancodeDados -> Pessoa -> Livro -> BancodeDados
--tomaEmprestado dBase pessoa titulo = (pessoa, titulo) : dBase

emprestado :: BancodeDados -> Livro -> Bool
emprestado ((p,l) : cs) liv
emprestado [] = False
	|l == liv = True
	|otherwise = emprestado cs liv

