-- aggregate function (집합 함수, 그룹 함수)
SELECT * FROM Products;
SELECT * FROM Products ORDER BY CategoryID, Price DESC;
SELECT MAX(Price) FROM Products;
SELECT CategoryID, MAX(Price) FROM Products GROUP BY CategoryID;

-- CategoryID별 가장 작은 값
-- CategoryID별 평균 가격
-- CategoryID별 가격 합
SELECT CategoryID, MIN(Price) FROM Products GROUP BY CategoryID;
SELECT CategoryID, AVG(Price) FROM Products GROUP BY CategoryID;
SELECT CategoryID, SUM(Price) FROM Products GROUP BY CategoryID;

-- 나라별 고객 수 
SELECT Country, COUNT(*) FROM Customers GROUP BY Country;
-- 도시별 공급자 수
SELECT City, COUNT(*) FROM Suppliers GROUP BY City;

-- 나라별 도시별 고객 수
SELECT Country, City, COUNT(*) FROM Customers GROUP BY Country, City;

-- HAVING : 집합 함수 결과에 조건을 추가
SELECT Country, COUNT(*) 
FROM Customers 
GROUP BY Country
HAVING COUNT(*)>5;

-- 상품 테이블에서 카테고리별 가격 평균이 30.00보다 큰 상품 조회
SELECT CategoryID, AVG(Price) Average 
FROM Products
GROUP BY CategoryID
HAVING AVG(Price) > 30.00;