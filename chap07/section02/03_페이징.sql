-- 예제) 부서번호가 10 과 30 사이  조회하고 페이징하세요
-- from(오프셋,현재페이지번호+등차값,0), size(1페이지에 보일개수, 등차값, 2)
POST /department/_search
{
  "from": 0,
  "size": 2,
  "query": {
    "range": {
      "dno": {
        "gte": 10,
        "lte": 30
      }
    }
  }
}
