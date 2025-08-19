-- 예제) 급여를(SALARY) 2000 단위로 각각 집계해서 표시하세요
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "hsalary": {
      "histogram": {
        "field": "salary",
        "interval": 2000
      }
    }
  }
}

