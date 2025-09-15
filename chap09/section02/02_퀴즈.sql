-- 퀴즈) EMP 에 여러개 데이터를 추가하세요
POST /emp/_bulk
{ "index": {"_id":8001 } }
{ "eno": 8001, "ename": "ALLEN", "job": "SALESMAN", "manager": 7698, "hiredate": "1981-02-20", "salary": 1600, "commission": 300, "dno": 30, "insert_time": "2025-07-30", "update_time": null }
{ "index": {"_id":8002 } }
{ "eno": 8002, "ename": "WARD", "job": "SALESMAN", "manager": 7698, "hiredate": "1981-02-22", "salary": 1250, "commission": 500, "dno": 30, "insert_time": "2025-07-30", "update_time": null }


POST /emp/_search
{
  "query": {
    "match_all": {}
  }
}