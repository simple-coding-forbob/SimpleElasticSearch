-- 예제) 부서번호(dno)의 종류가 몇 개인지 출력하기
-- 단, DISTINCT 예약어를 사용하세요
-- 사원 테이블명: EMPLOYEE
-- 직위      : JOB
-- 사용법) SELECT COUNT(DISTINCT 컬럼) FROM 테이블;
-- 해석) 중복제거하고 세기
-- SELECT COUNT(DISTINCT dno) FROM EMPLOYEE;
-- cardinality: 유일한 값 세기
-- siz: 0 -  검색 결과 문서(hit)는 하나도 가져오지 않는다는 의미입니다.
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "distinct_jobs": {"cardinality": {"field": "dno"}}
  }
}

-- SELECT DISTINCT dno FROM EMPLOYEE;
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "distinct_jobs": {"terms": {"field": "dno"}}
  }
}
