-- dept 첫번째 문서 d여러 데이터 수정하기
POST /dept/_search
{
  "query": {
    "match_all": {}
  }
}

POST /dept/_update/sMdVk5gB8tkwzUei_hQ5
{
  "doc": {
    "dname": "개발부2",
    "loc": "부산"
  }
}