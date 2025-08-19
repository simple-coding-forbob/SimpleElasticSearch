-- 예제) 10번 부서(DNO) 에 소속된 사원은 제외하고(NOT) 출력하기
--   긍정) 10번 부서(DNO) 에 소속된 사원만 출력하기
-- 사원테이블: EMPLOYEE
-- 부서번호  : DNO
-- 전체컬럼  : *
-- 사용법) SELECT 컬럼,... FROM 테이블
--        WHERE 컬럼 >= '값';
-- 조건     : 10번 부서(DNO) 에 소속된 사원 의 반대(NOT)
-- SELECT * FROM EMPLOYEE
-- WHERE NOT DNO = 10;
POST /employee/_search
{
  "query": {
    "bool": {"must_not": [{ "term": { "dno": 10 } }]
    }
  }
}
