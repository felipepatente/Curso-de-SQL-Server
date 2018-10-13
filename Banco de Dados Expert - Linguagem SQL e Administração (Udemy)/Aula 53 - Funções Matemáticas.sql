--ABS
--Uma funcao matematica que retorna o valor absoluto (positivo) da expressao especificada
SELECT ABS(-1.0),
	   ABS(0.0),
	   ABS(1.0),
	   ABS(-9.0),
	   ABS(9.0),
	   ABS(-5.4),
	   ABS(5.4);


--RAND 
--Retorna um valor float pseudoaleatório de 0 a 1, exclusivo.
SELECT RAND(),
	   RAND(),
	   RAND()

--ROUND
--Retorna um valor numerico, arredondado, para o comprimento ou precisao especificados
SELECT ROUND(123.10255,5)
