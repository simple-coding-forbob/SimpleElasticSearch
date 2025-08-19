-- 예제) salary가 1000 과 2000 사이 조회 하세요
-- bool - filter 를 사용하세요(유사도 점수계산을 하지 않아서 조회속도가 빠릅니다.)
POST /employee/_search
{
  "query": {
    "bool": {
      "filter": [{
        "range": {
          "salary": {
            "gte": 1000,
            "lte": 2000
          }
        }
      }]
    }
  }
}

-- 예제) salary가 1000 과 2000 사이 조회하고 동시에 job 이 CLERK 인 사람을 조회하세요
-- bool - filter 를 사용하세요(유사도 점수계산을 하지 않아서 조회속도가 빠릅니다.)
POST /employee/_search
{
  "query": {
    "bool": {
      "filter": [{
        "range": {
          "salary": {
            "gte": 1000,
            "lte": 2000
          }
        }
      },
      {
        "term": {
          "job.keyword": "CLERK"
        }
      }
      ]
    }
  }
}

