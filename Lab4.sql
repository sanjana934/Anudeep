
mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| aggregation              |
| anp_d4848                |
| bank                     |
| ecommerce                |
| information_schema       |
| joins                    |
| joints                   |
| mysql                    |
| performance_schema       |
| storeprocedureeg         |
| student_management       |
| studentmanagementsystem  |
| studentmanagementsystem1 |
| studentmanagementsystem2 |
| sys                      |
| test                     |
+--------------------------+
16 rows in set (0.06 sec)

mysql> use ecommerce;
Database changed
mysql> create database StudentManagementSystem3;
Query OK, 1 row affected (0.06 sec)

mysql> use StudentManagementSystem3;
Database changed
mysql> create table Student(StudentID int primary key,FirstName varchar(50),LastName varchar(50));
Query OK, 0 rows affected (0.12 sec)

mysql> create table course(CourseID int primary key,CourseName varchar(100));
Query OK, 0 rows affected (0.04 sec)

mysql> desc Student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| StudentID | int         | NO   | PRI | NULL    |       |
| FirstName | varchar(50) | YES  |     | NULL    |       |
| LastName  | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.04 sec)

mysql> desc Course;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| CourseID   | int          | NO   | PRI | NULL    |       |
| CourseName | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> create table Enrollement(EnrollmentID int primary key,StudentID int,CourseID int, FOREIGN KEY(StudentID) REFERENCES Student(StudentID),FOREIGN KEY (CourseID) REFERENCES Course(CourseId));
Query OK, 0 rows affected (0.08 sec)

mysql> insert into Student values(1,'riya','sharma'),(2,'sona','yadav'),(3,'nisha','Gupta'),(4,'rahul','singh'),(5,'seneha','yadav');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> insert into Course values(101,'Database Systems'),(102, 'Programming Fundamentals'),(103, 'Web Development'),(104,'Data Anaylst'),(105,'Database Systems');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> insert into Enrollement values(1, 1, 101),(2, 1, 102),(3, 2, 103),(4, 3, 101),(5,1,104);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select S.StudentId,S.FirstName, S.LastName,C.CourseId, C.CourseName from Student S INNER JOIN Enrollement E ON S.StudentId = E.StudentID INNER JOIN Course C ON E.CourseID = C.CourseId;
+-----------+-----------+----------+----------+--------------------------+
| StudentId | FirstName | LastName | CourseId | CourseName               |
+-----------+-----------+----------+----------+--------------------------+
|         1 | riya      | sharma   |      101 | Database Systems         |
|         1 | riya      | sharma   |      102 | Programming Fundamentals |
|         1 | riya      | sharma   |      104 | Data Anaylst             |
|         2 | sona      | yadav    |      103 | Web Development          |
|         3 | nisha     | Gupta    |      101 | Database Systems         |
+-----------+-----------+----------+----------+--------------------------+
5 rows in set (0.00 sec)
