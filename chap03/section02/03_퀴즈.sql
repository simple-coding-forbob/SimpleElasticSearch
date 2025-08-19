-- 퀴즈) 이름에(ENAME) 'M' 으로 시작하는 사원 조회하기
-- 사원테이블: EMPLOYEE
-- 사원명    : ENAME
-- 전체컬럼보기: *
-- 사용법) SELECT * FROM 테이블
--        WHERE 컬럼 LIKE '%글자%';
-- % : 아무 글자나 올 수 있음
-- SELECT * FROM EMPLOYEE
-- WHERE ENAME LIKE 'M%';
POST /employee/_search
{
  "query": {
    "wildcard": {"ename.keyword": {"value": "M*"}}
  }
}

--퀴즈) 이름의 두번째 글자가 'O' 인 사원 조회하기
-- 사원테이블: EMPLOYEE
-- 사원명    : ENAME
-- 사용법) SELECT * FROM 테이블
--        WHERE 컬럼 LIKE '_글자%';
-- % : 아무 글자나 올 수 있음
-- _ : 어떤 1문자를 의미(sqld 기출문제)
-- SELECT * FROM EMPLOYEE
-- WHERE ENAME LIKE '_O%';
POST /employee/_search
{
  "query": {
    "wildcard": {"ename.keyword": {"value": "?O*"}}
  }
}







