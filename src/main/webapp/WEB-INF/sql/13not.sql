-- NOT : false -> true, true -> false

SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country = 'Germany';
SELECT * FROM Customers WHERE Country <> 'Germany';
SELECT * FROM Customers WHERE Country != 'Germany';
SELECT * FROM Customers WHERE NOT Country = 'Germany';

-- 미국(USA)에 살지 않는 고객들
SELECT * FROM Customers WHERE NOT Country = 'USA';
-- USA에 있지않은 공급자들(Suppliers)
SELECT * FROM Suppliers WHERE NOT Country = 'USA';
-- 주문일자(OrderDate)가 97년도가 아닌 주문 번호들(Orders)
SELECT OrderID 
FROM Orders 
WHERE NOT (OrderDate >= '1997-01-01' 
	AND OrderDate <= '1997-12-31');
 
