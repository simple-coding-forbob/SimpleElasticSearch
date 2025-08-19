-- 예제) 각 job별 합계를 사원 수로 나누는 평균을 계산하는 집계를 구하세요
-- "size": 100  // 그룹화할 최대 개수(안 size)
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "by_department": {
      "terms": {
        "field": "job.keyword"
      },
      "aggs": {
        "salary_sum": {
          "sum": {
            "field": "salary"
          }
        },
        "avg_salary_per_employee": {
          "bucket_script": {
            "buckets_path": {
              "salarySum": "salary_sum"
            },
            "script": "params.salarySum / 14"
          }
        }
      }
    }
  }
}



