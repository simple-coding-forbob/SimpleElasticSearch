-- 예제) SCOTT 사원보다 급여를(SALARY) 많이 받는 사원이 누구인지 화면에 표시하세요
-- es 는 서브쿼리가 없습니다. 아래처럼 2번 조회해야 합니다.
POST /employee/_search
{
  "_source": ["salary"],
  "query": {
    "term": { "ename.keyword": "SCOTT" }
  },
  "size": 1
}

-- 3000 급여를(SALARY) 많이 받는 사원
POST /employee/_search
{
  "query": {
    "range": {
      "salary": {
        "gt": 3000
      }
    }
  }
}
