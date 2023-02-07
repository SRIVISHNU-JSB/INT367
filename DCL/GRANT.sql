Granting Privileges

We have already learned about how to create users in MySQL using MySQL | create user statement. But using the Create User Statement only creates a new user but does not grant any privileges to the user account. Therefore to grant privileges to a user account, the GRANT statement is used. Syntax:

GRANT privileges_names ON object TO user;
Parameters Used:

privileges_name: These are the access rights or privileges granted to the user.
object:It is the name of the database object to which permissions are being granted. In the case of granting privileges on a table, this would be the table name.
user:It is the name of the user to whom the privileges would be granted.
Privileges: The privileges that can be granted to the users are listed below along with the description:  Let us now learn about different ways of granting privileges to the users:


Granting SELECT Privilege to a User in a Table: To grant Select Privilege to a table named “users” where User Name is Amit, the following GRANT statement should be executed.
GRANT SELECT ON Users TO'Amit'@'localhost;
Granting more than one Privilege to a User in a Table: To grant multiple Privileges to a user named “Amit” in a table “users”, the following GRANT statement should be executed.
GRANT SELECT, INSERT, DELETE, UPDATE ON Users TO 'Amit'@'localhost;
Granting All the Privilege to a User in a Table: To Grant all the privileges to a user named “Amit” in a table “users”, the following Grant statement should be executed.
GRANT ALL ON Users TO 'Amit'@'localhost;
Granting a Privilege to all Users in a Table: To Grant a specific privilege to all the users in a table “users”, the following Grant statement should be executed.
GRANT SELECT  ON Users TO '*'@'localhost;
In the above example the “*” symbol is used to grant select permission to all the users of the table “users”.
Granting Privileges on Functions/Procedures: While using functions and procedures, the Grant statement can be used to grant users the ability to execute the functions and procedures in MySQL. Granting Execute Privilege: Execute privilege gives the ability to execute a function or procedure. Syntax:
GRANT EXECUTE ON [ PROCEDURE | FUNCTION ] object TO user; 
Different ways of granting EXECUTE Privileges:

Granting EXECUTE privileges on a function in MySQL.: If there is a function named “CalculateSalary” and you want to grant EXECUTE access to the user named Amit, then the following GRANT statement should be executed.

GRANT EXECUTE ON FUNCTION Calculatesalary TO 'Amit'@localhost';
Granting EXECUTE privileges to all Users on a function in MySQL.: If there is a function named “CalculateSalary” and you want to grant EXECUTE access to all the users, then the following GRANT statement should be executed.



GRANT EXECUTE ON FUNCTION Calculatesalary TO '*'@localhost'; 
Granting EXECUTE privilege to a Users on a procedure in MySQL.: If there is a procedure named “DBMSProcedure” and you want to grant EXECUTE access to the user named Amit, then the following GRANT statement should be executed.

GRANT EXECUTE ON PROCEDURE DBMSProcedure TO 'Amit'@localhost'; 
Granting EXECUTE privileges to all Users on a procedure in MySQL.: If there is a procedure called “DBMSProcedure” and you want to grant EXECUTE access to all the users, then the following GRANT statement should be executed. 

GRANT EXECUTE ON PROCEDURE DBMSProcedure TO '*'@localhost'; 
Checking the Privileges Granted to a User: To see the privileges granted to a user in a table, the SHOW GRANTS statement is used. To check the privileges granted to a user named “Amit” and host as “localhost”, the following SHOW GRANTS statement will be executed:

SHOW GRANTS FOR  'Amit'@localhost'; 
Output:

GRANTS FOR  Amit@localhost 
GRANT USAGE ON *.* TO `SUPER`@localhost` 
Revoking Privileges from a Table

The Revoke statement is used to revoke some or all of the privileges which have been granted to a user in the past. Syntax:

REVOKE privileges ON object FROM user;
Parameters Used:

object: It is the name of the database object from which permissions are being revoked. In the case of revoking privileges from a table, this would be the table name.
user: It is the name of the user from whom the privileges are being revoked.
Privileges can be of the following values:  Different Ways of revoking privileges from a user:
Revoking SELECT Privilege to a User in a Table: To revoke Select Privilege to a table named “users” where User Name is Amit, the following revoke statement should be executed.
REVOKE SELECT ON  users FROM 'Amit'@localhost'; 
Revoking more than Privilege to a User in a Table: To revoke multiple Privileges to a user named “Amit” in a table “users”, the following revoke statement should be executed.
REVOKE SELECT, INSERT, DELETE, UPDATE ON Users FROM 'Amit'@'localhost; 
Revoking All the Privilege to a User in a Table: To revoke all the privileges to a user named “Amit” in a table “users”, the following revoke statement should be executed.
REVOKE ALL ON Users FROM 'Amit'@'localhost; 
Revoking a Privilege to all Users in a Table: To Revoke a specific privilege to all the users in a table “users”, the following revoke statement should be executed.
REVOKE SELECT  ON Users FROM '*'@'localhost; 
Revoking Privileges on Functions/Procedures: While using functions and procedures, the revoke statement can be used to revoke the privileges from users which have been EXECUTE privileges in the past. Syntax:
REVOKE EXECUTE ON [ PROCEDURE | FUNCTION ] object FROM user; 
Revoking EXECUTE privileges on a function in MySQL.: If there is a function called “CalculateSalary” and you want to revoke EXECUTE access to the user named Amit, then the following revoke statement should be executed.
REVOKE EXECUTE ON FUNCTION Calculatesalary FROM 'Amit'@localhost'; 
Revoking EXECUTE privileges to all Users on a function in MySQL.: If there is a function called “CalculateSalary” and you want to revoke EXECUTE access to all the users, then the following revoke statement should be executed.
REVOKE EXECUTE ON FUNCTION Calculatesalary FROM '*'@localhost'; 
Revoking EXECUTE privilege to a Users on a procedure in MySQL.: If there is a procedure called “DBMSProcedure” and you want to revoke EXECUTE access to the user named Amit, then the following revoke statement should be executed.
REVOKE EXECUTE ON PROCEDURE DBMSProcedure FROM 'Amit'@localhost'; 
Revoking EXECUTE privileges to all Users on a procedure in MySQL.: If there is a procedure called “DBMSProcedure” and you want to revoke EXECUTE access to all the users, then the following revoke statement should be executed.
REVOKE EXECUTE ON PROCEDURE DBMSProcedure FROM '*'@localhost'; 