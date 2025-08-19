-- 예제) 급여를(SALARY) 0~1500, 1500~5000 단위로 각각 집계해서 표시하세요
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "rsalary": {
      "range": {
        "field": "salary",
        "ranges": [
          {"from": 0, "to": 1500},
          {"from": 1500, "to": 5000}
            
        ]
      }
    }
  }
}
