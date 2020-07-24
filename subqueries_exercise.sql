use employees;

#1
select e.first_name, e.last_name, e.hire_date from employees as e
where e.hire_date in(
select e.hire_date from employees
where e.hire_date = '1990-10-22');

#2
select * from titles
where emp_no in (
	select emp_no from employees
	where employees.first_name = 'Aamod')
order by title;

#3
select count(emp_no) as 'Former Employees' from employees
where emp_no in (
	select emp_no from dept_emp
	where dept_emp.to_date < curdate());
	
#4
Select first_name, last_name from employees
where emp_no in (
	select emp_no from dept_manager
	where employees.gender = 'F' and dept_manager.to_date > curdate());
	
#5
SELECT e.first_name, e.last_name, s.salary
FROM salaries as s
JOIN employees as e ON e.emp_no = s.emp_no
WHERE s.salary > (
    SELECT avg(average.salary)
    FROM salaries as average)
and s.to_Date > curdate();
;