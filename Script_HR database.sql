/* MySQL Restricting and Sorting Data: [11 Question]
1. Write a query to display the name (first_name, last_name) and salary
for all employees whose salary is not in the range $10,000 through
$15,000.
sample table: Employees
*/
select first_name, last_name, salary, department_id
from employees 
where salary not between 10000 and 15000;

/*2. Write a query to display the name (first_name, last_name) and
department ID of all employees in departments 30 or 100 in ascending order.
*/
select first_name, last_name, salary, department_id
from employees 
where department_id in (30, 100)
order by department_id;

/*3. Write a query to display the name (first_name, last_name) and 
salary for all employees whose salary is not in the range 
$10,000 through $15,000 and are in department 30 or 100. 
Sample table: employees*/
select first_name, last_name, salary, department_id
from employees 
where salary not between 10000 and 15000
and department_id in (30, 100);

/*4. Write a query to display the name (first_name, last_name) and hire 
date for all employees who were hired in 1987.
select * from employees;*/
Select * from employees
where year(hire_date) = 1987;

/*
5. Write a query to display the first_name of all 
employees who have both "b" and "c" in their first name. 
*/
select first_name
from employees
where first_name like '%b%'
and first_name like '%c%';

/*6. Write a query to display the last name, job, and salary 
for all employees whose job is that of a Programmer or 
a Shipping Clerk, and whose salary is not equal to 
$4,500, $10,000, or $15,000. 

Sample table: employees*/
select last_name, job_id, salary
from employees
where job_id in ('IT_PROG', 'SH_CLERK')
and salary not in (4500, 10000, 15000);
