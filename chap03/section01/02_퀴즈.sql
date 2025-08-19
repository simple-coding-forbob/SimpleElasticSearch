-- 퀴즈) 사원명(ename) 이 allen 인 사원의 정보를 출력하세요
-- 사원명: ename
-- 사원테이블: employee
-- 조건: 사원명(ename) 이 allen 인
-- 전체컬럼: *
-- select * from employee
-- where ename = 'ALLEN';
POST /employee/_search
{
  "query": {
    "term": {"ename.keyword": "ALLEN"}
  }
}

--퀴즈) job(직위) 이 clerk 인 사원을 출력하세요
-- 사원테이블: employee
-- 직위: job
-- 조건: job(직위) 이 clerk 인
-- 전체컬럼: *
-- select * from employee
-- where job = 'CLERK';
POST /employee/_search
{
  "query": {
    "term": {"job.keyword": "CLERK"}
  }
}


