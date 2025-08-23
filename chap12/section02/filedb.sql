-- ES 에 인덱스를 만듭니다.
PUT /filedb
{
  "mappings": {
    "properties": {
      "uuid": { "type": "keyword" },
      "file_title": { "type": "text",
                    "fields": { "keyword": { "type": "keyword" } } },
      "file_content": { "type": "text" },
      "file_url": { "type": "keyword" },
      "insert_time": { "type": "date" },
      "update_time": { "type": "date" }
    }
  }
}