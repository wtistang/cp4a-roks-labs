DB2 Command line

[db2inst1@RHEL73 ~]$ ls
createpbw.ddl  db2inst1  droppbw.ddl  sqllib

1)[db2inst1@RHEL73 ~]$ db2start
10/15/2018 19:33:38     0   0   SQL1063N  DB2START processing was successful.
SQL1063N  DB2START processing was successful.

2)[db2inst1@RHEL73 ~]$ db2 create db pbw
DB20000I  The CREATE DATABASE command completed successfully.

3)[db2inst1@RHEL73 ~]$ db2 -tvmf createpbw.ddl 

   Database Connection Information

 Database server        = DB2/LINUXX8664 11.1.0
 SQL authorization ID   = DB2INST1
 Local database alias   = PBW


DB20000I  The SQL command completed successfully.

DB20000I  The SQL command completed successfully.

DB20000I  The SQL command completed successfully.

DB20000I  The SQL command completed successfully.

DB20000I  The SQL command completed successfully.

DB20000I  The SQL command completed successfully.

DB20000I  The SQL command completed successfully.

DB20000I  The SQL command completed successfully.

DB20000I  The SQL command completed successfully.

DB20000I  The SQL command completed successfully.

DB20000I  The SQL command completed successfully.

DB20000I  The SQL command completed successfully.

DB20000I  The SQL command completed successfully.

DB20000I  The SQL command completed successfully.

WebSphere v8.5.5.x adminconsole

Create two DB2 JDBC providers; one XA, one connection pool datasource (non-XA) 

Resources -> JDBC providers 
New 
Database Type - DB2
Provider Type - DB2 Universal JDBC Driver Provider 
Implementation type - XA data source

Next
set directory location for db2jcc.jar
e.g. /opt/ibm/db2/V11.1/java

Next
Finish 

Resources -> JDBC providers 
New 
Database Type - DB2
Provider Type - DB2 Universal JDBC Driver Provider 
Implementation type - connection pool datasource 

Next
set directory location for db2jcc.jar
e.g. /opt/ibm/db2/V11.1/java

Next
Finish 

Create datasource on XA JDBC Provider 
New 
jndi name - jdbc/PlantsByWebSphereDataSource

Next 
database name - pbw
server name - enter server name or ip address for DB2 server
port number - take default unless configured differently 

Next 
follow link "Global J2C authentication alias" using "open link in new tab" 

New
Alias - enter value for alias, e.g. db2alias 
user id - enter db2 id. e.g. db2inst1
password - enter password for user, e.g. db2pwd
OK 

Return to datasource tab
Authentication alias for XA recovery - select alias just created
Component-managed authentication alias - select alias just created
Next 
Finish 

Create datasource on non-XA JDBC Provider 
New 
jndi name - jdbc/PlantsByWebSphereDataSourceNONJTA

Next 
database name - pbw
server name - enter server name or ip address for DB2 server
port number - take default unless configured differently 

Next

Component-managed authentication alias - select alias just created
Next 
Finish 

Applications -> New application 
New Enterprise application 
Browse to location of ear file
take all defaults 
Finish 

After starting server and accessing <host:port>/PlantsByWebSphere 

e.g http://localhost:9080/PlantsByWebSphere/promo.jsf

Click "help" in upper right hand corner
Click "reset database" 






















