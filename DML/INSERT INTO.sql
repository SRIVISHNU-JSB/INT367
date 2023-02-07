--TO INSERT VALUE INTO TABLES

//Below query adds data in specific column, (like Column1=Value1)//
Insert into Table_name(Column1, Column2, Column3)
Values (Value1, value2, value3);

//Below query adds data in table in sequence of column name(Value1 will be added in Column1 and so on)//
Insert into Table_name
Values (Value1, value2, value3);

//Adding multiple data in the table in one go//
Insert into Table_name
Values (Value01, value02, value03),
(Value11, value12, value13),
(Value21, value22, value23),
.
.
(ValueN1, valueN2, valueN3)

Here table_name is name of the table, column is the name of columns

