-- MODIFY COLUMN : 컬럼 수정
-- 이미 있는 데이터가 변경하는 데이터의 타입, 제약사항을 위반하고 있지 않는지 확인 필요
ALTER TABLE MyTable17 MODIFY COLUMN col1 INT NOT NULL;

DESC MyTable17;
INSERT INTO MyTable17(col6, col3, col4) VALUES (3, 3, 3);
SELECT * FROM MyTable17;

-- col3 변경 ( 타입 : VARCHAR(255), 제약사항 : UNIQUE )
ALTER TABLE MyTable17 MODIFY COLUMN col3 VARCHAR(255) UNIQUE;
