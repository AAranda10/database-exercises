use employees;

#1
select dept_emp.emp_no, max(employees.hire_date) as start_date, max(dept_emp.to_date) as last_date_of_employement, max(case when dept_emp.to_date> curdate() then 1 else 0 end) as is_current_emp
from dept_emp
join employees using(emp_no)
group by dept_emp.emp_no;

#2
select first_name, last_name,
	case when last_name regexp '^[A-H]' then 'A-H'
	when last_name regexp '^[I-Q]' then 'I-Q'
	when last_name regexp '^[R-Z]' then 'R-Z'
	else null end as alpha_group
from employees;

#3
select count(birth_date),
	case when year(birth_date) between 1950 and 1959 then '50s'
	when year(birth_date) between 1960 and 1969 then '60s'
	end as decade
	from employees
group by decade;
