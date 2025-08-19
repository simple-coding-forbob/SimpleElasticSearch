-- 직위별(JOB) 평균 급여를 화면에 표시하세요
-- 단, 소수점은 내림하세요(절삭)
-- 사원 테이블명: EMPLOYEE
-- 월급        : SALARY
-- 직위        : JOB
-- 사용법) SELECT 컬럼, TRUNC(AVG(컬럼2)) FROM 테이블
--        GROUP BY 컬럼;
-- 그룹        : 직위별(JOB)
-- SELECT JOB, AVG(SALARY) as avg_salary FROM EMPLOYEE
-- GROUP BY JOB;
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "by_job": {
      "terms": {"field": "job",},
      "aggs": {
        "avg_salary": {"avg": {"field": "salary"}}
      }
    }
  }
}
