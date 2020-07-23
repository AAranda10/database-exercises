use employees;

#2
SELECT concat(first_name, '_', last_name) as Department_Manager, d.dept_name FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
  where to_date > curdate()
  order by dept_name asc;
  
#3
SELECT concat(first_name, '_', last_name) as Department_Manager, d.dept_name FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
  where to_date > curdate() and e.gender = 'F'
  order by dept_name asc;
  
#4
SELECT count(t.title), title from titles as t
join dept_emp as d
on t.emp_no = d.emp_no
join departments as dpt
on d.dept_no = dpt.dept_no
where t.to_date > curdate() and dpt.dept_no = 'd009'
group by title;

#5
SELECT concat(first_name, '_', last_name) as Department_Manager, d.dept_name, s.salary FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
join salaries as s
on s.emp_no = dm.emp_no
  where dm.to_date > curdate() and s.to_date > curdate()
  order by dept_name asc;

  #6
select d.dept_no, d.dept_name, count(de.dept_no) as num_employees from dept_emp as de
join departments as d
on de.dept_no = d.dept_no
where de.to_date > curdate()
group by d.dept_no;

#7
select d.dept_name, avg(s.salary) from salaries as s
join dept_emp as dpt
on s.emp_no = dpt.emp_no
join departments as d
on d.dept_no = dpt.dept_no
where s.to_date > curdate()
group by d.dept_name;