-- 퀴즈) 부서테이블(DEPARTMENT) 에서 부서번호(DNO) 30이고, DNAME(부서명) 이 
--      SALES 인 부서를 표시하세요
-- 사용법) SELECT 컬럼,... FROM 테이블
--        WHERE 컬럼 = '값';
-- 부서테이블: DEPARTMENT
-- 부서번호  : DNO
-- 부서명    : DNAME
-- 전체 컬럼 : *
-- 조건1     : 부서번호(DNO) 30이고(AND)
-- 조건2     : DNAME(부서명) 이 SALES 인
-- SELECT * FROM DEPARTMENT
-- WHERE DNO = 30
-- AND   DNAME='SALES';
POST /department/_search
{
  "query": {
    "bool": {"must": [{ "term": { "dno": 30 } },
                    { "term": { "dname.keyword": "SALES" } }]
    }
  }
}









