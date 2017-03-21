These two scripts create travel_platform database and tables.

Scipt createDatabaseScript.sql is for creating database on your localhost.

Script createDatabaseScriptTuring.sql is for creating database on Turing.
To create database on Turing:
1.login as your username and password to Turing
2.put the script createDatabaseScriptTuring.sql into your home folder on Turing using WinSCP or similar file manager
3.type and press enter 'mysql -u Quadratic -p'
4.in password promt enter 'Quadratic'
5.type 'use Quadratic;' to select the project database
6.type 'source createDatabaseScriptTuring.sql;' , this will run script and create database
7.type 'show tables;' to check table creation