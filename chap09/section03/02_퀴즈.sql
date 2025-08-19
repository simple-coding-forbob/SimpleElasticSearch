-- emp 첫번째 문서 데이터 수정하기
POST /emp/_search
{
  "query": {
    "match_all": {}
  }
}

POST /emp/_update/i8dZk5gB8tkwzUeinhu4
{
  "doc": {
    "ename": "스미스",
    "job": "부장"
  }
}