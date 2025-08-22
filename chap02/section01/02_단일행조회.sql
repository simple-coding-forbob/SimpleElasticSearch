-- 02_간단조회.sql
-- TODO: 간단조회 : GET 방식
--  기본키 -> ES(문서번호: "_id": "값")
-- TODO: 1) 전체조회: 문서번호확인(_id 값)
POST /department/_search
{
  "query": {
    "match_all": {}
  }
}
-- TODO: 2) 간단조회: 문서번호로 조회
-- select * from department where dno=10
-- 사용법: GET /인덱스명/_doc/문서번호(_id값)
-- 참고) 문서번호가 기본키에 해당(유일해야함)
GET /department/_doc/10