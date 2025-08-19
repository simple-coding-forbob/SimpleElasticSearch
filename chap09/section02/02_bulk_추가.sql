-- 테이블에 데이터 복사해서 추가하기
POST /dept/_bulk
{ "index": {} }
{ "dno": 20, "dname": "RESEARCH", "loc": "DALLAS", "insert_time": "2025-07-30T00:00:00", "update_time": null }
{ "index": {} }
{ "dno": 30, "dname": "SALES", "loc": "CHICAGO", "insert_time": "2025-07-30T00:00:00", "update_time": null }

POST /dept/_search
{
  "query": {
    "match_all": {}
  }
}