-- 예제) tb_dept, tb_dept2 2개를 동일하게 만드세요. 아래 매핑정보를 보고 많드세요
-- dno(integer), dname("type": "text", "type": "keyword"), loc("type": "text", "type": "keyword")
PUT /tb_dept
{
  "mappings": {
    "properties": {
      "dno":         { "type": "integer" },
      "dname": {
        "type": "text",
        "fields": {"keyword": { "type": "keyword" }}
      },
      "loc": {
        "type": "text",
        "fields": {"keyword": { "type": "keyword" }}
      }
    }
  }
}

-- 예제) tb_dept2 삭제하세요
delete /tb_dept2


-- 예제) tb_dept 에 데이터를 추가하세요
PUT /tb_dept/_doc/10
{ "dno": 10, "dname": "ACCOUNTING", "loc": "NEW YORK" }


-- 예제) tb_dept 첫번째 문서 데이터 수정하기
POST /tb_dept/_search
{
  "query": {
    "match_all": {}
  }
}

POST /tb_dept/_update/10
{
  "doc": {
    "dname": "개발부"
  }
}

-- 예제) 테이블에 데이터 삭제하기
delete /dept/_doc/10