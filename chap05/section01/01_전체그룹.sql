-- 예제) 사원들의 급여(SALARY) 총액, 최고액을 화면에 표시하세요
-- 사원 테이블명: EMPLOYEE
-- 월급        : SALARY
-- 사용법) SELECT SUM(컬럼), MAX(컬럼) FROM 테이블;
-- 특징: 데이터를 집계(합계,평균 등)할때 NULL 은 자동제외해서 구함
-- SELECT SUM(SALARY) AS 총액
--       ,MAX(SALARY) AS 최고액
-- FROM EMPLOYEE;
-- "size": 0,  // 결과 문서를 반환하지 않음, 집계 결과만 필요
POST /employee/_search
{
  "size": 0,  
  "aggs": {
    "total_salary": {"sum": {"field": "salary"}},
    "max_salary": {"max": {"field": "salary"}}
  }
}
