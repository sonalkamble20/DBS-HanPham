sonalkamble@syn-2603-7000-0cf0-65e0-0000-0000-0000-1265:~$ ssh kambles2@wyvern.cs.newpaltz.edu
The authenticity of host 'wyvern.cs.newpaltz.edu (137.140.4.187)' can't be established.
ED25519 key fingerprint is SHA256:WzNIlYOXrCERCqll1i923v5IkT09BOZy/R/LUTZ3GNA.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? y
Please type 'yes', 'no' or the fingerprint: y
Please type 'yes', 'no' or the fingerprint: yes
Warning: Permanently added 'wyvern.cs.newpaltz.edu' (ED25519) to the list of known hosts.
kambles2@wyvern.cs.newpaltz.edu's password: 
Received disconnect from 137.140.4.187 port 22:2: Too many authentication failures
Disconnected from 137.140.4.187 port 22
sonalkamble@syn-2603-7000-0cf0-65e0-0000-0000-0000-1265:~$ ssh -o IdentitiesOnly=yes kambles2@wyvern.cs.newpaltz.edu
kambles2@wyvern.cs.newpaltz.edu's password: 
Permission denied, please try again.
kambles2@wyvern.cs.newpaltz.edu's password: 
Received disconnect from 137.140.4.187 port 22:2: Too many authentication failures
Disconnected from 137.140.4.187 port 22
sonalkamble@syn-2603-7000-0cf0-65e0-0000-0000-0000-1265:~$ ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no kambles2@wyvern.cs.newpaltz.edu
kambles2@wyvern.cs.newpaltz.edu's password: 
Welcome to the Computer Science Linux Lab (on wyvern).

Academic Computing Linux Support Contact: help@cs.newpaltz.edu

Remote access instructions and other tips can be found in the
SUNY New Paltz ITS Knowledge Base:

https://newpaltz.teamdynamix.com/TDClient/KB/?CategoryID=4215

If there are any concerns about this server, please send an 
e-mail message to help@cs.newpaltz.edu with a description of 
the problem.

---

Last failed login: Mon Jul 21 14:33:47 EDT 2025 from 47.230.153.101 on ssh:notty
There were 3 failed login attempts since the last successful login.
[kambles2@wyvern ~]$ mysql -h localhost -u kambles2 -p
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 608060
Server version: 10.5.27-MariaDB MariaDB Server

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| kambles2_db        |
+--------------------+
2 rows in set (0.003 sec)

MariaDB [(none)]> 
MariaDB [(none)]> CREATE TABLE Students (
    ->   id INT PRIMARY KEY,
    ->   name VARCHAR(50),
    ->   major VARCHAR(50)
    -> );
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> use kambles2_db;
Database changed
MariaDB [kambles2_db]> CREATE TABLE Students (   id INT PRIMARY KEY,   name VARCHAR(50),   major VARCHAR(50) );
Query OK, 0 rows affected (0.006 sec)

MariaDB [kambles2_db]> INSERT INTO Students VALUES (1, 'Sonal Kamble', 'Computer Science');
Query OK, 1 row affected (0.002 sec)

MariaDB [kambles2_db]> INSERT INTO Students VALUES (2, 'John Doe', 'Mathematics');
Query OK, 1 row affected (0.001 sec)

MariaDB [kambles2_db]> SELECT * FROM Students;
+----+--------------+------------------+
| id | name         | major            |
+----+--------------+------------------+
|  1 | Sonal Kamble | Computer Science |
|  2 | John Doe     | Mathematics      |
+----+--------------+------------------+
2 rows in set (0.001 sec)

MariaDB [kambles2_db]> 

