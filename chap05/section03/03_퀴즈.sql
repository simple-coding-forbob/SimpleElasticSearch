-- 예제) 부서번호 간격을 10씩 가지는 히스토집계를 낸 후 각 구간별로 job 별(용어) 집계를 구하세요
-- "size": 100  // 그룹화할 최대 개수(안 size)
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "hsalary": {
      "histogram": {
        "field": "dno",
        "interval": 10
      },
      "aggs": {
        "hterm": {
          "terms": {
            "field": "job.keyword"
          }
        }
      }
    }
  }
}
