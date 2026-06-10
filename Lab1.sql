Task Description
--------------------------------------	
● Create a database with the name StudentManagementSystem. 

Create a table with named Student with attributes

: ● StudentID (Primary Key) ● FirstName ● LastName ● DateOfBirth ● Gender ● Email ● Phone

Insert 5 Records in students table

-------------------------------------------------------------------------------------------------------------------------------------------

mysql>  create database StudentManagementSystem1;
Query OK, 1 row affected (0.01 sec)

mysql>  use StudentManagementSystem1;
Database changed
mysql>  create table student1(StudentID varchar(10) not null primary key,FirstName varchar(50) not null, LastName varchar(50) not null,DateofBirth datetime not null,Gender varchar(20) not null,email varchar(50) not null, phone varchar(10));
Query OK, 0 rows affected (0.05 sec)

mysql> desc student1;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| StudentID   | varchar(10) | NO   | PRI | NULL    |       |
| FirstName   | varchar(50) | NO   |     | NULL    |       |
| LastName    | varchar(50) | NO   |     | NULL    |       |
| DateofBirth | datetime    | NO   |     | NULL    |       |
| Gender      | varchar(20) | NO   |     | NULL    |       |
| email       | varchar(50) | NO   |     | NULL    |       |
| phone       | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> insert into student1 values('1','sakshi','shahu','2005-06-29','female','sakshishahu81@gmail.com','8591255720'),('2','harshita','shukla','2005-06-04','female','harshita66@gmail.com','9137101727'),('3','supriya','yadav','2005-01-01','female','supriya22@gmail.com','7684962758'),('4','santosh','sahu','2005-04-29','male','santosh33@gmail.com','7646946578'),('5','pradeep','yadav','2005-08-01','male','pradeep34@gmail.com','5796358975');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0


mysql> select *from student1;
+-----------+-----------+----------+---------------------+--------+-------------------------+------------+
| StudentID | FirstName | LastName | DateofBirth         | Gender | email                   | phone      |
+-----------+-----------+----------+---------------------+--------+-------------------------+------------+
| 1         | sakshi    | shahu    | 2005-06-29 00:00:00 | female | sakshishahu81@gmail.com | 8591255720 |
| 2         | harshita  | shukla   | 2005-06-04 00:00:00 | female | harshita66@gmail.com    | 9137101727 |
| 3         | supriya   | yadav    | 2005-01-01 00:00:00 | female | supriya22@gmail.com     | 7684962758 |
| 4         | santosh   | sahu     | 2005-04-29 00:00:00 | male   | santosh33@gmail.com     | 7646946578 |
| 5         | pradeep   | yadav    | 2005-08-01 00:00:00 | male   | pradeep34@gmail.com     | 5796358975 |
+-----------+-----------+----------+---------------------+--------+-------------------------+------------+
5 rows in set (0.00 sec)

