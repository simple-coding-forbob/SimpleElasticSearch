-- 퀴즈) 부서테이블(DEPARTMENT)에서 20번 부서번호(DNO)가 아닌 부서를 모두 표시
-- 하세요
-- 부서테이블: DEPARTMENT
-- 부서번호  : DNO
-- 전체컬럼  : *
-- 사용법) SELECT 컬럼,... FROM 테이블
--        WHERE 컬럼 >= '값';
-- 조건     : 20번 부서번호(DNO)이 아닌(NOT)
-- SELECT * FROM DEPARTMENT
-- WHERE NOT DNO = 20;
POST /employee/_search
{
  "query": {
    "bool": {"must_not": [{ "term": { "dno": 20 } }]
    }
  }
}