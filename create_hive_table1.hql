create database samreenalab_capstone;
use samreenalab_capstone;

create external table Employees(emp_no int,emp_title_id varchar(10),birth_date varchar(20),first_name varchar(20),last_name varchar(20),sex varchar(2),hire_date varchar(20),no_of_projects int,Last_performance_rating varchar(2),left_ boolean,last_date varchar(20));
STORED AS PARQUET LOCATION "/user/anabig114218/capstone_project_exl/Employees";

create external table Salaries(emp_no int,salary int);
STORED AS PARQUET LOCATION "/user/anabig114218/capstone_project_exl/Salaries";

create external table Titles(title_id varchar(10),title varchar(20));
STORED AS PARQUET LOCATION "/user/anabig114218/capstone_project_exl/Titles";

create external table Departments(dept_no varchar(10),dept_name varchar(20));
STORED AS PARQUET LOCATION "/user/anabig114218/capstone_project_exl/Departments";


create external table Department_Employees(emp_no int,dept_no varchar(10));
STORED AS PARQUET LOCATION "/user/anabig114218/capstone_project_exl/Department_Employees";

create external table Department_Managers(dept_no varchar(10),emp_no int);
STORED AS PARQUET LOCATION "/user/anabig114218/capstone_project_exl/Department_Managers";
