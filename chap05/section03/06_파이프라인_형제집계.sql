-- 예제) 부서별 급여 합계 구하고, 모든 부서 급여 합계의 총합도 구하기
-- "size": 100  // 그룹화할 최대 개수(안 size)
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "by_department": {
      "terms": {
        "field": "dno"
      },
      "aggs": {
        "salary_sum": {
          "sum": {
            "field": "salary"
          }
        }
      }
    },
    "total_salary_sum": {
      "sum_bucket": {
        "buckets_path": "by_department>salary_sum"
      }
    }
  }
}

