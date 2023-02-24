
/*
TCL - TRANSACTION CONTROL LANGUAGE
*/

SELECT * FROM CUSTOMER;

INSERT INTO CUSTOMER VALUES(6,'A',21,'DL',10000);

COMMIT;

--TO ROLLBACK
ROLLBACK;

SELECT * FROM CUSTOMER;

DELETE FROM CUSTOMER WHERE ROWID=7;

--TO CREATE SAVEPOINTS
--SAVEPOINT A; --BUT IT DOESN'T WORK INSIDE THIS COMPILER


/*
DCL - DATA CONTROL LANGUAGE
*/

SELECT * FROM CUSTOMER;

--TO CREATE NEW USER ACCOUNT
CREATE USER NEWUSER1 IDENTIFIED BY ABC123;

--TO GRANT PERMISSIONS AND PRIVILEGES
--FOR ALL RIGHTS
GRANT ALL ON CUSTOMER TO NEWUSER1;

--FOR ONLY SPECIFIC PERMISSIONS
GRANT SELECT,INSERT ON CUSTOMER TO NEWUSER1;

--FOR ONLY SPECIFIC COLUMNS
GRANT SELECT(SALARY) ON CUSTOMER TO NEWUSER1;


--TO REMOVE/TAKE AWAY THE PRIVILEGES
REVOKE ALL ON CUSTOMER FROM NEWUSER1;




--TO CREATE ROLES
CREATE ROLE MANAGER;


SELECT * FROM CUSTOMER;








