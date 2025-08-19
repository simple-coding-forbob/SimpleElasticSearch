-- 예제) 상여금(COMMISSION) 이 NULL 인 사원을 조회
-- 사원 테이블명: EMPLOYEE
-- 상여금      :COMMISSION
-- SELECT * FROM EMPLOYEE
-- WHERE COMMISSION IS NULL;
POST /employee/_search
{
  "query": {
    "bool": {
      "must_not": {"exists": {"field": "commission"}}
    }
  }
}

-- 예제) 상여금(COMMISSION) 이 NULL 이 아닌 사람 조회하세요
-- 사원 테이블명: EMPLOYEE
-- 상여금      : COMMISSION
-- 전체컬럼보기 : *
-- 긍정) 상여금(COMMISSION) 이 NULL 인 사람의 반대(NOT)
-- 사용법) SELECT * FROM 테이블
--        WHERE 컬럼 IS NOT NULL;
-- SELECT * FROM EMPLOYEE
-- WHERE COMMISSION IS NOT NULL;
POST /employee/_search
{
  "query": {
    "bool": {
      "must": {"exists": {"field": "commission"}}
    }
  }
}





