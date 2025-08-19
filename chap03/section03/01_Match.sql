--예제) SCOTT 사원을 조회하세요, 단 match(전문 검색, 자연어검색)을 이용하세요
-- 유사도 점수에 따라서 높은것이 먼저 보입니다.(유사도 점수 내림차순 정렬이 기본입니다.)
POST /employee/_search
{
  "query": {
    "match": {"ename": "SCOTT"}
  }
}


--예제)  job 이 "CLERK" 인 사원을 조회하세요, 단 match(전문 검색, 자연어검색)을 이용하세요
POST /employee/_search
{
  "query": {
    "match": {"job": "CLERK"}
  }
}

--예제)  dname 이 "sales" 인 사원을 조회하세요, 단 match(전문 검색, 자연어검색)을 이용하세요
POST /department/_search
{
  "query": {
    "match": {
      "dname": "sales"
    }
  }
}