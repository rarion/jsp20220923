-- 서브 쿼리
SELECT ProductName, MAX(Price) FROM Products;
SELECT ProductName, Price FROM Products WHERE ProductName = 'Chais' ;

-- 가장 높은 가격의 상품명 조회
SELECT * 
FROM Products 
WHERE Price = ( SELECT MAX(Price) 
				FROM Products );
                
-- 가장 낮은 가격의 상품명 조회
SELECT * FROM Products
WHERE Price = ( SELECT MIN(Price) 
				FROM Products );
                
-- 평균 가격보다 가격이 높은 상품들 조회
SELECT * 
FROM Products
WHERE Price > ( SELECT AVG(Price)
				FROM Products );
-- 평균 가격보다 가격이 낮은 상품들 조회
SELECT * 
FROM Products
WHERE Price < ( SELECT AVG(Price)
				FROM Products );
                

SELECT *
FROM ( SELECT CategoryID, AVG(Price) Average 
	   FROM Products
	   GROUP BY CategoryID ) A
WHERE average > 30;        
