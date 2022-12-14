DESC Student;
-- 학생 연락처
-- id, 이름, 나이, 성별, 연락처1, 연락처2, 연락처3

-- 학생 테이블
-- 컬럼들: id, 이름, 나이, 성별
-- 연락처테이블 
-- 컬럼들 : studentId, 연락처

-- 두개의 컬럼 묶어서 PK
CREATE TABLE Contact (
	studentId INT,
    contact VARCHAR(255),
    PRIMARY KEY (studentId, contact)
);
DESC Contact;
DROP Table Contact;

-- 인위적인 키 컬럼 추가
CREATE TABLE Contact(
	id INT PRIMARY KEY AUTO_INCREMENT,
    studentId INT,
    contact VARCHAR(255)
);

-- FOREIGN KEY(외래키, 참조키, FK)
CREATE TABLE Contact (
	id INT PRIMARY KEY AUTO_INCREMENT,
    studentId INT,
    contact VARCHAR(255),
    FOREIGN KEY (studentId) REFERENCES Student(id) -- 제약사항 추가
);

SELECT * FROM Student;
SELECT * FROM Contact;

INSERT INTO Contact (studentId, contact)
VALUES (1, '010-9999-9999');
SELECT * FROM Contact;
INSERT INTO Contact (studentId, contact)
VALUES (4, '010-8888-8888');
INSERT INTO Contact (studentId, contact)
VALUES (4, '010-7777-7777');
INSERT INTO Contact (studentId, contact)
VALUES (5, '010-6666-6666');
INSERT INTO Contact (studentId, contact)
VALUES (NULL, '010-6666-6666');

-- 부모테이블의 레코드가 삭제될 경우
DELETE FROM Student
WHERE id = 4; -- 먼저 삭제될 수 없음

-- -> 자식테이블 레코드 삭제를 먼저 해야함
DELETE FROM Contact
WHERE StudentId = 4;

SELECT * FROM Contact;
SELECT * FROM Student;

