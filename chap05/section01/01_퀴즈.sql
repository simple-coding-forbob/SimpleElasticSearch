-- 퀴즈) 사원들의 급여(SALARY) 평균, 최소액을 화면에 표시하세요
-- SELECT AVG(SALARY),MIN(SALARY) FROM EMPLOYEE;
POST /employee/_search
{
  "size": 0, 
  "aggs": {
    "average_salary": {"avg": {"field": "salary"}},
    "min_salary": {"min": {"field": "salary"}}
  }
}
