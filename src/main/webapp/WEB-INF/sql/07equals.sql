SELECT *
FROM Customers
WHERE Country = 'UK';

SELECT *
FROM Customers
WHERE Country = "UK";

SELECT *
FROM Customers
-- 작은 따옴표 표현은 작은 따옴표 2개 사용 (또는 역슬래시)
WHERE CustomerName = 'B''s Beverages';
SELECT * FROM Customers WHERE CustomerName = 'B\'s Beverages';

-- 문자열은 대소문자를 구분하지 않는다
SELECT * FROM Customers WHERE Country = 'Mexico';
SELECT * FROM Customers WHERE Country = 'mexico';
SELECT * FROM Customers WHERE Country = 'MEXICO';

-- 수(Number 형식) 비교
SELECT * FROM Customers WHERE CustomerID = '3'; -- OK
SELECT * FROM Customers WHERE CustomerID = 3; -- OK

-- Suppliers 테이블에서 SupplierID가 5번인 레코드 조회
SELECT *
FROM Suppliers
WHERE SupplierID = 5;

-- Employees 테이블에서 FirstName이 Nancy인 직원 조회
SELECT *
FROM Employees
WHERE FirstName = 'Nancy';

-- Employees 테이블에서 FirstName이 Janet인 직원의 생일 조회
SELECT BirthDate
FROM Employees
WHERE FirstName = 'Janet';

