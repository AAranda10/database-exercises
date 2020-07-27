#1
select e.emp_no, concat (e.first_name, '_', e.last_name) as full_name,
e.birth_date, e.hire_date, e.gender, dpt.dept_name, dpt.dept_no, dpte.from_date, dpte.to_date
from employees.employees as e
join employees.dept_emp as dpte using(emp_no)
join employees.departments as dpt using (dept_no);

#2
create table payments as select * from sakila.payment;
alter table payments modify amount int unsigned;
update payments set amount = amount * 100;

#3
create table emps as select e.*, s.salary, dpt.dept_name as department, d.dept_no from employees.employees as e
join employees.salaries as s using (emp_no)
join employees.dept_emp as dpt using (emp_no)
join employees.departments as d using(dept_no);

select * from emps;

alter table emps add mean_salary float;
alter table emps add sd_salary float;
alter table emps add z_salary float;

select * from emps limit 50;

create temporary table salary_aggregates as
select avg(salary) as mean from emps and 
stddev(salary) as sd from emps;

select * from salary_aggregates;

update emps set mean_salary = (select mean from salary_aggregates);

update emps set sd_salary = (select sd from salary_aggregates);

update emps set z_salary = (salary - mean_salary) / sd_salary;