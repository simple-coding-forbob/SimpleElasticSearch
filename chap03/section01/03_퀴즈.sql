-- 퀴즈) 입사일(HIREDATE) 이 '1987/01/01' 이상인 사원만 표시하세요
-- 사원테이블: EMPLOYEE
-- 입사일: HIREDATE
-- 조건  : 입사일(HIREDATE) 이 '1987/01/01' 이상인
-- 전체컬럼: *
-- SELECT * FROM EMPLOYEE
-- WHERE HIREDATE >= '1987/01/01';
POST /employee/_search
{
  "query": {
    "range": {"hiredate": {"gte": "1987-01-01"}}
  }
}