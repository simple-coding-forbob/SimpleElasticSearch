-- 퀴즈) idx-emp 테이블을 만드세요.
PUT _index_template/idx_ctemplate
{
  "index_patterns": ["edx-*"],
  "priority": 11,
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

PUT /edx-emp
{
  "mappings": {
    "properties": {
      "eno":         { "type": "integer" },
      "ename": {
        "type": "text",
        "fields": {"keyword": { "type": "keyword" }}
      }
    }
  }    
}

GET /edx-emp/_mapping