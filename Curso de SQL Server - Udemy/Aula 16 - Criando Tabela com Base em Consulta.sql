SELECT ID_CURSO, NOME_CURSO, PRECO_CURSO 
INTO TB_CURSOS_PRECO
FROM TB_CURSOS
WHERE ID_CURSO > 102

SELECT * FROM TB_CURSOS_PRECO