-- 퀴즈) ALLEN 사원보다 급여를(SALARY) 작게 받는 사원이 누구인지 표시하세요
-- 사원 테이블명: EMPLOYEE
-- 월급        : SALARY
-- 사원명      : ENAME
-- 사용법: SELECT * FROM 테이블1
--        WHERE 컬럼2 > (SELECT 컬럼2 FROM 테이블2
--                        WHERE 컬럼 = '값');
-- 서브쿼리: ALLEN 사원의 급여
-- 힌트1) ALLEN 사원의 급여: 1600
POST /employee/_search
{
  "_source": ["salary"],
  "query": {
    "term": { "ename.keyword": "ALLEN" }
  }
}

POST /employee/_search
{
  "query": {
    "range": {
      "salary": {
        "gt": 1600
      }
    }
  }
}

