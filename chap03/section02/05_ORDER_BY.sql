-- 예제) 사원(EMPLOYEE) 테이블 오름차순 정렬하기
-- 단, 월급(SALARY)으로 정렬하세요
-- 사원 테이블명: EMPLOYEE
-- 월급        : SALARY
-- 오름차순(ASCENDING): 낮은순 ~ 높은순으로 정렬(생략)
-- 내림차순    : 높은순 ~ 낮은순으로 정렬
-- 사용법) SELECT * FROM 테이블
--        ORDER BY 컬럼 ASC(생략가능);
-- SELECT * FROM EMPLOYEE
-- ORDER BY SALARY;
POST /employee/_search
{
  "query": {
    "match_all": {}  
  },
  "sort": [
    {"salary": {"order": "asc"  }}
  ]
}


--예제) 사원(EMPLOYEE) 테이블 내림차순 정렬하기
--단, 월급(SALARY)으로 정렬하세요
-- 사원: EMPLOYEE
-- 월급: SALARY
-- 내림차순(DESCENDING)
-- 사용법) SELECT * FROM 테이블
--        ORDER BY 컬럼 DESC;
-- SELECT * FROM EMPLOYEE
-- ORDER BY SALARY DESC;
POST /employee/_search
{
  "query": {
    "match_all": {}  
  },
  "sort": [
    {"salary": "desc"}
  ]
}

POST /employee/_search
{
  "query": {
    "match_all": {}  
  },
  "sort": [
    {"_score": "desc" },
    {"salary": "desc" }
  ]
}