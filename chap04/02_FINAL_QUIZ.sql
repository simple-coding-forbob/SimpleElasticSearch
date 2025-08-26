-- 급여가(SALARY) 2000을 넘는 사원의 이름과(ENAME) 급여를 
-- 급여가 많은 것부터 작은 순으로 출력하세요(내림차순)
-- 사원 테이블명: EMPLOYEE
-- 사원명      : ENAME
-- 급여        : SALARY
-- 사용법) SELECT * FROM 테이블
--        WHERE  컬럼 >= 값
--        ORDER BY 컬럼 ASC[DESC];
-- 조건        : 급여가(SALARY) 2000을 넘는
-- 복잡한 것은 쪼개서 생각하기
-- SELECT * FROM EMPLOYEE
-- WHERE  SALARY > 2000
-- ORDER BY SALARY DESC;
POST /employee/_search
{
  "query": {
    "range": {"salary": {"gt": 2000  }}
  },
  "sort": [
    {"salary": {"order": "desc"  }}
  ]
}



-- 사원번호가(ENO) 8000 인 사원의 이름과(ENAME) 
--부서번호를(DNO) 표시하세요
-- 사원 테이블명: EMPLOYEE
-- 사원번호     : ENO
-- 사원명       : ENAME
-- 부서번호     : DNO
-- 사용법) SELECT * FROM 테이블
--        WHERE  컬럼 >= 값
--        ORDER BY 컬럼 ASC[DESC];
-- 조건         : 사원번호가(ENO) 7788 인
-- SELECT ENAME,DNO FROM EMPLOYEE
-- WHERE  ENO = 8000;
POST /employee/_search
{
  "_source": ["ename", "dno"],  
  "query": {
    "term": {"eno": 7788  }
  }
}


-- 급여가(SALARY) 2000에서 3000 사이에 포함되지 않는 
--사원의 이름과(ENAME) 급여를 표시하세요.
-- 사원 테이블명: EMPLOYEE
-- 사용법) SELECT * FROM 테이블
--        WHERE  컬럼 >= 값
--        ORDER BY 컬럼 ASC[DESC];
-- 조건        : 급여가(SALARY) 2000에서 3000 사이에 포함되지 않는
-- 1) 긍정 -> 2) NOT 
-- SELECT ENAME,SALARY FROM EMPLOYEE
-- WHERE  SALARY NOT BETWEEN 2000 AND 3000;
POST /employee/_search
{
  "_source": ["ename", "salary"],  
  "query": {
    "bool": {
      "must_not": {
        "range": {"salary": {"gte": 2000,  "lte": 3000}}
      }
    }
  }
}



-- 1981년 2월 20일 부터 1981년 5월 1일 사이에 입사한 사원의 
--이름(ENAME), 직위(JOB), 입사일(HIREDATE)을 표시하세요
-- 사원 테이블명: EMPLOYEE
-- 사원명      : ENAME
-- 직위       : JOB
-- 입사일      : HIREDATE
-- 사용법) SELECT * FROM 테이블
--        WHERE  컬럼 >= 값
--        ORDER BY 컬럼 ASC[DESC];
-- 조건       : 1981년 2월 20일 부터 1981년 5월 1일 사이에
-- '80/12/17'
-- SELECT ENAME,JOB,HIREDATE  FROM EMPLOYEE
-- WHERE  HIREDATE BETWEEN '81/02/20' AND '81/05/01';
POST /employee/_search
{
  "_source": ["ename", "job", "hiredate"],  
  "query": {
    "range": {"hiredate": {"gte": "1981-02-20",  "lte": "1981-05-01"   }}
  }
}





