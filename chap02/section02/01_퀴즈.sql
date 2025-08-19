-- 사원테이블: EMPLOYEE
-- 전체 조회 하세요
-- SELECT * FROM employee;
POST /employee/_search
{
  "query": {
    "match_all": {}
  }
}

-- 2) 사원 테이블의 컬럼 중에 ENO, ENAME 만 조회하세요
-- SELECT ENO, ENAME FROM employee;
POST /employee/_search
{
  "_source": ["eno", "ename"],
  "query": {
    "match_all": {}
  }
}
