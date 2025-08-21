-- 예제) 부서별 급여 합계 구하고, 모든 부서 급여 합계의 총합도 구하기
-- sum_bucket: 다시 각 부서의 합구하기 (예) avg_bucket(평균)
-- "buckets_path": "부모 집계 별명 > 자식 집계 별명"
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

