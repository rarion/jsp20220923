UPDATE Customers
SET PostalCode = '00000'
WHERE Country = 'Mexico';

SELECT * FROM Customers
WHERE Country = 'Mexico';

-- DESC : 테이블 구조
DESC Customers;

-- SAFE UPDATE MODE -> disable
SET SQL_SAFE_UPDATES = 0;

-- USA 국가의 고객들의 City 를 New York으로 변경
-- UK 국가의 고객들의 Address를 GangNam으로 변경
SELECT * FROM Customers;

UPDATE Customers
SET City = 'New York'
WHERE Country = 'USA';

UPDATE Customers
SET Address = 'GangNam'
WHERE Country = 'UK';
