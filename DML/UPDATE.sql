

The UPDATE statement in SQL is used to update the data of an existing table in database. We can update single columns as well as multiple columns using UPDATE statement as per our requirement.

Basic Syntax

UPDATE table_name SET column1 = value1, column2 = value2,... 
WHERE condition;

table_name: name of the table
column1: name of first , second, third column....
value1: new value for first, second, third column....
condition: condition to select the rows for which the 
values of columns needs to be updated.
NOTE: In the above query the SET statement is used to set new values to the particular column and the WHERE clause is used to select the rows for which the columns are needed to be updated. If we have not used the WHERE clause then the columns in all the rows will be updated. So the WHERE clause is used to choose the particular rows.
table1


Example Queries


Updating single column: Update the column NAME and set the value to ‘PRATIK’ in all the rows where Age is 20.
UPDATE Student SET NAME = 'PRATIK' WHERE Age = 20;
Output:
This query will update two rows(third row and fifth row) and the table Student will now look like,

ROLL_NO	NAME	ADDRESS	PHONE	Age
1	Ram	    Delhi	XXXXXXXXXX	18
2	RAMESH	GURGAON	XXXXXXXXXX	18
3	PRATIK	ROHTAK	XXXXXXXXXX	20
4	SURESH	Delhi	XXXXXXXXXX	18
3	PRATIK	ROHTAK	XXXXXXXXXX	20
2	RAMESH	GURGAON	XXXXXXXXXX	18
 

Updating multiple columns: Update the columns NAME to ‘PRATIK’ and ADDRESS to ‘SIKKIM’ where ROLL_NO is 1.
UPDATE Student SET NAME = 'PRATIK', ADDRESS = 'SIKKIM' WHERE ROLL_NO = 1;

Output:
The above query will update two columns in the first row and the table Student will now look like,



ROLL_NO	NAME	ADDRESS	PHONE	Age
1	PRATIK	SIKKIM	XXXXXXXXXX	18
2	RAMESH	GURGAON	XXXXXXXXXX	18
3	PRATIK	ROHTAK	XXXXXXXXXX	20
4	SURESH	Delhi	XXXXXXXXXX	18
3	PRATIK	ROHTAK	XXXXXXXXXX	20
2	RAMESH	GURGAON	XXXXXXXXXX	18

Note: For updating multiple columns we have used comma(,) to separate the names and values of two columns.

 

Omitting WHERE clause: If we omit the WHERE clause from the update query then all of the rows will get updated.

UPDATE Student SET NAME = 'PRATIK';