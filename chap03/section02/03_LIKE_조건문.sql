-- 예제) 이름이(ENAME) 'F' 로 시작하는 사원 조회하기(*)
-- 사원 테이블명: EMPLOYEE
-- 상여금       : COMMISSION
-- 사원명      : ENAME
-- 글자        : '값'
-- 숫자        : 값
-- 사용법) SELECT * FROM 테이블
--        WHERE 컬럼 LIKE '%글자%';
-- % : 아무 글자나 올 수 있음
-- SELECT * FROM EMPLOYEE
-- WHERE ENAME LIKE 'F%';
-- 성능느림 => match(자연어 검색) 검색(단어 단위 검색)
POST /employee/_search
{
  "query": {
    "wildcard": {"ename.keyword": {"value": "F*"}}
  }
}


--예제) 이름의 두번째 글자가 'A' 인 사원 조회하기
-- 사원 테이블명: EMPLOYEE
-- 사원명      : ENAME
-- % : 아무 글자나 올 수 있음(*, 실무)
-- _ : 어떤 1문자를 의미(sqld 기출문제)
-- SELECT * FROM EMPLOYEE
-- WHERE ENAME LIKE '_A%';
POST /employee/_search
{
  "query": {
    "wildcard": {"ename.keyword": {"value": "?A*"}}
  }
}
