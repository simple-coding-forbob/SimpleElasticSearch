-- 퀴즈) emp 테이블에 데이터를 추가하세요
POST /emp/_doc
{ "eno": 8000, "ename": "SMITH", "job": "CLERK", "manager": 7902, "hiredate": "1980-12-17", "salary": 800, "commission": null, "dno": 10, "insert_time": "2025-07-30", "update_time": null }

PUT /emp/_doc/8000
{ "eno": 8000, "ename": "SMITH2", "job": "CLERK", "manager": 7902, "hiredate": "1980-12-17", "salary": 800, "commission": null, "dno": 10, "insert_time": "2025-07-30", "update_time": null }