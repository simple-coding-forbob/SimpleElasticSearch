-- 예제) EMP 테이블을 정의하고 DNO 에 참조키 제약조건을 만드세요
-- 제약이름은 FK_EMP_DNO로 만드세요
-- 단, EMP 테이블은 ENO, DNO, ENAME 컬럼만 만드세요
-- 단, EMP 테이블이 있으면 삭제하고 재생성해서 실습하세요
-- 기본 사용법) CREATE TABLE 테이블 (
--                컬럼 자료형(자리수)
--                ...
--              )
--ENO
--ENAME
--DNO
--NUMBER(4,0)
--VARCHAR2(10 BYTE)
--NUMBER(2,0)
-- 참조키 : 부모테이블의(DEPARTMENT) 컬럼 <-> 자식테이블의 컬럼(연결:DNO)
-- 설명  : 예) 부서: 부서(개발부, 운영부, 연구소, 판매부) <- 직원은 모든 부서중에 1개에 소속되어야 합니다.
--           => 만약 소속되지 않는 사원이 있으면 ? 쓰레기 데이터(오류)
-- 참조키 원리 : 부모테이블에 부서정보에 해당하는 데이터 있는 지 확인: 10 ~ 40
--              만약 10 ~ 40 이외의 데이터기 추가하려고 하면 에러를 발생시킵니다.
-- 사용법) CREATE TABLE 테이블 (
--                컬럼 자료형(자리수) CONSTRAINT 제약조건명 REFERENCES 부모테이블(부모컬럼),
--                ...
--        );
CREATE TABLE EMP (
                ENO NUMBER(4,0),
                DNO NUMBER(2,0) CONSTRAINT FK_EMP_DNO REFERENCES DEPARTMENT(DNO),
                ENAME VARCHAR2(10)
);

-- SQLD 대비
-- 주의점 : 1) 부모테이블의 컬럼의 제약조건: 유일성(UNIQUE 또는 PK) 이어야 함
--         2) 부모테이블의 데이터 삭제시 자식테이블의 참조키에 해당하는 데이터를 먼저 삭제해야합니다.
--    예) 부모: 부서번호(10~40) -> 자식: 부서번호(40) : 참조키
--      => 부모: 부서번호(40번 삭제) -> 자식: 부서번호(40) 먼저 삭제해야함

-- (참고) FK(참조키) 만들기 2
-- 사용법) CREATE TABLE 테이블 (
--                컬럼 자료형(자리수),
--                ...
--                CONSTRAINT 제약조건명 FOREIGN KEY(자식컬럼) REFERENCES 부모테이블(부모컬럼)
--        );
DROP TABLE EMP;  -- 테이블 삭제

CREATE TABLE EMP (
                ENO NUMBER(4,0),
                DNO NUMBER(2,0) ,
                ENAME VARCHAR2(10),
                CONSTRAINT FK_EMP_DNO FOREIGN KEY(DNO) REFERENCES DEPARTMENT(DNO)
);
-- 3번째 FK(참조키) 만들기: 테이블 만든 후에 FK 추가하기
DROP TABLE EMP;  -- 테이블 삭제
CREATE TABLE EMP (
                ENO NUMBER(4,0),
                DNO NUMBER(2,0) ,
                ENAME VARCHAR2(10)
);
-- 사용법: ALTER TABLE 테이블
--        ADD CONSTRAINT 제약조건명 FOREIGN KEY(자식컬럼) REFERENCES 부모테이블(부모컬럼);

ALTER TABLE EMP
ADD CONSTRAINT FK_EMP_DNO FOREIGN KEY(DNO) REFERENCES DEPARTMENT(DNO);











                  