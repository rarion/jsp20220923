-- distinct
SELECT * FROM Customers;
SELECT Country FROM Customers;
SELECT DISTINCT Country FROM Customers;
SELECT DISTINCT City, Country FROM Customers;

-- Suppliers 테이블의 Country 컬럼을 중복 제거해서 조회
-- Suppliers 테이블의 Country 컬럼을 중복 제거하지 않고 조회

SELECT Country FROM Suppliers;
SELECT DISTINCT Country FROM Suppliers;
