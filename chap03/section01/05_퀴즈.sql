-- 퀴즈) 부서 번호가(DNO) 20이거나 직급이(JOB) 'MANAGER' 인 사원만 표시하세요
-- 사원테이블: EMPLOYEE
-- 부서번호  : DNO
-- 작급     : JOB
-- 전체컬럼  : *
-- 사용법) SELECT 컬럼,... FROM 테이블
--        WHERE 컬럼 >= '값';
-- 조건1    : 부서 번호가(DNO) 20이거나(OR)
-- 조건2    : 직급이(JOB) 'MANAGER' 인
-- SELECT * FROM EMPLOYEE
-- WHERE DNO = 20 OR JOB='MANAGER';
POST /employee/_search
{
  "query": {
    "bool": {"should": [{ "term": { "dno": 20 } },
                        { "term": { "job.keyword": "MANAGER" } }]
    }
  }
}










