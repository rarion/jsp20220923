-- NULL : 필드(컬럼)에 값이 없음
SELECT * FROM Employees;

-- NULL인 필드가 있는 레코드 조회
SELECT * FROM Employees
WHERE Notes IS NULL;

-- NULL이 아닌 필드가 있는 레코드 조회
SELECT * FROM Employees
WHERE Notes IS NOT NULL;

DESC Customers -- DESCRIBE : 테이블 구조 조회, 제약사항(Constraints) 조회Customers