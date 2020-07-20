SELECT * FROM mysql.user;
SELECT user, host FROM mysql.user;
SELECT * FROM mysql.help_topic;
SELECT help_topic_id, help_category_id, url FROM mysql.help_topic;

use employees;

select database();

show tables;

show create database employees;

#5. Date, VARCHAR, CHAR, and INT
#6. dept_emp, dept_manager, employees, employees_with_departments, salaries, titles
#7. all but salaries has a string type
#8. all but departments and employees_with_departments
#9. dept_emp and dept_manager form the relationship between both of those tables.
#10.
CREATE TABLE `dept_manager` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
  CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;