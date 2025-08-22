-- 01_숫자_비교조건문.sql
--  select ename, salary from employee
--  where salary >= 1500
-- TODO: 1) 숫자 범위 조건문: query - range
-- TODO: gte(>=), gt(>), lte(<=), lt(<)
-- TODO: 사용법: POST /employee/_search
--              {
--                 "_source": ["필드", "필드2",...],
--                 "query": {"range": {"필드3": {"gte": 값}}
--              }
POST /employee/_search
{
  "_source": ["ename", "salary"],
  "query": {
    "range": {
      "salary": {
        "gte": 1500
      }
    }
  }
}

-- TODO: 2) 정확히 일치하는 값 조회: query - term
--  select ename, salary from employee
--  where salary = 1500
-- TODO: 사용법: POST /employee/_search
--              {
--                 "_source": ["필드", "필드2",...],
--                 "query": {"term": {"필드3": {"value": "값"}}
--              }
POST /employee/_search
{
  "_source": ["ename", "salary"],
  "query": {
    "term": {
      "salary": {
        "value": "1500"
      }
    }
  }
}