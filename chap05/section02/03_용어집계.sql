-- 예제) 직위(JOB)의 종류가 몇 개인지 출력하기
-- 용어집계는 집계 오류가 발생할 가능성이 있습니다. 아래 옵션값을 키우면 정확도가 증가합니다.
-- "shard_size": 100 - 값이 커지면 정확도가 상승하나 메모리 소비량이 높아집니다.
POST /employee/_search
{
  "size": 0,
  "aggs": {
    "tjob": {"terms": {"field": "job.keyword", "shard_size": 100}}
  }
}