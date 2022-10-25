SELECT * 
FROM Orders
WHERE OrderDate = '1996-07-04';

SELECT *
FROM OrderDetails
WHERE OrderID = 10248;

SELECT * 
FROM Products
WHERE ProductID IN (11, 42, 72);

-- '1996-07-04'에 주문된 상품명들 조회
SELECT a.OrderDate, c.ProductName
FROM Orders a JOIN OrderDetails b ON a.OrderID = b.OrderID
			  JOIN Products c ON b.ProductID = c.ProductID
WHERE a.OrderDate = '1996-07-04';

-- '1996-07-04'에 주문된 상품들의 총 주문 금액
SELECT o.OrderDate, SUM(b.Quantity * p.Price)
FROM Orders a JOIN OrderDetails b ON a.OrderID = b.OrderID
			  JOIN Products c ON b.ProductID = c.ProductID
WHERE a.OrderDate = '1996-07-04';

-- 각 날짜별 매출액(판매금액)
SELECT b.OrderDate, SUM(b.Quantity * p.Price)
FROM Orders a JOIN OrderDetails b ON a.OrderID = b.OrderID
			  JOIN Products c ON b.ProductID = c.ProductID
GROUP BY b.OrderDate
ORDER BY b.OrderDate;

-- 고객별 주문 총 금액 조회
SELECT  c.CustomerID, c.CustomerName, SUM(b.Quantity*d.Price) Total 
FROM Orders a JOIN OrderDetails b ON a.OrderID = b.OrderID
			  JOIN Customers c ON a.CustomerID = c.CustomerID
			  JOIN Products d ON d.ProductID = b.ProductID
GROUP BY a.CustomerID
HAVING Total >= 10000
ORDER BY a.CustomerID;

