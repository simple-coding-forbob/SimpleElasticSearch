-- 퀴즈) SAMPLE_SEQ2 시퀀스를 1부터 시작해서 1씩 증가시키는 시퀀스 생성
-- 사용법) CREATE SEQUENCE 시퀀스이름
--        INCREMENT BY 증가값
--        START WITH 시작값
--        MINVALUE 최소값 (생략가능)
--        MAXVALUE 최대값 (생략가능)
CREATE SEQUENCE SAMPLE_SEQ2
INCREMENT BY 1
START WITH 1;

-- SAMPLE_SEQ2.NEXTVAL
SELECT SAMPLE_SEQ2.NEXTVAL FROM DUAL;


