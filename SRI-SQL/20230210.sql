--Author SRI.JSB -> Version 1.0 created on Feb 10, 2023

/*
1.Implement Not Null
2.
*/

CREATE TABLE CRICKET
(
NAME VARCHAR2(44),
PLAYER_PID NUMBER UNIQUE NOT NULL
);

INSERT INTO CRICKET(NAME,UID) VALUES('SACHIN',321);

INSERT INTO CRICKET(NAME,UID) VALUES('MS',NULL);

CREATE TABLE CRICKET11
(
UID NUMBER,
NAME CHAR(22)
);

SELECT * FROM STUDENT;

INSERT INTO CRICKET1(NAME,UID) VALUES('MS',NULL);

CREATE TABLE SCORES1
(
RUNS NUMBER,
INNINGS NUMBER DEFAULT 1
);

--DEFAULT VALUES
INSERT INTO SCORES VALUES(200,1);
INSERT INTO SCORES VALUES(500);
INSERT INTO SCORES(RUNS) VALUES(500);

SELECT * FROM SCORES;

INSERT INTO SCORES VALUES(500,2);

CREATE TABLE SCORES11
(
EVENT_DATE DATE DEFAULT SYSDATE,
RUNS NUMBER,
INNINGS NUMBER DEFAULT 1
);

SELECT SYSDATE FROM DUAL;

INSERT INTO SCORES11(RUNS) VALUES(200);
INSERT INTO SCORES11(RUNS) VALUES(200);

SELECT * FROM SCORES11;

--DEFAULT VALUE WITH CHARACTERS
CREATE TABLE SCORES12
(
EVENT_DATE DATE DEFAULT SYSDATE,
RUNS NUMBER,
INNINGS NUMBER DEFAULT 1,
MATCH CHAR(5) DEFAULT 'ODI'
);

INSERT INTO SCORES12(RUNS) VALUES(1000);

SELECT * FROM SCORES12;

--TO ALTER THE COLUMNS IN THE TABLE
ALTER TABLE SCORES12 MODIFY(MATCH CHAR(8) DEFAULT 'TEST');

INSERT INTO SCORES12(RUNS) VALUES(500);

--TO DELETE THE ENTIRE TABLE
DROP TABLE SCORES12;


--DEFAULT VALUE WITH DATE
CREATE TABLE SCORES13
(
EVENT_DATE DATE DEFAULT '01-JAN-23',
RUNS NUMBER,
INNINGS NUMBER DEFAULT 1,
MATCH CHAR(5) DEFAULT 'ODI'
);

INSERT INTO SCORES13(RUNS) VALUES(100);

SELECT * FROM SCORES13;



--CHECK CONSTRAINTS

CREATE TABLE POPULATION
(
NAME CHAR(20),
AGE NUMBER CHECK(AGE BETWEEN 21 AND 30)
);

INSERT INTO POPULATION VALUES('ZYX',18);
INSERT INTO POPULATION VALUES('ZYX',25);
INSERT INTO POPULATION VALUES('ABC',31);

INSERT INTO POPULATION VALUES('VUTS',30);

SELECT * FROM POPULATION;


CREATE TABLE POPULATION1
(
NAME CHAR(20),
AGE NUMBER,
--CONSTRAINT MYC1 CHECK(AGE BETWEEN AGE>21 AND NAME='FED')
CONSTRAINT MYCONTRAINT1 CHECK(AGE>21)
);

--TO DROP ANY CONSTRAINT FROM A TABLE
ALTER TABLE POPULATION1 DROP CONSTRAINT MYCONSTRAIN1;
--TO ENABLE OR DISABLE CONSTRAINT FROM A TABLE
ALTER TABLE POPULATION1 ENABLE CONSTRAINT MYC1;
ALTER TABLE POPULATION1 DISABLE CONSTRAINT MYC1;

--TO ADD A NEW CONSTRAINTS TO A TABLE
ALTER TABLE POPULATION11 ADD CONSTRAINT MYC1 UNIQUE(EMAIL);

