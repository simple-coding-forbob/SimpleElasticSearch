-- 예제) 사원명(ENAME) 이 SCOTT 인 사원의 정보를 출력하세요
-- 화면표시: * : 전체 컬럼선택
-- 사원: EMPLOYEE
-- 사원명: ENAME
-- 조건: 사원명(ENAME) 이 SCOTT 인 : ENAME = 'SCOTT'
-- 사용법) SELECT 컬럼,... FROM 테이블
--        WHERE 컬럼 = '값';
-- SQL : 글자 : '값'
-- select * from employee
-- where ename='scott';
POST /employee/_search
{
  "query": {
    "term": {"ename.keyword": "SCOTT"}
  }
}
