-- COUNT() 함수 : 레코드가 몇개인지?
SELECT * FROM Customers;
SELECT COUNT(*) FROM Customers;
SELECT COUNT(Country) FROM Customers;
SELECT COUNT(DISTINCT Country) FROM Customers;

-- Employees 테이블의 레코드가 몇 개인지?
SELECT COUNT(*) FROM Employees;
-- Suppliers 테이블의 Country 값이 중복 제거 하고 몇 개인지?
SELECT DISTINCT COUNT(Country) FROM Suppliers;