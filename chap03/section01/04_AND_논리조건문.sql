-- 예제) 부서 번호(DNO) 가 10이고 직급이(JOB) 'MANAGER' 사원을 출력하세요
-- 사용법) SELECT 컬럼,... FROM 테이블
--        WHERE 컬럼 = '값';
-- 사원테이블: EMPLOYEE
-- 부서번호: DNO
-- 직급   : JOB
-- 전체컬럼: *
-- 글자 : '값'
-- 숫자 : 1 
-- 조건1 : 부서 번호(DNO) 가 10이고(그리고, AND)
-- 조건2 : 직급이(JOB) 'MANAGER' 인
-- SQL 논리연산자: AND(그리고), OR(또는), NOT(부정, 반대)
-- SELECT * FROM EMPLOYEE 
-- WHERE DNO = 10 
-- AND JOB='MANAGER';
POST /employee/_search
{
  "query": {
    "bool": {"must": [{ "term": { "dno": 10 } },
                      { "term": { "job.keyword": "MANAGER" } }]
    }
  }
}
