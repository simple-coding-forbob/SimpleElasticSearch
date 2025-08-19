-- 퀴즈) DEPT2 테이블을 정의하고 LOC 컬럼에 NOT NULL 제약조건을 만드세요
-- 사용법) CREATE TABLE 테이블 (
--    컬럼1 숫자자료형(정수자리수,소수점자리수) NOT NULL,
--    컬럼2 글자자료형(자리수)               CONSTRAINT 제약조건이름 UNIQUE,
--    ...
--);
CREATE TABLE DEPT2 (
    DNO NUMBER(2,0),
    DNAME VARCHAR2(14),
    LOC VARCHAR2(13) NOT NULL
);