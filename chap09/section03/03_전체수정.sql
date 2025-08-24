-- dept 첫번째 문서 전체 데이터 대체하기
POST /dept/_search
{
  "query": {
    "match_all": {}
  }
}

PUT /dept/_doc/VMdck5gB8tkwzUeiqCFj
{
  "dno": 20,
  "dname": "개발부2"
}