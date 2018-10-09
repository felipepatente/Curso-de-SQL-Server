--OPERADOR WHERE
SELECT * FROM Customers
WHERE Country = 'México'

--OPERADOR AND
SELECT BusinessEntityID, LoginID, JobTitle, VacationHours
FROM HumanResources.Employee p
WHERE JobTitle = 'Marketing Assistant'
AND VacationHours > 41

--OPERADOR BETWEEN
SELECT E.FirstName, E.LastName, EP.Rate
FROM HumanResources.vEmployee E
JOIN HumanResources.EmployeePayHistory EP
ON E.BusinessEntityID = EP.BusinessEntityID
WHERE EP.Rate BETWEEN 27 AND 30
ORDER BY EP.Rate

--OPERADOR IN
SELECT *
FROM Person.Person AS P
JOIN Sales.SalesPerson AS SP
ON P.BusinessEntityID = SP.BusinessEntityID
WHERE P.BusinessEntityID IN (SELECT PP.BusinessEntityID
							 FROM Person.Person PP)



--OPERADOR NOT IN
SELECT *
FROM Person.Person AS P
JOIN Sales.SalesPerson AS SP
ON P.BusinessEntityID = SP.BusinessEntityID
WHERE P.BusinessEntityID NOT IN (SELECT PP.BusinessEntityID
							     FROM Person.Person PP
								 WHERE PP.BusinessEntityID > 10000)


--LIKE LOCALIZA VALORES QUE CONTENHAM "OR" EM QUAL LUGAR
SELECT *
FROM Customers
WHERE ContactName LIKE '%OR%'

--LIKE ENCONTRA QUAISQUER VALORES QUE TENHAM "R" NA SEGUNDA POSIÇÃO
SELECT *
FROM Customers
WHERE  ContactName LIKE '_R%'

--LIKE Localiza valores que começam com "a" e possuem pelo menos 3 caracteres de comprimento
SELECT *
FROM Customers
WHERE ContactName LIKE 'a_%_%'

--LIKE LOCALIZA VALORES QUE COMEÇAM COM 'A' E TERMINA COM 'O'
SELECT * 
FROM Customers
WHERE ContactName LIKE 'a%o'

--LIKE LOCALIZA VALORES QUE NÃO COMEÇAM COM 'A'
SELECT *
FROM Customers 
WHERE ContactName NOT LIKE 'a%'

--OPERADOR LIKE CORINGA []
SELECT BusinessEntityID, FirstName, LastName
FROM Person.Person
WHERE FirstName LIKE '[CS]he%'

--LIKE CORINGA
SELECT LastName, FirstName
FROM Person.Person
WHERE LastName LIKE 'Zh[ae]ng'
ORDER BY LastName ASC, FirstName ASC


--OPERADOR NOT
SELECT Name, StandardCost
FROM Production.Product
WHERE ProductNumber LIKE 'BK-%' AND Color = 'Silver' AND NOT StandardCost < 400;


--OPERADOR HAVING
SELECT COUNT(CustomerID)
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5