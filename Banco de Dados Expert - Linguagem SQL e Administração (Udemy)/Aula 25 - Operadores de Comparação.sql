--Usando operador
SELECT * FROM cidades
WHERE uf = 'SP'

--Outro Exemplo operador = 
SELECT * FROM cidades
WHERE nome_mun = 'Dourado'

--Usando operador >
SELECT * FROM cidades
WHERE populacao > 100000

--Usando operador >
SELECT * FROM cidades
WHERE populacao > 100000

--Usando operador <
SELECT * FROM cidades
WHERE populacao < 100000

--Usando operador <
SELECT * FROM cidades
WHERE populacao < 50000

--Usando operador <=
SELECT * FROM cidades
WHERE populacao <= 100000

--Usando operador <=
SELECT * FROM cidades
WHERE populacao <= 50000

--Usando operador <>
SELECT * FROM cidades
WHERE uf <> 'SP' AND uf <> 'SC'

--Combinando Operadores
SELECT * FROM cidades
WHERE populacao <= 10000
	AND populacao >= 5000
	AND nome_mun = 'Vinhedo'