-- 예제) SALARY 로 1500 이상인 사원 조회하기
-- 사용법) SELECT 컬럼 FROM 테이블
--        WHERE 컬럼 >= 값;
-- 사원: EMPLOYEE
-- 조건 : 비교연산자 사용
-- SQL 비교연산자: 부등호, =(같다), !=, <>(같지않다)
-- SELECT ENAME,SALARY FROM EMPLOYEE
-- WHERE SALARY >= 1500;
POST /employee/_search
{
  "_source": ["ename", "salary"], 
  "query": {
    "range": {"salary": {"gte": 1500 }}
  }
}

-- 퀴즈) 급여가(SALARY) 1000 과 1500 사이의 사원 조회하기
-- 사원테이블: EMPLOYEE
-- 급여     : SALARY
-- 전체 컬럼 : *
-- 조건1    : 급여가(SALARY) 1000 이상이고(AND)
-- 조건2    : 급여가 1500 이하인
-- SELECT ENAME,SALARY FROM EMPLOYEE
-- WHERE SALARY >= 1000 
-- AND SALARY <= 1500;
POST /employee/_search
{
  "_source": ["ename", "salary"], 
  "query": {
    "range": {"salary": {"gte": 1500,"lte": 5000}}
  }
}

-- 예제) SALARY 로 1500 인 사원 조회하기
-- SELECT ENAME,SALARY FROM EMPLOYEE
-- WHERE SALARY = 1500;
POST /employee/_search
{
  "_source": ["ename", "salary"],
  "query": { 
    "term": { "salary": 1500 } 
  }
}
