
/*
JOIN OPERATONS

*/


create table customer(id number(10),name varchar2(10),age number(10),address varchar2(10),salary number(10));
insert into customer values(1,'Ramesh',32,'Ahmedabad',2000);
insert into customer values(2,'Khilan',25,'delhi',2500);
insert into customer values(3,'Suraj',56,'chandigarh',6000);
insert into customer values(4,'Nish',45,'Ludhiana',3000);
insert into customer values(5,'Anu',48,'Mumbai',12000);

--************ 
create table order1 (oid number(10), odate date, customer_id number(10),amount number(10));
insert into order1 values(105,'28-oct-2014',1,1500);
insert into order1 values(104,'26-mar-2015',3,11500);
insert into order1 values(108,'28-oct-2016',4,15500);



select * from customer;
select * from order1;


select id, name, age, amount from customer, order1;
select id, name, age, amount from customer, order1 where id = oid;

select id, name, age, amount from customer, order1 where customer.id < order1.oid;

--USING JOIN KEYWORDS
SELECT ID, NAME, ODATE, AMOUNT FROM CUSTOMER JOIN ORDER1 ON CUSTOMER.ID=ORDER1.OID;

--INNER JOIN IS OPTIONAL
SELECT ID, NAME, ODATE, AMOUNT FROM CUSTOMER INNER JOIN ORDER1 ON CUSTOMER.ID=ORDER1.OID;

SELECT ID, CUSTOMER.NAME, ORDER1.ODATE, AMOUNT FROM CUSTOMER JOIN ORDER1 ON CUSTOMER.ID<ORDER1.OID;

--CREATE ALIAS FOR TABLES IN THE QUERY
SELECT C.ID, C.NAME, O.ODATE, O.AMOUNT FROM CUSTOMER C JOIN ORDER1 O ON C.ID<O.OID;

--CROSS JOIN
--COMMON STYLE
SELECT * FROM CUSTOMER, ORDER1;

--ANSI STYLE

SELECT * FROM CUSTOMER CROSS JOIN ORDER1;

SELECT * FROM CUSTOMER NATURAL JOIN ORDER1;









/*
create table employee1(fname varchar2(10),lname varchar2(10),
empid number(10),loc varchar2(10),salary number(10));

insert into employee1 values('Ram','Sinha',1,'ldh',23400);
insert into employee1 values('Sham','Sinha',2,'chd',26400);
insert into employee1 values('Sham','Sinha',3,'chd',26400);
insert into employee1 values('Sham','Sinha',4,'chd',26400);

create table emp_per(name varchar2(10),empid number(10));
insert into emp_per values('SHam',2);
insert into emp_per values('Hatim',24);
insert into emp_per values('Alok',52);


select * from employee1;

*/



