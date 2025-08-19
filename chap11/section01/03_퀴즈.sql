-- 퀴즈) EMP2 테이블을 정의하고 DNO 에 참조키 제약조건을 만드세요
-- 제약이름은 FK_EMP2_DNO로 만드세요
-- 단, EMP2 테이블은 ENO, DNO, ENAME 컬럼만 만드세요
-- 단, EMP2 테이블이 있으면 삭제하고 재생성해서 실습하세요
-- 단, 부모테이블 : DEPARTMENT, 부모컬럼(DNO)
-- 사용법) CREATE TABLE 테이블 (
--                컬럼 자료형(자리수) CONSTRAINT 제약조건명 REFERENCES 부모테이블(부모컬럼),
--                ...
--        );
CREATE TABLE EMP2 (
                ENO NUMBER(4,0),
                DNO NUMBER(2,0) CONSTRAINT FK_EMP2_DNO REFERENCES DEPARTMENT(DNO),
                ENAME VARCHAR2(10)
        );