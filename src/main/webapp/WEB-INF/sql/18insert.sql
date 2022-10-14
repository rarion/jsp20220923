USE w3shchools;

-- INSERT INTO : 테이블에 레코드 추가하는 명령문
SELECT * FROM Employees;
INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES
(10, 'Son', 'HM', '1999-01-10', 'EmpID10.pic', 'soccer player');

-- 11번째 직원 추가
INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES
(11,'ajin','li','2008.12.28','atrix.pic','Atrix');

-- 12번째 직원 추가, notes 컬럼 뺴고
INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES
(12,'berueta','li','1999-04-29','mina.pic');

-- 13번째 직원 추가, birthDate, notes 컬럼 빼고
INSERT INTO Employees
(EmployeeID, LastName, FirstName, Photo)
VALUES
(13, 'rian','je','cosmos.pic');

-- 새 직원 추가, EmployeeID 컬럼 빼고
INSERT INTO Employees
(LastName, FirstName)
VALUES
('Nasa','Han');

INSERT INTO Employees
(LastName, FirstName, Notes)
VALUES
('Docs','Full','');