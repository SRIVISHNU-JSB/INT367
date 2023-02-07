CREATE TABLE EMPLOYEE
(
NAME VARCHAR2(44),
EID NUMBER,
EMP_NUMBER CHAR(10),
CITY VARCHAR2(22),
CONTACT_NUMBER VARCHAR2(20),
COUNTRY VARCHAR(22)
);

SELECT * FROM EMPLOYEE;

INSERT INTO EMPLOYEE(NAME,EID,CITY) VALUES ('ABC',123123,'JAL');

INSERT INTO EMPLOYEE (NAME,EID,EMP_NUMBER,CITY,CONTACT_NUMBER,COUNTRY)
VALUES ('BCD',212322,'RE2122A02','DEL','+9177886655','IND');

INSERT INTO EMPLOYEE VALUES ('GHI',123002,'RE2122A08','TEL','+88882222','ISL');
INSERT INTO EMPLOYEE VALUES ('CDE',121233,'RE2122A03','BLR','+9177886651','IND');
INSERT INTO EMPLOYEE VALUES ('DEF',132123,'RE2122A04','TOR','+55123543','CAD');
INSERT INTO EMPLOYEE VALUES ('EFG',152561,'RE2122A05','MLB','+72325223','AUS');
INSERT INTO EMPLOYEE VALUES ('FGH',123001,'RE2122A06','TOK','+81234592','JAP');


INSERT INTO EMPLOYEE VALUES ('GH1',123111,'RE2122A10','TEL','+888822221','ISL');
INSERT INTO EMPLOYEE VALUES ('HIJ',121112,'RE2122A11','BLR','+91778866512','IND');
INSERT INTO EMPLOYEE VALUES ('IJK',132113,'RE2122A12','TOR','+551235433','CAD');
INSERT INTO EMPLOYEE VALUES ('JKL',152114,'RE2122A15','MLB','+723252234','AUS');
INSERT INTO EMPLOYEE VALUES ('KLM',123118,'RE2122A18','TOK','+812345925','JAP');




