
 USE worker;
 GO

CREATE TABLE WORKERTBL(
WORKER_ID INT IDENTITY PRIMARY KEY NOT NULL,
FIRST_NAME VARCHAR(55),
LAST_NAME  VARCHAR(55),
SALARY INT ,
JOINING_DATE DATETIME,
DEPARTMNET VARCHAR(55)
);
GO
INSERT INTO  WORKERTBL(FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMNET)
VALUES('MON KA','ARORA',100000,'2014-02-20 09:00:00','HR'),
('NIHARI KA','VERMA',80000,'2014-06-11 09:00:00','ADMIN') ,
('VISHAL','SINGH',300000,'2014-02-20 09:00:00','HR') ,
('AMITABH','SINGH',500000,'2014-02-20 09:00:00','ADMIN'),
('VIVEK','BHATI',500000,'2014-02-11 09:00:00','ADMIN'),
('VIPUL','DIWAN',200000,'2014-06-11 09:00:00','HR'),
('SATISH','KUMAR',500,'2014-01-20 09:00:00','ACCOUNT'),
 ('GEETIKA','CHOUHAN',900000,'2014-04-11 09:00:00','ADMIN'),
 ('MONIKA','ARORA',100000,'2014-02-20 09:00:00','HR');
GO

SELECT * FROM WORKERTBL;

GO
CREATE TABLE BONUS
(WORKER_REF_ID INT IDENTITY PRIMARY KEY,BONUS_DATE DATETIME,BONUS_AMOUNT INT);
GO

INSERT INTO BONUS(BONUS_DATE,BONUS_AMOUNT)
VALUES('2016-06-20 00:00:00',5000),
('2016-06-11 00:00:00',3000),
('2016-02-20 00:00:00',4000),
('2016-02-20 00:00:00',4500),
('2016-06-11 00:00:00',3500);
GO
SELECT * FROM BONUS;
 GO
 CREATE TABLE TITLE(
 WORKER_REF_ID INT PRIMARY KEY,WORKER_TITLE  VARCHAR(55),AFFECTED_FROM DATETIME);
 GO

 INSERT INTO TITLE(WORKER_REF_ID,WORKER_TITLE,AFFECTED_FROM)
 VALUES
 (1,'MANAGER','2016-02-20  00:00:00'),
 (2,'EXECUTION','2016-06-11 00:00:00'),
 (8,'MANAGER','2016-06-11 00:00:00'),
 (5,'MANAGER','2016-06-11 00:00:00'),
 (4,'ASST.MANAGER','2016-06-11 00:00:00'),
 (7,'EXECUTIVE','2016-06-11 00:00:00'),
 (6,'LEAD','2016-06-11 00:00:00'),
 (3,'LEAD','2016-06-11 00:00:00');
 GO
 SELECT * FROM TITLE;
 GO

SELECT FIRST_NAME FROM WORKERTBL;

SELECT UPPER(FIRST_NAME)FROM WORKERTBL;

SELECT * FROM WORKERTBL WHERE DEPARTMNET='HR';

SELECT LEFT(FIRST_NAME,3) FROM WORKERTBL; 

SELECT RIGHT(FIRST_NAME,3) FROM WORKERTBL;

SELECT * FROM WORKERTBL  WHERE FIRST_NAME LIKE '[A]%';

SELECT RTRIM(FIRST_NAME) AS FirstNameTrimmed FROM WORKERTBL;

SELECT LTRIM(FIRST_NAME) AS FIRSTNAMERIMMED FROM WORKERTBL;


SELECT DISTINCT DEPARTMNET, LEN(DEPARTMNET) AS DEPARTMENTLENGTH FROM WORKERTBL;


SELECT FIRST_NAME,REPLACE(FIRST_NAME, 'A', 'a') FROM WORKERTBL;
 

SELECT FIRST_NAME,LAST_NAME + ','+ LAST_NAME AS COMPLETE_NAME FROM WORKERTBL;

SELECT * FROM  WORKERTBL ORDER BY FIRST_NAME; 


SELECT WORKER_ID, FIRST_NAME, LAST_NAME,DEPARTMNET, SALARY FROM WORKERTBL ORDER BY FIRST_NAME ASC, DEPARTMNET DESC;

SELECT * FROM WORKERTBL WHERE FIRST_NAME IN('VIPUL','SATISH');


SELECT * FROM WORKERTBL WHERE FIRST_NAME NOT IN ('VIPUL', 'SATISH');

SELECT * FROM WORKERTBL  WHERE DEPARTMNET ='ADMIN';

SELECT * FROM WORKERTBL WHERE FIRST_NAME LIKE '%A%';

SELECT * FROM WORKERTBL WHERE FIRST_NAME LIKE '%A';

SELECT * FROM WORKERTBL WHERE FIRST_NAME LIKE '%H' AND LEN(FIRST_NAME)=6;

SELECT * FROM WORKERTBL WHERE SALARY BETWEEN 100000 AND 500000;

SELECT * FROM WORKERTBL WHERE MONTH(JOINING_DATE)=2;

SELECT COUNT(*) FROM WORKERTBL WHERE DEPARTMNET ='ADMIN';

SELECT * FROM WORKERTBL WHERE SALARY >= 50000 AND SALARY <= 100000;

SELECT DEPARTMNET, COUNT(*) AS NumberOfWorkers FROM WORKERTBL GROUP BY DEPARTMNET ORDER BY NumberOfWorkers DESC;

TRUNCATE TABLE  WORKERTBL;


SELECT * FROM WORKERTBL;

SELECT W.WORKER_ID, W.FIRST_NAME, W.LAST_NAME, W.SALARY, W.JOINING_DATE,  W.DEPARTMNET, T.WORKER_TITLE
FROM WORKERTBL W JOIN Title T ON W.WORKER_ID = T.WORKER_REF_ID WHERE T.WORKER_TITLE = 'Manager';


SELECT FIRST_NAME, LAST_NAME, SALARY,JOINING_DATE,DEPARTMNET,COUNT(*)
FROM WORKERTBL GROUP BY FIRST_NAME, LAST_NAME, SALARY,JOINING_DATE,DEPARTMNET HAVING COUNT(*) >1;







   

   














 
 


