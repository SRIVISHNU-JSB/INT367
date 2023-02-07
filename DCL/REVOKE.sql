Data Controlling Language (DCL) helps users to retrieve and modify the data stored in the database with some specified queries. Grant and Revoke belong to these types of commands of the Data controlling Language. DCL is a component of SQL commands. 

1. Grant : 
SQL Grant command is specifically used to provide privileges to database objects for a user. This command also allows users to grant permissions to other users too. 

Syntax: 

grant privilege_name on object_name
to {user_name | public | role_name} 
Here privilege_name is which permission has to be granted, object_name is the name of the database object, user_name is the user to which access should be provided, the public is used to permit access to all the users. 


2. Revoke : 
Revoke command withdraw user privileges on database objects if any granted. It does operations opposite to the Grant command. When a privilege is revoked from a particular user U, then the privileges granted to all other users by user U will be revoked. 

Syntax: 

revoke privilege_name on object_name
from {user_name | public | role_name}

Example: 



grant insert, 
select on accounts to Ram
By the above command user ram has granted permissions on accounts database object like he can query or insert into accounts. 

revoke insert, 
select on accounts from Ram
By the above command user ram’s permissions like query or insert on accounts database object has been removed. 

 



To know the exact syntax and how are they used click here. 

Differences between Grant and Revoke commands: 
 

S.NO	Grant	Revoke
1	This DCL command grants permissions to the user on the database objects.	This DCL command removes permissions if any granted to the users on database objects.
2	It assigns access rights to users.	It revokes the useraccess rights of users.
3	For each user you need to specify the permissions.	If access for one user is removed; all the particular permissions provided by that users to others will be removed.
4	When the access is decentralized granting permissions will be easy.	If decentralized access removing the granted permissions is difficult.