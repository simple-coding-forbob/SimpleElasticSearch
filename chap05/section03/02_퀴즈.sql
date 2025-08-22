-- 퀴즈) 부서 번호별(DNO), 직위별(JOB) 평균 급여를 화면에 표시하세요
-- 사원 테이블명:EMPLOYEE
-- 부서번호     :DNO
-- 직위         : JOB
-- 사용법) SELECT 컬럼1,컬럼2,... ,COUNT(*) FROM 테이블
--        GROUP BY 컬럼1, 컬럼2,...;
-- 그룹1   :부서 번호별(DNO)
-- 그룹2   : 직위별(JOB)
-- SELECT DNO, JOB, AVG(SALARY) as avg_salary  FROM EMPLOYEE
-- GROUP BY DNO, JOB
-- ORDER BY DNO desc;
-- "order": { "_key": "desc" }  // DNO 값을 기준으로 내림차순 정렬
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "by_dno": {
      "terms": {"field": "dno", "order": { "_key": "desc" }},
      "aggs": {
        "by_job": {
          "terms": {"field": "job.keyword"},
          "aggs": {
            "avg_salary": {"avg": {"field": "salary"}}
          }
        }
      }
    }
  }
}
