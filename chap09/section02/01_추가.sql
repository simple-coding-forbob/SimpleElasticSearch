-- 예제) DEPT 에 데이터를 추가하세요
-- 문서번호 랜덤 추가
POST /dept/_doc
{ "dno": 10, "dname": "ACCOUNTING", "loc": "NEW YORK", "insert_time": "2025-07-30T00:00:00", "update_time": null }

-- 문서번호 지정 추가
PUT /dept/_doc/10
{ "dno": 10, "dname": "ACCOUNTING", "loc": "NEW YORK", "insert_time": "2025-07-30T00:00:00", "update_time": null }


