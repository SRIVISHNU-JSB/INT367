--Author SRI.JSB -> Version 1.0 created on March 09, 2023

/*

*/

--TO RENAME TABLE NAMES USING RENAME-TO AND ALTER TABLE-RENAME TO

--rename employe123 to employee1234;

--alter table employee10 rename to employee123;

create table employee(fname varchar2(10),lname varchar2(10),salary number(10),empid number(10),jobid number(10),deptname varchar2(10),location varchar2(10));

insert into employee values('rohit','Sharma',23000,23,56,'cse','pnb');
insert into employee values('deepika','sharma',26000,25,56,'cse','Delhi');
insert into employee values('mahi','dhoni',15000,28,58,'civil','haryana');
insert into employee values('virat','kohli',45000,29,59,'mech','jalandar');


select * from employee;

select * from employee where age=;

--SELECT THE DETAILS OF THE EMPLOYEES WHERE SALARY IS GREATER THAN SALARY OF EMPLOYEE WITH NAME ROHIT

SELECT FNAME, LNAME, SALARY FROM EMPLOYEE WHERE SALARY > (SELECT SALARY FROM EMPLOYEE WHERE FNAME='rohit');

SELECT FNAME, LNAME, SALARY FROM EMPLOYEE WHERE SALARY IN (SELECT SALARY FROM EMPLOYEE WHERE FNAME='rohit');

SELECT FNAME, LNAME, SALARY FROM EMPLOYEE WHERE SALARY > ALL (SELECT SALARY FROM EMPLOYEE WHERE FNAME='rohit');

SELECT FNAME, LNAME, SALARY FROM EMPLOYEE WHERE SALARY NOT IN (SELECT SALARY FROM EMPLOYEE WHERE FNAME='rohit');

--SHOW ME ALL EMPLOYEES WHOSE JOB ID IS 

SELECT FNAME, LNAME FROM EMPLOYEE WHERE EMPID = 25;

SELECT FNAME, LNAME FROM EMPLOYEE WHERE JOBID = (SELECT JOBID FROM EMPLOYEE WHERE EMPID = 25);

SELECT FNAME, LNAME FROM EMPLOYEE WHERE JOBID IN (SELECT JOBID FROM EMPLOYEE WHERE EMPID = 25);

SELECT FNAME, LNAME FROM EMPLOYEE WHERE DEPTNAME = (SELECT DEPTNAME FROM EMPLOYEE WHERE EMPID = 25);

--FIND MINIMUM SALARY CORRESPONDING TO EACH JOBID IN EMPLOYEE TABLE

SELECT FNAME, LNAME FROM EMPLOYEE WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEE);

-- USING GROUP BY AND HAVING
--FIND MIN SALARY GREATER THAN THE EMPLOYEE WITH JOBID = 58
SELECT JOBID, MIN(SALARY) FROM EMPLOYEE GROUP BY JOBID;
SELECT JOBID, MIN(SALARY) FROM EMPLOYEE GROUP BY JOBID HAVING MIN(SALARY) > (SELECT MIN(SALARY) FROM EMPLOYEE WHERE JOBID=58);




