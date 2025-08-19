--예제) SMITH 사원을 조회하세요, 단 match_phrase(전문 검색, 자연어검색)을 이용하세요
-- match_phrase 는 단어가 아니라 구로 검색할 수 있습니다. 순서는 같아야 합니다.
POST /employee/_search
{
  "query": {
    "match_phrase": {"ename": "SMITH"}
  }
}

--예제)  job 이 "MANAGER" 인 사원을 조회하세요, 단 match_phrase(전문 검색, 자연어검색)을 이용하세요
POST /employee/_search
{
  "query": {
    "match_phrase": {"job": "MANAGER"}
  }
}

--예제)  dname 이 "ACCOUNTING" 인 사원을 조회하세요, 단 match_phrase(전문 검색, 자연어검색)을 이용하세요
POST /department/_search
{
  "query": {
    "match_phrase": {
      "dname": "ACCOUNTING"
    }
  }
}