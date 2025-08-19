-- 예제) 급여가(SALARY) 1000 과 4000 사이의 사원 조회하고 페이징하세요
-- from(오프셋,현재페이지번호+등차값,0), size(1페이지에 보일개수, 등차값, 3)
POST /employee/_search
{
  "from": 0,
  "size": 3,
  "query": {
    "range": {
      "salary": {
        "gte": 1000,
        "lte": 4000
      }
    }
  }
}
