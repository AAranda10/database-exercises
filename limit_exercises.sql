use employees;

#2
select distinct last_name from employees
order by last_name DESC
limit 10;

#3
select first_name, last_name, birth_date, emp_no from employees
where birth_date like '%%%%-12-25'
and hire_date like '199%'
order by birth_date ASC, hire_date DESC
limit 5;

#4
select first_name, last_name, birth_date, emp_no from employees
where birth_date like '%%%%-12-25'
and hire_date like '199%'
order by birth_date ASC, hire_date DESC
limit 5 offset 45;

#The relationship between limit and offset is that limit says how many lines per "page" and
offset which line do you want to start on, so in order to figure out the page,
you need to calculate n-1 * limit for the offset. n is the page number you want to use.
So for this example, offset = 10 - 1 * 5 which gives you 45.