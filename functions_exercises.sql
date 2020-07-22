use employees;

#2a
select concat(first_name,' ',last_name) as full_name from employees
where last_name like 'E%';

#2b
select concat(first_name,' ',last_name) as full_name from employees
where last_name like 'E%'
or last_name like '%e';

#2c
select concat(first_name,' ',last_name) as full_name from employees
where last_name like 'E%'
and last_name like '%e';

#3a
select upper(concat(first_name,' ',last_name)) as full_name from employees
where last_name like 'E%';

#3b
select upper(concat(first_name,' ',last_name)) as full_name from employees
where last_name like 'E%'
or last_name like '%e';

#3c
select upper(concat(first_name,' ',last_name)) as full_name from employees
where last_name like 'E%'
and last_name like '%e';

#4
select first_name, last_name, hire_date, datediff(now(), hire_date) from employees
where birth_date like '%%%%-12-25'
and hire_date like '199%';

#5a
select max(salary) from salaries;

#5b
select min(salary) from salaries;

#6
select concat(lower(substr(first_name, 1, 1)), lower(substr(last_name, 1, 4)), '_',
lower(substr(birth_date, 6, 7)), lower(substr(birth_date, 2, 0))) as username from employees;