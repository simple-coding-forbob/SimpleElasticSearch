-- 주석단축키: ctrl + /
-- 예제) 상여금(COMMISSION) 300 이거나 500 이거나 1400 인 사원 조회하기
-- 논리연산자: AND(논리곱, 이고, 동시에), OR(논리합, 이거나, 또는)
-- 비교연산자: >,<,=(같다), !=(같지않다), <>(같지않다)
-- 사용법) SELECT * FROM 테이블
--        WHERE 컬럼 >= 값;
-- 사원테이블: EMPLOYEE
-- 상여금    : COMMISSION
-- 전체컬럼보기: *
-- SELECT * FROM EMPLOYEE
-- WHERE COMMISSION IN (300,500,1400);
POST /employee/_search
{
  "query": {
    "terms": {"commission": [300, 500, 1400]}
  }
}

-- 예제) 상여금(COMMISSION) 300 이거나 500 이거나 1400 이 아닌 사원 조회하기
-- SELECT * FROM EMPLOYEE
-- WHERE COMMISSION NOT IN (300,500,1400);
POST /employee/_search
{
  "query": {
    "bool": {"must_not": {
                "terms": {"commission": [300, 500, 1400]}}
    }
  }
}
