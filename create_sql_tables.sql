
DROP TABLE IF EXISTS Employees;

create table Employees(emp_no int NOT NULL,emp_title_id varchar(10) NOT NULL,birth_date varchar(20) NOT NULL,first_name varchar(20) NOT NULL,last_name varchar(20) NOT NULL,sex varchar(2) NOT NULL,hire_date varchar(20) NOT NULL,no_of_projects int NOT NULL,Last_performance_rating varchar(2),left_ boolean,last_date varchar(20),PRIMARY KEY(emp_no));
load data local infile "/home/anabig114218/employees.csv" into table Employees fields terminated by ',' enclosed by '"' lines terminated by '\n' Ignore 1 rows; 

DROP TABLE IF EXISTS Salaries;

create table Salaries(emp_no int NOT NULL,salary int NOT NULL);
load data local infile "/home/anabig114218/salaries.csv" into table Salaries fields terminated by ',' enclosed by '"' lines terminated by '\n' Ignore 1 rows; 

DROP TABLE IF EXISTS Titles;

create table Titles(title_id varchar(10) NOT NULL,title varchar(20) NOT NULL, PRIMARY KEY (title_id));
load data local infile "/home/anabig114218/titles.csv" into table Titles fields terminated by ',' enclosed by '"' lines terminated by '\n' Ignore 1 rows;

DROP TABLE IF EXISTS Departments;

create table Departments(dept_no varchar(10) NOT NULL,dept_name varchar(20) NOT NULL,PRIMARY KEY(dept_no));

load data local infile "/home/anabig114218/departments.csv" into table Departments fields terminated by ',' enclosed by '"' lines terminated by '\n' Ignore 1 rows;

DROP TABLE IF EXISTS Department_Employees;

create table Department_Employees(emp_no int NOT NULL,dept_no varchar(10) NOT NULL);
load data local infile "/home/anabig114218/dept_emp.csv" into table Department_Employees fields terminated by ',' enclosed by '"' lines terminated by '\n' Ignore 1 rows; 

DROP TABLE IF EXISTS Department_Managers;

create table Department_Managers(dept_no varchar(10) NOT NULL,emp_no int NOT NULL);
load data local infile "/home/anabig114218/dept_manager.csv" into table Department_Managers fields terminated by ',' enclosed by '"' lines terminated by '\n' Ignore 1 rows;


