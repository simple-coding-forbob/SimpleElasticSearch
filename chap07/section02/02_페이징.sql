-- 예제) department 인덱스를 3개씩 1페이지에 보이도록 페이징하세요
-- from(오프셋,현재페이지번호+등차값), size(1페이지에 보일개수, 등차값)
POST /department/_search
{
  "from": 0,
  "size": 3,
  "query": {
    "match_all": {}
  }
}
