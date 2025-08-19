-- 퀴즈) emp 테이블을 만드세요.
PUT /emp
{
  "mappings": {
    "properties": {
      "eno":         { "type": "integer" },
      "ename": {
        "type": "text",
        "fields": {"keyword": { "type": "keyword" }}
      },
      "insert_time": { "type": "date" },
      "update_time": { "type": "date" }
    }
  }
}
