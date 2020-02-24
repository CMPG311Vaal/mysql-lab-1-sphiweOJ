Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.19 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bidvestbank        |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.02 sec)

mysql> use bidvestbank;
Database changed
mysql> create table BankBranch(
    -> branch_name varchar(7) not null primary key,branch_city varchar(10),assets varchar(7)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> create table customer(
    -> customer_name varchar(10) not null primary key,customer_streets varchar(10),customer_city varchar(10)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> create table customerAccount(
    -> account_number char(7) not null primary key,
    -> branch_name varchar(10),
    -> balance double
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> create table loan(
    -> loan_number char(7),
    -> branch_name varchar(10),
    -> amount double);
Query OK, 0 rows affected (0.04 sec)

mysql> create table depositor(
    -> customer_name varachar(10),account_number char(7) not null primary key);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'varachar(10),account_number char(7) not null primary key)' at line 2
mysql> create table depositor(
    -> customer_name varchar(10),account_number char(7) not null primary key);
Query OK, 0 rows affected (0.04 sec)

mysql> create table Borrower(
    -> Customer_name varchar(10),loan_number char(7) primary key);
Query OK, 0 rows affected (0.04 sec)

mysql> create table employee(
    -> employee_name varchar(10),branch_name varchar(10),salary double);
Query OK, 0 rows affected (0.04 sec)

mysql> show tables;
+-----------------------+
| Tables_in_bidvestbank |
+-----------------------+
| bankbranch            |
| borrower              |
| customer              |
| customeraccount       |
| depositor             |
| employee              |
| loan                  |
+-----------------------+
7 rows in set (0.01 sec)

mysql> insert into customerAccount values('A-5324','Newtown',5000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customerAccount values('A-56324','SunnySide',4000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customerAccount values('A-7724','Midrand',9000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customerAccount values('A-4467','mabopane',700);
Query OK, 1 row affected (0.01 sec)



mysql> insert into customerAccount values('A-2542','mamelodi',350);
Query OK, 1 row affected (0.01 sec)



mysql> insert into BankBranch values('Newtown','Joburg',900000);
Query OK, 1 row affected (0.01 sec)


mysql> insert into BankBranch values('Univers','Bloemf',2100000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into BankBranch values('Mamelod','Pretoria',8000000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Customer values('Modise','Spring','George');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Customer values('Jooste','North','Kimberly');
Query OK, 1 row affected (0.00 sec)

mysql> insert into Customer values('Lombard','SndHill','Nelsprt');
Query OK, 1 row affected (0.02 sec)

mysql> insert into Customer values('Mokwena','Walnut','Port-E');
Query OK, 1 row affected (0.00 sec)

mysql> insert into Customer values('Johnson','Mmabatho','Mafikeng');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Customer values('Zwane','Main','Mafikeng');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Customer values('Lindsay','Park','George');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Customer values('Smith','North','Kimberly');
Query OK, 1 row affected (0.00 sec)

mysql> insert into Customer values('Dlamini','Putnam','Port-Eli');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Customer values('Williams','Nassau','Giyane');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Loan values('L-11','Mamelodi',900);
Query OK, 1 row affected (0.01 sec)


mysql> insert into Loan values('L-14','Newtown',1500);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Loan values('L-15','Sunnyside',1500);
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> insert into Loan values('L-15','Sunnyside',1500);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Loan values('L-17','Newtown',1000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Loan values('L-23','Univesitas',2000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Loan values('L-93','Mabopane',500);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Depositor values('Johnson','A-5624');
Query OK, 1 row affected (0.02 sec)

mysql> insert into Depositor values('John','A-5623');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Depositor values('Johns','A-7794');
Query OK, 1 row affected (0.00 sec)

mysql> insert into Depositor values('Zwane','A-3546');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Depositor values('Lindsay','A-3453');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Depositor values('Smith','A-4467');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Depositor values('Dlamini','A-2542');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Borrower values('Modise','L-16');
Query OK, 1 row affected (0.02 sec)

mysql> insert into Borrower values('Jooste','L-93');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Borrower values('Johnson','L-15');
Query OK, 1 row affected (0.00 sec)

mysql> insert into Borrower values('Jackson','L-14');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Borrower values('Zwane','L-17');
Query OK, 1 row affected (0.00 sec)

mysql> insert into Borrower values('Smith','L-11');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Borrower values('Smith','L-23');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Borrower values('Williams','L-27');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee values('Modise','Sunnyside',1500);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee values('Brown','Sunnyside',1300);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee values('Gopal','Sunnyside',5300);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee values('Johnson','Newtown',1500);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee values('Loreena','Newtown',1300);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee values('Peterson','Newtown',2500);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee values('Rao','Austin',1500);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Employee values('Sato','Austin',1600);
Query OK, 1 row affected (0.01 sec)

mysql>  select account_number, balance
    -> from customerAccount
    -> where balance < 700
    -> where balance < 700;

mysql>  select account_number, balance
    -> from customerAccount
    -> where balance < 700;
+----------------+---------+
| account_number | balance |
+----------------+---------+
| A-2542         |     350 |
+----------------+---------+
1 row in set (0.00 sec)

mysql> select account_number, balance
    -> from customerAccount
    -> where balance > 700;
+----------------+---------+
| account_number | balance |
+----------------+---------+
| A-2587         |     850 |
| A-3453         |     750 |
| A-5324         |    5000 |
| A-56324        |    4000 |
| A-7724         |    9000 |
+----------------+---------+
5 rows in set (0.00 sec)

mysql> select customer_name,customer_city
    -> from customer;
+---------------+---------------+
| customer_name | customer_city |
+---------------+---------------+
| Brooks        | Josburg       |
| Dlamini       | Port-Eli      |
| John          | Bloemfo       |
| Johnson       | Mafikeng      |
| Jooste        | Kimberly      |
| Lindsay       | George        |
| Lombard       | Nelsprt       |
| Modise        | George        |
| Mokwena       | Port-E        |
| Smith         | Kimberly      |
| Williams      | Giyane        |
| Zwane         | Mafikeng      |
+---------------+---------------+
12 rows in set (0.00 sec)

mysql> select customer_name,customer_city
    -> from customer
    -> where customer_city ='josburg';
+---------------+---------------+
| customer_name | customer_city |
+---------------+---------------+
| Brooks        | Josburg       |
+---------------+---------------+
1 row in set (0.00 sec)

mysql> select employee_name,branch_name,salary
    -> from employee
    -> where salary > 1500 and branch_name != 'newtown';
+---------------+-------------+--------+
| employee_name | branch_name | salary |
+---------------+-------------+--------+
| Gopal         | Sunnyside   |   5300 |
| Sato          | Austin      |   1600 |
+---------------+-------------+--------+
2 rows in set (0.00 sec)

mysql> select employee_name, AVG(salary) AS avg_salary
    -> from employee;
+---------------+------------+
| employee_name | avg_salary |
+---------------+------------+
| Modise        |     2062.5 |
+---------------+------------+
1 row in set (0.00 sec)

mysql> select avg(salary) as avg_salary
    -> from employee;
+------------+
| avg_salary |
+------------+
|     2062.5 |
+------------+
1 row in set (0.00 sec)

mysql> select branch_name,branch_city,max(assets)
    -> from Bankbranch;
+-------------+-------------+-------------+
| branch_name | branch_city | max(assets) |
+-------------+-------------+-------------+
| Amanzi      | Durban      | 900000      |
+-------------+-------------+-------------+
1 row in set (0.00 sec)

mysql> select employee_name,branch_name
    -> from employee
    -> where branch_name = 'Sunnyside';
+---------------+-------------+
| employee_name | branch_name |
+---------------+-------------+
| Modise        | Sunnyside   |
| Brown         | Sunnyside   |
| Gopal         | Sunnyside   |
+---------------+-------------+
3 rows in set (0.00 sec)

mysql> SELECT customer_name, loan_number
    -> from borrower;
+---------------+-------------+
| customer_name | loan_number |
+---------------+-------------+
| Smith         | L-11        |
| Jackson       | L-14        |
| Johnson       | L-15        |
| Modise        | L-16        |
| Zwane         | L-17        |
| Smith         | L-23        |
| Williams      | L-27        |
| Jooste        | L-93        |
+---------------+-------------+
8 rows in set (0.00 sec)

mysql> select account_number,balance
    -> from customeraccount
    -> where balance > 900;
+----------------+---------+
| account_number | balance |
+----------------+---------+
| A-5324         |    5000 |
| A-56324        |    4000 |
| A-7724         |    9000 |
+----------------+---------+
3 rows in set (0.00 sec)

mysql> select account_number, balance
    -> from customeraccount
    -> where balance > 600 and branch_name = 'newtown';
+----------------+---------+
| account_number | balance |
+----------------+---------+
| A-5324         |    5000 |
+----------------+---------+
1 row in set (0.00 sec)

mysql> select branch_name,assets
    -> from bankbranch;
+-------------+---------+
| branch_name | assets  |
+-------------+---------+
| Amanzi      | 300000  |
| Belrava     | 3700000 |
| Mabopae     | 400000  |
| Mamelod     | 8000000 |
| Midrand     | 71000   |
| Newtown     | 900000  |
| Sunysid     | 1700000 |
| Univers     | 2100000 |
+-------------+---------+
8 rows in set (0.00 sec)
