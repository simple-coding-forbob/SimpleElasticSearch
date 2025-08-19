-- 예제2) 부서 인덱스의 문서번호로 조회하세요
-- 사용법: SELECT 컬럼1,컬럼2,... FROM 테이블명;
-- 문서번호 조회;
POST /department/_search
{
    query: {
        match_all: {}
    }
}

Get /department/_doc/KW78cZgBWKne6-Tze6yv