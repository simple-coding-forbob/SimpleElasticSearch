-- 예제) 부서번호가 10 과 20 사이 속한 부서를 조회 하세요
-- bool - filter 를 사용하세요(유사도 점수계산을 하지 않아서 조회속도가 빠릅니다.)
POST /department/_search
{
  "query": {
    "bool": {
      "filter": [{
        "range": {
          "dno": {
            "gte": 10,
            "lte": 20
          }
        }
      }]
    }
  }
}

-- 예제) 부서번호가 10 과 20 사이 속한 부서를 조회하고 
-- bool - filter 를 사용하세요(유사도 점수계산을 하지 않아서 조회속도가 빠릅니다.)
POST /department/_search
{
  "query": {
    "bool": {
      "filter": [
        {
        "range": {
          "dno": {
            "gte": 10,
            "lte": 20
          }
        }
      },
      {
        "term": {
          "dname.keyword": "ACCOUNTING"
        }
      }]
    }
  }
}