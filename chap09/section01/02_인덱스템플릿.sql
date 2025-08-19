-- 예제) 공통 템플릿을 이용해서 인덱스 idx-dept 로 만들세요
--   "priority": 10, - 템플릿이 여러개일 경우 값이 높은것이 적용됩니다.
PUT _index_template/idx_ctemplate
{
  "index_patterns": ["idx-*"],
  "priority": 10,
  "template": {
    "settings": {
      "number_of_shards": 1,
      "number_of_replicas": 1
    },
    "mappings": {
      "properties": {
        "insert_time": {
          "type": "date"
        },
        "update_time": {
          "type": "date"
        }
      }
    }
  }
}

PUT /idx-dept
{
  "mappings": {
    "properties": {
      "dno":         { "type": "integer" },
      "dname": {
        "type": "text",
        "fields": {"keyword": { "type": "keyword" }}
      }
    }
  }    
}

GET /idx-dept/_mapping