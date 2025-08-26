-- 예제) 사원들의  상여금(commission) 합계, 평균, 최소,최고액을 화면에 표시하세요
POST /employee/_search
{
  "size": 0,  
  "aggs": {
    "total_commission": {"sum": {"field": "commission"}},
    "avg_commission": {"avg": {"field": "commission"}},
    "min_commission": {"min": {"field": "commission"}},
    "max_commission": {"max": {"field": "commission"}}
  }
}



-- 예제) 상여금(commission) 에서 30%에 해당하는 급여와 70% 해당하는 급여를 표시하세요
POST /employee/_search
{
  "size": 0, 
  "aggs": {
    "pcommission": {
      "percentiles": {
        "field": "commission",
        "percents": [
          30,
          70
        ]
      }
    }
  }
}

-- 예제) 상여금(commission) 500 단위로 각각 집계해서 표시하세요
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "hcommission": {
      "histogram": {
        "field": "commission",
        "interval": 500
      }
    }
  }
}
