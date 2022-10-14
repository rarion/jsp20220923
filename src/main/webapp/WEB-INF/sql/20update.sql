-- UPDATE 레코드(row)의 필드(column)들을 수정

SELECT * FROM Customers WHERE CustomerID = 1; 

UPDATE Customers
SET ContactName = 'Alfred Schmit'
WHERE CustomerID = 1;

UPDATE Customers
SET ContactName = 'Alfred Schmit', City = 'Frankfrut'
WHERE CustomerID = 1;

-- 92번 고객의 고객명, 계약자명, 주소, 도시, 우편번호, 국가
-- 수정하는 쿼리 작성/실행
UPDATE Customers
SET CustomerName = 'Park',
    ContactName = 'JI SUNG',
    Address = 'NY',
    City = 'Seoul',
    PostalCode = '3333',
    Country = 'USA'
WHERE CustomerID = 92;    

SELECT * FROM Customers
WHERE CustomerID = 92;   
    
-- 93번 고객의 고객명, 계약자명, 주소, 도시, 우편번호, 국가
-- 수정하는 쿼리 작성/실행
UPDATE Customers
SET CustomerName = 'Son',
    ContactName = 'HM',
    Address = 'london',
    City = 'London',
    PostalCode = '22222',
    Country = 'UK'
WHERE CustomerID = 93;  

SELECT * FROM Customers
WHERE CustomerID = 93; 




