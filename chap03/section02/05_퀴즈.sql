-- 퀴즈) 사원 테이블에서(EMPLOYEE) 사원명으로(ENAME) 오름차순 정렬하세요
-- 사원 테이블명: EMPLOYEE
-- 사원명: ENAME
-- 사용법) SELECT * FROM 테이블
--        ORDER BY 컬럼 ASC(생략가능);
-- SELECT * FROM EMPLOYEE
-- ORDER BY ENAME;
POST /employee/_search
{
  "query": {
    "match_all": {}  
  },
  "sort": [
    {"ename": "asc"}
  ]
}

-- 퀴즈) 사원 테이블에서(EMPLOYEE) 사원명으로(ENAME) 내림차순 정렬하세요
-- 사원명: ENAME
-- 사용법) SELECT * FROM 테이블
--        ORDER BY 컬럼 DESC;
-- SELECT * FROM EMPLOYEE
-- ORDER BY ENAME DESC;
POST /employee/_search
{
  "query": {
    "match_all": {}  
  },
  "sort": [
    {"ename": "desc"  }
  ]
}

POST /employee/_search
{
  "query": {
    "match_all": {}  
  },
  "sort": [
    {"_score": "desc" },
    {"ename": "desc"  }
  ]
}