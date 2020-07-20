SELECT * FROM mysql.user;
SELECT user, host FROM mysql.user;
SELECT * FROM mysql.help_topic;
SELECT help_topic_id, help_category_id, url FROM mysql.help_topic;

use employees;

select database();

show tables;

Describe departments;
Describe dept_emp;
Describe dept_manager;
Describe employees;
Describe employees_with_departments;
Describe salaries;
Describe titles;

show create database employees;

#5. Date, VARCHAR, CHAR, and INT
#6. dept_emp, dept_manager, employees, employees_with_departments, salaries, titles
#7. all but salaries has a string type
#8. all but departments and employees_with_departments
#9. dept_emp and dept_manager form the relationship between both of those tables.
#10.show create table dept_manager;