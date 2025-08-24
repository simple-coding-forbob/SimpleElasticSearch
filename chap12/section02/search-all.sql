PUT /search-all
{
  "mappings": {
      "properties": {
        "id": {
          "type": "keyword"
        },
        "insertTime": {
          "type": "date"
        },
        "job": {
          "type": "text",
          "fields": {
            "keyword": {
              "type": "keyword",
              "ignore_above": 256
            }
          }
        },
        "loc": {
          "type": "text",
          "fields": {
            "keyword": {
              "type": "keyword",
              "ignore_above": 256
            }
          }
        },
        "name": {
          "type": "text",
          "fields": {
            "keyword": {
              "type": "keyword",
              "ignore_above": 256
            }
          }
        },
        "type": {
          "type": "keyword"
        },
        "updateTime": {
          "type": "date"
        }
      }
    }
}

PUT /quiz-all
{
  "mappings": {
      "properties": {
        "id": {
          "type": "keyword"
        },
        "insertTime": {
          "type": "date"
        },
        "title": {
          "type": "text",
          "fields": {
            "keyword": {
              "type": "keyword",
              "ignore_above": 256
            }
          }
        },
        "content": {
          "type": "text",
          "fields": {
            "keyword": {
              "type": "keyword",
              "ignore_above": 256
            }
          }
        },
        "name": {
          "type": "text",
          "fields": {
            "keyword": {
              "type": "keyword",
              "ignore_above": 256
            }
          }
        },
        "question": {
          "type": "keyword",
          "ignore_above": 256
        },
        ,
        "answer": {
          "type": "keyword",
          "ignore_above": 256
        },
        "updateTime": {
          "type": "date"
        }
      }
    }
}