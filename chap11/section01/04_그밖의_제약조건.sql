-- £테이블에 디폴트 기능 및 CHECK 제약 조건 넣기
-- ①예제) EMP3 SALARY 컬럼에 DEFAULT 기능을 추가하세요
-- 단, INSERT 시 컬럼이 생략될 경우 1000이 입력되게 하세요
-- 1) 디폴트 기능
-- 사용법) CREATE TABLE 테이블 (
--                컬럼 자료형(자리수) DEFAULT 대체값,
--                ...
--        );
CREATE TABLE EMP3 (
              ENO NUMBER(4),
              SALARY NUMBER(7,2) DEFAULT 1000
);
-- SALARY 생략: 값 (NULL)
-- 디폴트(기본값) : 데이터 추가 시 NULL 일 경우 특정값으로 대체해서 추가함
INSERT INTO EMP3(ENO)
VALUES(8000);

COMMIT;

-- 2) CHECK 제약조건
-- 사용법) CREATE TABLE 테이블 (
--              컬럼 자료형(자리수) CONSTRAINT 제약조건면 CHECK(조건식),
--              ...
--       );
CREATE TABLE EMP4 (
              ENO NUMBER(4),
              SALARY NUMBER(7,2) CONSTRAINT CK_EMP4_SALARY CHECK(SALARY>0)
);
-- 데이터 추가 테스트
INSERT INTO EMP4(ENO, SALARY)
VALUES(8000,-200);   -- X

-- 생략: 테이블 만든 후 추가도 가능 : ALTER TABLE ~



