-- 퀴즈) 부서테이블에서 dno(부서번호) 가 20보다 큰 부서만 표시하세요
-- 사용법) select 컬럼 from 테이블
--        where 컬럼 >= 값;
-- select dno,dname,loc from department 
-- where dno > 20;
POST /department/_search
{
  "_source": ["dno", "dname","loc"], 
  "query": {
    "range": {"dno": {"gt": 20  }}
  }
}

-- 퀴즈) 급여가(SALARY) 1000 과 1500 사이의 사원 조회하기
-- 사원테이블: EMPLOYEE
-- 급여     : SALARY
-- 전체 컬럼 : *
-- 조건1    : 급여가(SALARY) 1000 이상이고(AND)
-- 조건2    : 급여가 1500 이하인
-- SELECT * FROM EMPLOYEE
-- WHERE SALARY >= 1000 
-- AND SALARY <= 1500;
POST /employee/_search
{
  "query": {
    "range": {"salary": {"gte": 1000,"lte": 1500}}
  }
}

-- 퀴즈) 사원 테이블에서 dno(부서번호) 10 인 사원을 찾아 전체 출력하세요
-- =(같다)
-- * : 전체 컬럼 선택
-- select * from employee
-- where dno = 10;
POST /employee/_search
{
  "_source": ["*"],
  "query": { 
    "term": { "dno": 10 } 
  }
}

-- 퀴즈) 사원테이블에서 월급이 5000 인 사람의 이름을 출력하세요
-- 사원: employee
-- 월급: salary
-- 사원명: ename
-- 사용법) select 컬럼 from 테이블
--        where 컬럼 >= 값;
-- select ename from employee
-- where salary = 5000;
POST /employee/_search
{
  "_source": ["ename"],
  "query": { 
    "term": { "salary": 5000 } 
  }
}





