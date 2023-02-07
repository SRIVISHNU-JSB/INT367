
The DELETE Statement in SQL is used to delete existing records from a table. We can delete a single record or multiple records depending on the condition we specify in the WHERE clause.

Syntax: Basic 

DELETE FROM table_name WHERE some_condition;

table_name: name of the table
some_condition: condition to choose particular record.
Note: We can delete single as well as multiple records depending on the condition we provide in WHERE clause. If we omit the WHERE clause then all of the records will be deleted and the table will be empty. 

Sample table is as follows: table1


Example Queries:

Deleting single record: Delete the rows where NAME = ‘Ram’. This will delete only the first row.

DELETE FROM Student WHERE NAME = 'Ram';
Output: The above query will delete only the first row and the table Student will now look like,



ROLL_NO	NAME	ADDRESS	PHONE	Age
2	RAMESH	GURGAON	XXXXXXXXXX	18
3	SUJIT	ROHTAK	XXXXXXXXXX	20
4	SURESH	Delhi	XXXXXXXXXX	18
3	SUJIT	ROHTAK	XXXXXXXXXX	20
2	RAMESH	GURGAON	XXXXXXXXXX	18

Deleting multiple records: Delete the rows from the table Student where Age is 20. This will delete 2 rows(third row and fifth row).

DELETE FROM Student WHERE Age = 20;
Output: The above query will delete two rows(third row and fifth row) and the table Student will now look like,

ROLL_NO	NAME	ADDRESS	PHONE	Age
1	Ram	Delhi	XXXXXXXXXX	18
2	RAMESH	GURGAON	XXXXXXXXXX	18
4	SURESH	Delhi	XXXXXXXXXX	18
2	RAMESH	GURGAON	XXXXXXXXXX	18

Delete all of the records: There are two queries to do this as shown below,

query1: "DELETE FROM Student";

query2: "DELETE * FROM Student";
Output: All of the records in the table will be deleted, there are no records left to display. The table Student will become empty!

Important Note: DELETE is a DML (Data Manipulation Language) command hence operation performed by DELETE can be rolled back or undone.