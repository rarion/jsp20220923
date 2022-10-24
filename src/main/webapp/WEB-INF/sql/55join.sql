SELECT * 
FROM Customers c JOIN Orders o 
				 JOIN Employees e;
                 
-- 총 rows : cRow * oRow * eRow 
-- 총 cols : cCOl + oCOl + eCOl

SELECT c.CustomerName, e.FIrstName, e.LastName
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
				 JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04';


SELECT e.FirstName, e.LastName, s.ShipperName
FROM Employees e JOIN Orders o ON e.EmployeeID = o.EmployeeID
				 JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-04';
   