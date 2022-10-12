-- IN : 나열된 값 중에 하나라도 일치하면
SELECT *
FROM Customers
WHERE Country IN ('Germany', 'Mexico', 'UK') ;

-- 'Madrid', 'München', 'London'에 사는 고객들 조회
SELECT *
FROM Customers
WHERE Country IN ('Madrid', 'London') AND City = 'München';

-- 'UK', 'USA', 'Japan'에 있는 공급자들
SELECT *
FROM Suppliers
WHERE Country IN ('UK', 'USA', 'Japan');

-- 카테고리번호 1,2,3 인 상품들
SELECT *
FROM Products
WHERE CategoryID IN (1, 2, 3);

-- 1996년 7월 8일, 1996년 7월 19일 에 주문한 주문번호들
SELECT OrderID
FROM Orders
WHERE OrderDate IN ('1996-07-08', '1996-07-19');

