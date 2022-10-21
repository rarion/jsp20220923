USE mydb1;

-- data type
-- 문자열 (VARCHAR, CHAR)
CREATE TABLE myTable01 (
	col1 VARCHAR(5),
    col2 VARCHAR(2)
);
INSERT INTO myTable01 (col1, col2)
VALUES ('abcde', 'ab');

INSERT INTO myTable01 (col1, col2)
VALUES ('abc', 'a');

INSERT INTO myTable01 (col1, col2)
VALUES ('abc', 'abc'); -- not ok

DROP TABLE myTable02;

-- CHAR : 고정길이 데이터 저장
-- CHAR(size) : size만큼 저장됨
CREATE TABLE myTable02 (
	col1 VARCHAR(3),
    col2 CHAR(3)
);
INSERT INTO myTable02 (col1, col2)
VALUES ('abc', 'abc'); -- ok
INSERT INTO myTable02 (col1, col2)
VALUES ('abc', 'abcd'); -- not ok
INSERT INTO myTable02 (col1, col2)
VALUES ('ab', 'ab'); -- ok ('ab', 'ab ')
SELECT * FROM myTable02;

-- 수 (INT,DEC)
-- 날짜 (DATE, DATETIME)