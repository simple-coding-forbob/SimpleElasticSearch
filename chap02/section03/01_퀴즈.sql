-- 예제2) 사원 인덱스의 문서번호로 조회하세요
-- 단 문서번호를 확인후 조회하세요
-- 사용법: SELECT 컬럼1,컬럼2,... FROM 테이블명;
-- 문서번호 조회;
POST /employee/_search
{
  "query": {
    "match_all": {}
  }
}

GET /employee/_doc/LG78cZgBWKne6-Tzg6zT