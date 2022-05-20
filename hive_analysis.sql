select s.emp_no, e.last_name, e.first_name, e.sex, s.salary from employees as e inner join salaries as s on s.emp_no = e.emp_no order by s.emp_no;      

select emp_no, last_name, first_name, hire_date from employees where year(to_date(from_unixtime(unix_timestamp(hire_date, 'dd/MM/yyyy')))) = 1986;      

select  department_managers.dept_no, deprtments.dept_name, department_managers.emp_no, employees.last_name, employees.first_name from department_manager inner join deprtments on department_manager.dept_no= deprtments.dept_no inner join employees on department_managers.emp_no = employees.emp_no order by department_managers.dept_no; 

select e.emp_no, e.last_name, e.first_name,d.dept_name from employees as e left join dept_employe as de on e.emp_no = de.emp_no inner join deprtments as  d on de.dept_no = d.dept_no order by e.emp_no;                                                                                                     

select e.last_name, e.first_name from employees as e where e.first_name = 'Hercules' and e.last_name like 'B%' order by e.last_name;              

select employees.emp_no, employees.last_name, employees.first_name, deprtments.dept_name from  deprtments inner join  department_employees on deprtments.dept_no = department_employees.dept_no inner join employees on department_employees.emp_no = employees.emp_no where dept_name = "Sales";                              
select employees.emp_no, employees.last_name, employees.first_name, deprtments.dept_name from  deprtments inner join  department_employees on deprtments.dept_no = dept_employee.dept_no inner join employees on department_employees.emp_no = employees.emp_no where deprtments.dept_name like '%Sales%' or deprtments.dept_name like '%development%';                                                                                                                                  

select last_name,count(last_name) as frequency from employees group by last_name order by frequency desc;      
                                                                                                                                                   
select t1.emp_no, t2.emp_no, t1.first_name, t1.last_name,t1.sex,t2.salary from employees t1 inner join salaries t2 on t1.emp_no = t2.emp_no;            
                                                                                                                                                      
select t1.title, avg(t3.salary) as avg_salary from tittles t1 inner join employees t2 on t1.title_id = t2.emp_title_id inner join salaries t3 on t2. 'dd
/MM/yyyy')))) as ended, year(cast(to_date(from_unixtime(unix_timestamp(last_date, 'dd/MM/yyyy')))))-year(cast(to_date(from_unixtime(unix_timestamp(hire_d
ate, 'dd/MM/yyyy'))))) from employees;
