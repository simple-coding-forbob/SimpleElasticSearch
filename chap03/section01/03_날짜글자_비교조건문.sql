-- 예제) 입사일(HIREDATE) 이 '1981/01/01' 이전인(이하) 사원만 표시하세요
-- 숫자: 그냥, 글자: '값'
-- 사용법) SELECT 컬럼,... FROM 테이블
--        WHERE 컬럼 = '값';
-- 사원테이블: EMPLOYEE
-- 입사일   : HIREDATE
-- 전체컬럼 : *
-- 조건    : 입사일(HIREDATE) 이 '1981/01/01' 이전인
-- (참고)  : DB 의 자료형: 글자(VARCHAR2) , 숫자(NUMBER), 날짜(DATE)
--          입사일(DATE 형)
-- SELECT * FROM EMPLOYEE
-- WHERE HIREDATE <= '1981/01/01';
POST /employee/_search
{
  "query": {
    "range": {"hiredate": {"lte": "1981-01-01"}}
  }
}


