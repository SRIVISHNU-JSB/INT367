

ALTER TABLE is used to add, delete/drop or modify columns in the existing table. It is also used to add and drop various constraints on the existing table.

ALTER TABLE – ADD

ADD is used to add columns into the existing table. Sometimes we may require to add additional information, in that case we do not require to create the whole database again, ADD comes to our rescue.

Syntax:


ALTER TABLE table_name
              ADD (Columnname_1  datatype,
              Columnname_2  datatype,
              …
              Columnname_n  datatype);


ALTER TABLE – DROP

DROP COLUMN is used to drop column in a table. Deleting the unwanted columns from the table.

Syntax:

ALTER TABLE table_name
DROP COLUMN column_name;


ALTER TABLE-MODIFY

It is used to modify the existing columns in a table. Multiple columns can also be modified at once.
*Syntax may vary slightly in different databases.

Syntax(Oracle,MySQL,MariaDB):

ALTER TABLE table_name
MODIFY column_name column_type;
Syntax(SQL Server):


ALTER TABLE table_name
ALTER COLUMN column_name column_type;

ALTER TABLE - RENAME

Sometimes we may want to rename our table to give it a more relevant name. For this purpose we can use ALTER TABLE to rename the name of table.

*Syntax may vary in different databases. 
 
Syntax(Oracle,MySQL,MariaDB):
 

ALTER TABLE table_name
RENAME TO new_table_name;
Columns can be also be given new name with the use of ALTER TABLE.

Syntax(MySQL, Oracle):


ALTER TABLE table_name
RENAME COLUMN old_name TO new_name;
Syntax(MariaDB):

ALTER TABLE table_name
CHANGE COLUMN old_name TO new_name;