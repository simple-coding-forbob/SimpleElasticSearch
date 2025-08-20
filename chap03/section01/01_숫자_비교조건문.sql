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
