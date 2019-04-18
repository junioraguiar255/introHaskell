--Logica
--conta_algarismos < 0 = 0
--conta_algarismos n = if n < 100000 && n > 9999 then 5
--conta_algarismos n = if n < 10000 && n > 999 then 4
--conta_algarismos n = if n < 1000 && n > 99 then 3
--conta_algarismos n = if n < 100 && n > 9 then 2
--else then 1


--Recursao

conta_algarismo::Int->Int
conta_algarismos < 0 = 0
conta_algarismos n = conta n 10 1

conta::Int->Int->Int->Int
conta n1 calc qtd
|n1 > calc == qtd
|otherwise = conta n1 (calc*10) qtd+1
	  
	  --TESTE
	  -- Ex: n = 120
	  -- conta = 120 10 1
	  -- conta = se 120 > 10 entao qtd de algarismo é 1
	  -- senao conta = 120 100 2
      -- conta se 120 > 100 entao qtd de algarismo é 2
      -- senao conta = 120 1000 3
      -- conta se 120 > 1000 entao qtd de algarismo é 3
      -- resposta = 3	  