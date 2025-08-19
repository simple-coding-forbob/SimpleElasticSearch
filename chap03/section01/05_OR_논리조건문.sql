-- 예제) 부서 번호가(DNO) 10이거나 또는 직급이(JOB) 'MANAGER' 인 사원만 출력하기
-- 사원테이블: EMPLOYEE
-- 부서번호  : DNO
-- 직급      : JOB
-- 전체컬럼  : *
-- 조건1    : 부서 번호가(DNO) 10이거나 또는(OR)
-- OR 연산자 뜻: 조건1 포함되고, 조건2도 포함되고, 동시에 (조건1 AND 조건2) 포함될때는 것을 의미함
-- 조건2    : 직급이(JOB) 'MANAGER' 인
-- 사용법) SELECT 컬럼,... FROM 테이블
--        WHERE 컬럼 >= '값';
-- SELECT * FROM EMPLOYEE
-- WHERE DNO = 10 OR JOB='MANAGER';
POST /employee/_search
{
  "query": {
    "bool": {"should": [{ "term": { "dno": 10 } },
                        { "term": { "job.keyword": "MANAGER" } }],
    }
  }
}
