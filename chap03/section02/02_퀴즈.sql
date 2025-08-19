-- 퀴즈) 부서번호가(DNO) 10 이거나 20 인 사원들 화면에 표시하세요
-- 단, IN 예약어 사용하세요
-- 사원테이블: EMPLOYEE
-- 부서번호  : DNO
-- 전체컬럼보기: *
-- 사용법) SELECT * FROM 테이블
--        WHERE 컬럼 IN (값1,값2...);
-- SELECT * FROM EMPLOYEE
-- WHERE DNO IN (10,20);
POST /employee/_search
{
  "query": {
    "terms": {"dno": [10, 20]}
  }
}

--퀴즈) 부서번호가(DNO) 10 이거나 20 이 아닌 사원들 화면에 표시하세요
--단, IN 예약어 사용하세요
-- 사원테이블: EMPLOYEE
-- 부서 번호 : DNO
-- SELECT * FROM EMPLOYEE
-- WHERE DNO NOT IN (10,20);
POST /employee/_search
{
  "query": {
    "bool": {"must_not": {
                "terms": {"dno": [10,20]}}
    }
  }
}



