SELECT City
FROM Customers
UNION 
SELECT City
FROM Suppliers
ORDER BY City

SELECT City
FROM Customers
UNION ALL
SELECT City
FROM Suppliers
ORDER BY City


SELECT City
FROM Customers
UNION 
SELECT City
FROM Suppliers
WHERE Country = 'Germany'
ORDER BY City

SELECT City
FROM Customers
UNION ALL
SELECT City
WHERE Country = 'Germany'
FROM Suppliers
ORDER BY City