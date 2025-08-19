-- 예제) 부서별(DNO) 평균 급여를(SALARY) 부서번호와 함께 화면에 표시하세요
-- 단, 소수점은 내림하세요(절삭)
-- 사원 테이블명: EMPLOYEE
-- 부서번호     : DNO
-- 월급         ; SALARY
-- 사용법) SELECT 컬럼, TRUNC(AVG(컬럼2)) FROM 테이블
--        GROUP BY 컬럼;
-- 그룹        : 부서별 (같은 부서번호끼리(부분 데이터에 대해) 묶어서 보기)
-- SELECT DNO, AVG(SALARY) as avg_salary FROM EMPLOYEE
-- GROUP BY DNO;
-- "size": 100  // 그룹화할 최대 개수(안 size)
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "by_dno": {
      "terms": {"field": "dno"},
      "aggs": {
        "avg_salary": {"avg": {"field": "salary"}}
      }
    }
  }
}
