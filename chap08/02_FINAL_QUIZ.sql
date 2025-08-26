-- 예제) employee 인덱스를 10개씩 1페이지에 보이도록 페이징하세요
-- from(오프셋,현재페이지번호+등차값), size(1페이지에 보일개수, 등차값)
POST /employee/_search
{
  "from": 0,
  "size": 10,
  "query": {
    "match_all": {}
  }
}

-- 예제) 부서번호가 10 과 20 사이 속하는 사원을 페이징 하세요
-- from(오프셋,현재페이지번호+등차값,0), size(1페이지에 보일개수, 등차값, 2)
POST /employee/_search
{
  "query": {
    "bool": {
      "must": {
        "range": {
          "dno": {
            "gte": 10,
            "lte": 20
          }
        }
      }
    }
  }
}

-- 예제) 부서번호가 10 과 20 사이 속한 사원을 조회 하세요
-- bool - filter 를 사용하세요(유사도 점수계산을 하지 않아서 조회속도가 빠릅니다.)
POST /employee/_search
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