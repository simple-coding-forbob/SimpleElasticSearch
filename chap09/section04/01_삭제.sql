POST /dept/_search
{
  "query": {
    "match_all": {}
  }
}
-- 데이터 삭제하기
delete /dept/_doc/sMdVk5gB8tkwzUei_hQ5

-- 인덱스 삭제하기
delete /dept