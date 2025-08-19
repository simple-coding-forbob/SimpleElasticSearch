-- 예제) 부서번호가 10 과 20 사이 속하지 않는 부서를 페이징 하세요
-- from(오프셋,현재페이지번호+등차값,0), size(1페이지에 보일개수, 등차값, 2)
POST /department/_search
{
  "query": {
    "bool": {
      "must_not": {
        "range": {
          "dno": {
            "gte": 10,
            "lte": 20
          }
        }
      }
    }
  }
}
