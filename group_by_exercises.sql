use employees;

#2
select distinct title from titles;

#3
select distinct last_name from employees
where last_name like 'E%'
and last_name like '%e'
group by last_name ASC;

#4
select distinct first_name, last_name from employees
where last_name like 'E%'
and last_name like '%e';

#5
select last_name, count(last_name) from employees
where last_name like '%q%'
and last_name not like '%qu%'
group by last_name;

#6
select count(*), gender from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender;

#7
select user_name, count(*)
from (select lower(concat(substr( first_name, 1, 1),
                          substring(last_name, 1, 4),
                          '_', 
                          substr(birth_date, 6, 2),
                          substr(birth_date, 3, 2))) as user_name,
                          first_name, last_name, birth_date 
                          from employees) as temp
                          group by user_name;
                          
#Bonus
select sum(temp.username_count)
from (select concat(lower(substr(first_name, 1, 1)),
lower(substr(last_name, 1, 4)),
"_", substr(birth_date, 6, 2),
substr(birth_date, 3, 2)) as username,
count(*) as username_count
from employees
group by username
order by username_count desc) as temp
where username_count > 1;