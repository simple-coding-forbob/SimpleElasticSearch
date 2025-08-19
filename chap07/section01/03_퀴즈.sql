--예제) 모든 인덱스의(department, employee) ename, job 필드에서 SALES SALESMAN 가 있는 단어를 찾고,
--     동시에 salary 가 1250 인 정보를 검색하세요
--     단 multi_match(전문 검색, 자연어검색)와 bool - must 를 이용하세요
POST /department,employee/_search
{
  "query": {
    "bool": {
      "must": [
        {
          "multi_match": {
            "query": "ACCOUNTING CLERK",
            "fields": ["ename", "job"]
          }
        },
        {
          "term": {
            "salary": {
              "value": 800
            }
          }
        }
      ]
    }
  }
}