--1.
select employees.emp_no as "Employee Number",
employees.last_name as "Last Name", 
employees.first_name as "First Name",
employees.gender as "Gender", 
salaries.salary as " Salary"
from employees inner join salaries on employees.emp_no = salaries.emp_no;

--2.
select emp_no as "Employee Number",
last_name as "Last Name",
first_name as "First Name",
hire_date as "hired on"
from employees where hire_date like '1986%';

--3.
select department.dept_no as "Dept #",
department.dept_name as "Dept Name",
dept_manager.emp_no as "Employee #",
employees.last_name as "Last Name",
employees.first_name as "First Name",
dept_manager.from_date as "Start Date",
dept_manager.to_date as " End Date"
from department inner join dept_manager on department.dept_no = dept_manager.dept_no
inner join employees on dept_manager.emp_no = employees.emp_no;

--attempt to get rid of the 9999 dates
select department.dept_no as "Dept #",
department.dept_name as "Dept Name",
dept_manager.emp_no as "Employee #",
employees.last_name as "Last Name",
employees.first_name as "First Name",
dept_manager.from_date as "Start Date",
dept_manager.to_date as " End Date"
from department inner join dept_manager on department.dept_no = dept_manager.dept_no
inner join employees on dept_manager.emp_no = employees.emp_no
where dept_manager.to_date not like '99%';

--4.
select employees.emp_no as "Employee #",
employees.last_name as "Last Name",
employees.first_name as "First Name",
department.dept_name as "Department Name"
from employees inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join department on dept_emp.dept_no = department.dept_no;

--5.
select first_name as "First Name",
last_name as "Last Name"
from employees where first_name = 'Hercules' and last_name like 'B%';

--6.
select employees.emp_no as "Employee #",
employees.last_name as "Last Name",
employees.first_name as "First Name",
department.dept_name as "Department Name"
from employees inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join department on dept_emp.dept_no = department.dept_no
where department.dept_name = 'Sales';

--7.
select employees.emp_no as "Employee #",
employees.last_name as "Last Name",
employees.first_name as "First Name",
department.dept_name as "Department Name"
from employees inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join department on dept_emp.dept_no = department.dept_no
where department.dept_name = 'Sales' or department.dept_name = 'Development';

--8.
select last_name, count(last_name) as "Last Name count" from employees 
group by last_name order by "Last Name count" desc;