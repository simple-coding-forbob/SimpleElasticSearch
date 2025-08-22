-- 예제) job별 급여 평균 구하고, 모든 부서 급여 합계의 총합도 구하기
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "by_department": {
      "terms": {
        "field": "job.keyword"
      },
      "aggs": {
        "salary_avg": {
          "avg": {
            "field": "salary"
          }
        }
      }
    },
    "total_salary_sum": {
      "sum_bucket": {
        "buckets_path": "by_department>salary_avg"
      }
    }
  }
}

