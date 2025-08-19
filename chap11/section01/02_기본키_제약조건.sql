-- 테이블에 기본키(PRIMARY KEY) 제약조건 넣기(*****)
-- ①예제) DEPT 테이블을 정의하고 DNO 에 기본키 제약조건을 만드세요
-- 제약이름은 PK_DEPT로 만드세요
-- 단, DEPT 테이블이 있으면 삭제하고 재생성해서 실습하세요
-- 테이블 삭제 사용법) DROP TABLE 테이블;
-- 테이블 복사) CTAS 
--  사용법) CREATE TABLE 테이블
--         AS
--         SELECT * FROM 원본테이블;
-- 기본 사용법) CREATE TABLE 테이블 (
--                컬럼 자료형(자리수)
--                ...
--              )
CREATE TABLE DEPT
AS
SELECT * FROM DEPARTMENT;

DROP TABLE DEPT;

--DNO
--DNAME
--LOC
--NUMBER(2,0)
--VARCHAR2(14 BYTE)
--VARCHAR2(13 BYTE)
-- 기본키 제약조건 만들기
-- 장점) 테이블의 데이터 중복을 방지(데이터 무결성을 보장해줌)
-- PRIMARY KEY : 1) NOT NULL 제약조건을 추가 2) UNIQUE 제약조건도 추가
-- (값이 무조건 들어가고, 중복이 없게 만드는 제약조건)
-- 사용법) CREATE TABLE DEPT (
--         컬럼 자료형(자리수) CONSTRAINT 제약조건명 PRIMARY KEY,
--         ...
--        );
CREATE TABLE DEPT (
    DNO NUMBER(2,0) CONSTRAINT PK_DEPT PRIMARY KEY,
    DNAME VARCHAR2(14),
    LOC  VARCHAR2(13)
);

-- 데이터 추가 테스트 : NULL 넣기(DNO)
-- 사용법: INSERT INTO 테이블(컬럼,컬럼2,...)
--        VALUES(값,'값2',...);
INSERT INTO DEPT(DNO,DNAME,LOC)
VALUES(NULL,'개발부','부산');  -- X

INSERT INTO DEPT(DNO,DNAME,LOC)
VALUES(10,'개발부','부산');  -- O

INSERT INTO DEPT(DNO,DNAME,LOC)
VALUES(10,'개발부2','대구');  -- X

-- 취소, 확정
ROLLBACK;

-- SQLD 대비
-- (참고) 2번째 PK 제약조건 추가하기
-- 사용법
-- CREATE TABLE 테이블 (
--    컬럼 자료형(자리수),
--    DNAME VARCHAR2(14)...,
--    CONSTRAINT 제약조건명 PRIMARY KEY(컬럼)
-- );
CREATE TABLE DEPT (
    DNO NUMBER(2,0),
    DNAME VARCHAR2(14),
    LOC  VARCHAR2(13),
    CONSTRAINT PK_DEPT PRIMARY KEY(DNO)
);
-- (참고) 3번째 PK 제약조건 추가하기: 테이블 만들고 난 후에 PK 추가하기
-- 사용법
CREATE TABLE DEPT (
    DNO NUMBER(2,0),
    DNAME VARCHAR2(14),
    LOC  VARCHAR2(13)
);
ALTER TABLE DEPT
ADD CONSTRAINT PK_DEPT PRIMARY KEY(DNO);

-- 복합키 : 컬럼 2개이상을 동시에 PK 로 추가하는 것을 의미
-- 예) 주문(쇼핑몰) : 고객이 (몇개의)상품명을 주문합니다.
--                  A,B 고객 지우개 상품을 주문할 수도 있습니다.
--                   홍길동     지우개
--                   홍길동     연필
--     복합키  : PRIMARY KEY(NAME, PRODUCT);
--     추천) 프로젝트 하실때는 복합키를 안쓰는게 좋습니다.(복잡함) -> 시퀀스(PK)
-- 테이블에는 PK 가 1개가 있어야 합니다.(데이터 중복 방지(유일성))










