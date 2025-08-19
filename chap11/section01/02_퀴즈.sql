-- 퀴즈) DEPT2 테이블을 정의하고 DNO 에 기본키 제약조건을 만드세요
-- 제약이름은 PK_DEPT2로 만드세요
-- 단, DEPT2 테이블이 있으면 삭제하고 재생성해서 실습하세요
-- 사용법) CREATE TABLE 테이블 (
--         컬럼 자료형(자리수) CONSTRAINT 제약조건명 PRIMARY KEY,
--         ...
--        );
CREATE TABLE DEPT2 (
    DNO NUMBER(2,0) CONSTRAINT PK_DEPT2 PRIMARY KEY,
    DNAME VARCHAR2(14),
    LOC  VARCHAR2(13)
);