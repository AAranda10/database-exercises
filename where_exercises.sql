use employees;
#2
select first_name, last_name from employees
where first_name in ('Irena', 'Vidya' ,'Maya');

#2-2
select first_name, last_name from employees
where first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya';

#2-3
select first_name, last_name from employees
where first_name in ('Irena', 'Vidya' ,'Maya')
and gender = 'M';

#3
select first_name, last_name from employees
where last_name like 'E%';

#3-2
select first_name, last_name from employees
where last_name like 'E%'
or last_name like '%e';

#3-3
select first_name, last_name from employees
where last_name like 'E%'
and last_name like '%e';

#4
select first_name, last_name, hire_date from employees
where hire_date like '199%-%%-%%';

#5
select first_name, last_name, birth_date from employees
where birth_date like '%%%%-12-25';

#5-2
select first_name, last_name, birth_date from employees
where birth_date like '%%%%-12-25'
and hire_date like '199%';

#6
select first_name, last_name from employees
where last_name like '%q%';

#6-2
select first_name, last_name from employees
where last_name like '%q%'
and last_name not like '%qu%';