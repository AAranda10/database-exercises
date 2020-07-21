use employees;
#2
select first_name, last_name from employees
where first_name in ('Irena', 'Vidya' ,'Maya')
order by first_name ASC;

#3
select first_name, last_name from employees
where first_name in ('Irena', 'Vidya' ,'Maya')
order by first_name ASC, last_name ASC;

#4
select first_name, last_name from employees
where first_name in ('Irena', 'Vidya' ,'Maya')
order by last_name ASC, first_name ASC;

#5
select first_name, last_name from employees
where last_name like 'E%'
or last_name like '%e'
order by emp_no ASC;

select first_name, last_name from employees
where last_name like 'E%'
and last_name like '%e'
order by emp_no ASC;

#6
select first_name, last_name from employees
where last_name like 'E%'
or last_name like '%e'
order by emp_no DESC;

select first_name, last_name from employees
where last_name like 'E%'
and last_name like '%e'
order by emp_no DESC;

#7
select first_name, last_name, birth_date from employees
where birth_date like '%%%%-12-25'
and hire_date like '199%'
order by birth_date ASC, hire_date DESC;