-- 사원 테이블에서 JOB이(직위) 'MANAGER' 인 사원의 데이터를 뽑아서
-- ENAME(사원명)으로 오름차순 정렬하세요
-- 사원 테이블명: EMPLOYEE
-- 사원명      : ENAME
-- 직위        : JOB
-- 조건1       : JOB이(직위) 'MANAGER' 인
-- 정렬        : ENAME(사원명)으로 오름차순 정렬
-- 복잡한것 나누어서 해결하기: 90% 해결
-- 사용법) SELECT * FROM 테이블
--        WHERE  컬럼 >= 값
--        ORDER BY 컬럼 ASC[DESC];
-- SELECT * FROM EMPLOYEE
-- WHERE  JOB = 'MANAGER'
-- ORDER BY ENAME;
POST /employee/_search
{
  "query": {
    "term": {"job.keyword": "MANAGER"  }
  },
  "sort": [
    {"ename.keyword": {"order": "asc"  }}
  ]
}


-- 사원테이블에서 JOB 이 'CLERK' 인 사원의 데이터를 뽑아서
-- ENAME(사원명)으로 내림차순 정렬하세요
-- 사원 테이블명: EMPLOYEE
-- 사원명      : ENAME
-- 직위        : JOB
-- 모든 컬럼선택: *
-- 조건1      : JOB 이 'CLERK' 인
-- 정렬       : ENAME(사원명)으로 내림차순 정렬
-- 사용법) SELECT * FROM 테이블
--        WHERE  컬럼 >= 값
--        ORDER BY 컬럼 ASC[DESC];
-- SELECT * FROM EMPLOYEE
-- WHERE  JOB = 'CLERK'
-- ORDER BY ENAME DESC;
POST /employee/_search
{
  "query": {
    "term": {"job.keyword": "CLERK"  }
  },
  "sort": [
    {"ename.keyword": {"order": "asc"  }}
  ]
}