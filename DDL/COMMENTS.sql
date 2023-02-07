

As is any programming languages comments matter a lot in SQL also. In this set we will learn about writing comments in any SQL snippet.

Comments can be written in the following three formats:

Single line comments.
Multi line comments
In line comments

Single line comments: Comments starting and ending in a single line are considered as single line comments.
Line starting with ‘–‘ is a comment and will not be executed.
Syntax:

-- single line comment
-- another comment
SELECT * FROM Customers; 
Multi line comments: Comments starting in one line and ending in different line are considered as multi line comments. Line starting with ‘/*’ is considered as starting point of comment and are terminated when ‘*/’ is encountered.
Syntax:
/* multi line comment
another comment */

SELECT * FROM Customers; 
In line comments: In line comments are an extension of multi line comments, comments can be stated in between the statements and are enclosed in between ‘/*’ and ‘*/’.
Syntax:
SELECT * FROM /* Customers; */ 