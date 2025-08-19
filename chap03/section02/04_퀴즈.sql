-- 퀴즈) 사원테이블(EMPLOYEE)에 MANAGER(관리자) 컬럼이 있습니다.
-- 관리자가(MANAGER) NULL 인 사원을 표시하세요
-- 사원 테이블명: EMPLOYEE
-- 관리자      : MANAGER
-- 답 : 사장님
-- 전체컬럼보기 : *
-- 사용법) SELECT * FROM 테이블
--        WHERE 컬럼 IS NULL;
-- SELECT * FROM EMPLOYEE
-- WHERE MANAGER IS NULL;
POST /employee/_search
{
  "query": {
    "bool": {
      "must_not": {"exists": {"field": "manager"}}
    }
  }
}