-- 예제) employee 인덱스를 3개씩 1페이지에 보이도록 페이징하세요
POST /employee/_search
{
  "from": 0,
  "size": 3,
  "query": {
    "match_all": {}
  }
}
