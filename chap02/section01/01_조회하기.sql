-- 01_조회하기.sql
-- 복잡한 조회: POST 방식
-- TODO: 1) 전체조회:
-- sql : select * from department
--  _search : 조회 예약어
--  query - match_all : 전체조회
-- POST /인덱스명/_search
-- {
--    "query": {"match_all": {}}
-- }
POST /department/_search
{
  "query": {
    "match_all": {}
  }
}

-- TODO: 2) 전체조회: 일부 필드(컬럼)만 보기
--  sql : select dno,dname from department
--  사용법: -- POST /인덱스명/_search
--         {
--             "_source": ["필드명", "필드명2"],
--             "query": {"match_all": {}}
--         }
POST /department/_search
{
  "_source": ["dno", "dname"], 
  "query": {
    "match_all": {}
  }
}