
/*
JOIN
INNER JOIN
NATURAL JOIN
SELF JOIN
*/

select * from customer;
select * from order1;


select * from customer inner join order1 on oid>id;

select * from customer c1 inner join order1 o1 on o1.oid>c1.id;

select name, odate from customer c1 inner join order1 o1 on o1.oid>c1.id;
select c1.name, o1.odate, salary from customer c1 inner join order1 o1 on oid>id;

SELECT * FROM CUSTOMER;

SELECT C1.ID, C2.NAME FROM CUSTOMER C1, CUSTOMER C2 WHERE C1.AGE>C2.ID;


/*
LEFT JOIN
RIGHT JOIN
FULL JOIN
*/

SELECT ID, NAME, AMOUNT, ODATE FROM CUSTOMER C LEFT JOIN ORDER1 O1 ON C.ID=O1.CUSTOMER_ID;

SELECT ID, NAME, AMOUNT, ODATE FROM CUSTOMER C RIGHT JOIN ORDER1 O1 ON C.ID=O1.CUSTOMER_ID;

SELECT ID, NAME, AMOUNT, ODATE FROM CUSTOMER C FULL JOIN ORDER1 O1 ON C.ID=O1.CUSTOMER_ID;

SELECT ID, NAME, AMOUNT, ODATE FROM CUSTOMER C FULL OUTER JOIN ORDER1 O1 ON C.ID=O1.CUSTOMER_ID;

/*
JOINS WITH VIEWS OF TABLES

*/


