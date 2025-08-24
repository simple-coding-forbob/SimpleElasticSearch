-- 예제) dept 을 만드세요.
GET /department/_mappings

PUT /dept
{
  "mappings": {
    "properties": {
      "dno":         { "type": "integer" },
      "dname": {
        "type": "text",
        "fields": {"keyword": { "type": "keyword" }}
      },
      "insert_time": { "type": "date" },
      "update_time": { "type": "date" }
    }
  }
}