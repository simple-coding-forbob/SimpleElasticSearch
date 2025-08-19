-- 예제) 부서번호별(DNO), 직위별(JOB) 급여(SALARY) 총액(SUM) 화면에 표시하세요
-- 사원 테이블명: EMPLOYEE
-- 부서번호     : DNO
-- 직위        : JOB
-- 월급         : SALARY
-- 사용법) SELECT 컬럼1,컬럼2,... ,SUM(컬럼3) FROM 테이블
--        GROUP BY 컬럼1, 컬럼2,...;
-- 그룹1       : 부서번호별(DNO)
-- 그룹2       : 직위별(JOB)
-- SELECT DNO,JOB, SUM(SALARY) as sum_salary FROM EMPLOYEE
-- GROUP BY DNO, JOB
-- ORDER BY DNO;
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "by_dno": {
      "terms": {"field": "dno", "order": { "_key": "asc" }},
      "aggs": {
        "by_job": {
          "terms": {"field": "job",},
          "aggs": {
            "sum_salary": {"sum": {"field": "salary"}}
          }
        }
      }
    }
  }
}
