-- CTRL + / 주석
-- 예제1) 부서정보 테이블을 전체 조회하세요
-- es 주석 없음
-- 명령어: POST /<index>/_search
-- {
--   "query": {
--     // 여기에 조건(Query DSL)이 들어갑니다.
--   }
-- }
-- 기본: 대소문자 구분하지 않습니다.
-- SELECT * FROM DEPARTMENT;
POST /department/_search
{
  "query": {
    "match_all": {}
  }
}

-- 예제2) 부서 테이블의 컬럼 중에 DNO, LOC 만 조회하세요
-- 사용법: SELECT 컬럼1,컬럼2,... FROM 테이블명;
-- SELECT DNO,LOC FROM DEPARTMENT;
POST /department/_search
{
  "_source": ["dno", "loc"],
  "query": {
    "match_all": {}
  }
}