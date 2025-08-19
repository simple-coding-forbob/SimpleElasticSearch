-- 부서번호(DNO)가 20 및 30에 속한 (이거나,또는 OR, IN)
-- 사원의 이름(ENAME)과 부서번호(DNO)를 출력하되 
-- 이름을 기준으로 내림차순 출력하세요(정렬)
-- 조건: 부서번호(DNO)가 20 및 30에 속한(이거나,또는 OR, IN)
-- 사원 테이블명: EMPLOYEE
-- 사원명      : ENAME
-- 부서번호    : DNO
-- 사용법) SELECT * FROM 테이블
--        WHERE  컬럼 >= 값
--        ORDER BY 컬럼 ASC[DESC];
-- SELECT ENAME, DNO FROM EMPLOYEE
-- WHERE  DNO IN (20,30)
-- ORDER BY ENAME DESC;
POST /employee/_search
{
  "_source": ["ename", "dno"],
  "query": {
    "terms": {"dno": [20, 30]}
  },
  "sort": [
    {"ename.keyword": {"order": "desc"}}
  ]
}






-- 사원의 급여(SALARY)가 2000 에서 3000 사이에 포함되고
-- 부서번호(DNO)가 20 또는 30인
-- 사원의 이름(ENAME), 급여와(SALARY) 부서번호를(DNO) 출력하되 
-- 이름순(오름차순)으로 표시하세요
-- 힌트) 1개씩 풀어서 합치기
-- 사원 테이블명: EMPLOYEE
-- 사원명      : ENAME
-- 부서번호    : DNO
-- 급여        : SALARY
-- 사용법) SELECT * FROM 테이블
--        WHERE  컬럼 >= 값
--        ORDER BY 컬럼 ASC[DESC];
-- 조건 1: 사원의 급여(SALARY)가 2000 에서 3000 사이에 포함(a~b사이 포함: between a and b)
-- 조건 2: 부서번호(DNO)가 20 또는 30인(or, in)
-- 정렬  : 이름순(오름차순)으로 표시
-- SELECT ENAME, SALARY, DNO FROM EMPLOYEE
-- WHERE  SALARY between 2000 and 3000
-- AND    DNO IN (20,30)
-- ORDER BY ENAME;
POST /employee/_search
{
  "_source": ["ename", "salary", "dno"],
  "query": {
    "bool": {
      "must": [
        {
          "range": {"salary": {"gte": 2000,"lte": 3000}}
        },
        {
          "terms": {"dno": [20, 30]}
        }
      ]
    }
  },
  "sort": [
    {"ename.keyword": {"order": "asc"}}
  ]
}




-- 1981년도에 입사한 사원의 이름(ENAME)과 입사일(HIREDATE)을 표시하세요
-- 사원 테이블명: EMPLOYEE
-- 사원명      : ENAME
-- 입사일        : HIREDATE
-- 사용법) SELECT * FROM 테이블
--        WHERE  컬럼 >= 값
--        ORDER BY 컬럼 ASC[DESC];
-- 조건1: 1981년도에 입사한 사원 : 1981/01/01 ~ 1981/12/31 사이에 입사한 사원(BETWEEN A AND B)
-- SELECT ENAME,HIREDATE  FROM EMPLOYEE
-- WHERE  HIREDATE BETWEEN '81/01/01' AND '81/12/31';
POST /employee/_search
{
  "_source": ["ename", "hiredate"],
  "query": {
    "range": {
      "hiredate": {"gte": "1981-01-01","lte": "1981-12-31"}
    }
  }
}




-- 관리자가(MANAGER) 없는 사원의 이름(ENAME)과 직위를(JOB) 표시하세요
-- 사원 테이블명: EMPLOYEE
-- 사원명      : ENAME
-- 직위        : JOB
-- 관리자      : MANAGER
-- 사용법) 
-- 조건 : 관리자가(MANAGER) 없는 사원
-- SELECT ENAME,JOB  FROM EMPLOYEE
-- WHERE  MANAGER IS NULL;
POST /employee/_search
{
  "_source": ["ename", "job"],
  "query": {
    "bool": {
      "must_not": {"exists": {"field": "manager"}
      }
    }
  }
}





