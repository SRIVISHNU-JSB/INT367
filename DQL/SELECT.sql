
Select is the most commonly used statement in SQL. The SELECT Statement in SQL is used to retrieve or fetch data from a database. We can fetch either the entire table or according to some specified rules. The data returned is stored in a result table. This result table is also called the result set. With the SELECT clause of a SELECT command statement, we specify the columns that we want to be displayed in the query result and, optionally, which column headings we prefer to see above the result table. The select clause is the first clause and is one of the last clauses of the select statement that the database server evaluates. The reason for this is that before we can determine what to include in the final result set, we need to know all of the possible columns that could be included in the final result set. 

Syntax:


SELECT column1,column2 FROM table_name 
column1 , column2: names of the fields of the table
table_name: from where we want to apply query
This query will return all the rows in the table with fields column1 and column2.

To fetch the entire table or all the fields in the table:

 SELECT * FROM table_name; 
 -- asterisks represent all attributes of the table
Query to fetch the fields ROLL_NO, NAME, AGE from the table Student:



SELECT ROLL_NO, NAME, AGE FROM Student;


To fetch all the fields from the table Student:

 SELECT * FROM Student;