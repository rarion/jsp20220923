USE w3schools;

-- MIN
SELECT * FROM Products ORDER BY Price DESC;
SELECT MIN(Price) FROM Products;

SELECT MAX(Price) FROM Products;

SELECT MIN(CustomerName) FROM Customers;
SELECT MAX(CustomerName) FROM Customers;
SELECT * FROM Customers ORDER BY CustomerName DESC;

-- 직원 생일 중 가장 먼저 태어난 사람의 생일
SELECT MIN(BirthDate) FROM Employees;
-- 가장 어린 사람의 생일
SELECT MAX(BirthDate) FROM Employees;


-- COUNT
-- NON-NULL
SELECT * FROM Customers;
SELECT COUNT(*) FROM Customers;
SELECT COUNT(CustomerName) FROM Customers;

INSERT INTO Customers (ContactName, City, Country) VALUES ('captain', 'ny', 'USA');

-- 100.00 달러가 넘는 상품의 수 Products 
SELECT COUNT(ProductID) FROM Products WHERE Price>100.00;
-- 60년대에 태어난 직원의 수
SELECT COUNT(EmployeeID) 
FROM Employees 
WHERE BirthDate BETWEEN '1960-01-01' AND '1969-12-31';

-- AVG
SELECT * FROM Products;
SELECT AVG(Price) FROM Products;
-- NULL 데이터 무시
INSERT INTO Products (ProductName) VALUE ('kimch');

-- 평균 주문수량
SELECT * FROM OrderDetails;
SELECT AVG(Quantity) FROM OrderDetails;
