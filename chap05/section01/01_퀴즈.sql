-- 퀴즈) 사원들의 급여(SALARY) 평균, 최소액을 화면에 표시하세요
-- 사원 테이블명: EMPLOYEE
-- 월급        : SALARY
-- 사용법) SELECT SUM(컬럼), MAX(컬럼),ROUND(AVG(컬럼)),MIN(컬럼) FROM 테이블;
-- SELECT AVG(SALARY),MIN(SALARY) FROM EMPLOYEE;
POST /employee/_search
{
  "size": 0, 
  "aggs": {
    "average_salary": {"avg": {"field": "salary"}},
    "min_salary": {"min": {"field": "salary"}}
  }
}
