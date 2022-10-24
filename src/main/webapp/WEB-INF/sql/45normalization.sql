-- 한 컬럼이 다른 컬럼에 종속되어 있을 때 테이블을 만들기

USE w3schools;
SELECT * FROM Products;

CREATE TABLE MyProducts AS
SELECT p.ProductName,
 p.Unit,
 p.Price,
 c.CategoryName,
 c.Description
FROM Products p INNER JOIN Categories c 
ON p.CategoryId = c.CategoryId;

