-- CONCAT : 스트링을 연결한 결과 리턴
SELECT CONCAT('ab', 'de');

SELECT CustomerID, CustomerName, CONCAT(Address, ' ', City) Address FROM Customers;

-- 직원 테이블에서 FirstName, LastName 스페이스 구분해 연결한 fullName 조회
SELECT EmployeeID,
	   CONCAT(FirstName, ' ', LastName) fullName,
       BirthDate,
       Photo,
       Notes
FROM Employees;

 

