-- 예제) 상여금(commission) 0~500, 500~2000 단위로 각각 집계해서 표시하세요
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "rcommission": {
      "range": {
        "field": "commission",
        "ranges": [
          {"from": 0, "to": 500},
          {"from": 500, "to": 2000}
            
        ]
      }
    }
  }
}

-- 예제) 부서별(DNO) 총 상여금(commission) 부서번호와 함께 화면에 표시하세요
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "by_dno": {
      "terms": {"field": "dno"},
      "aggs": {
        "sum_commission": {"sum": {"field": "commission"}}
      }
    }
  }
}

-- 예제) 부서번호별(DNO), 직위별(JOB) 상여금(commission) 최고액(max), 최저액(min) 화면에 표시하세요
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "by_dno": {
      "terms": {"field": "dno", "order": { "_key": "asc" }},
      "aggs": {
        "by_job": {
          "terms": {"field": "job.keyword"},
          "aggs": {
            "max_commission": {"max": {"field": "commission"}},
            "min_commission": {"min": {"field": "commission"}}
          }
        }
      }
    }
  }
}
