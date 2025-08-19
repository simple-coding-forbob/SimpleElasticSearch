-- 예제) employee 인덱스의 행개수를 구하세요
-- SELECT COUNT(*) FROM EMPLOYEE;
POST /employee/_count
{
  "query": {
    "match_all": {}
  }
}
