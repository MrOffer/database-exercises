USE employees;


# write a query that shows each department along with the name of the current manager for that department
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > curdate()
ORDER BY departments.dept_name;

# Find the name of all departments currently managed by women
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > curdate() and gender ='F'
ORDER BY departments.dept_name;

# Find the current titles of employees currently working in the Customer Service department
select titles.title, count(titles.title)
from titles
join dept_emp on dept_emp.emp_no = titles.emp_no
where titles.to_date > curdate() AND dept_emp.dept_no = 'd009' AND dept_emp.to_date > curdate()
group by titles.title;


# Find the current salary of all current managers
select d.dept_name as 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) as 'Name', s.salary as 'Salary'
from employees
join dept_manager dm on employees.emp_no = dm.emp_no
join salaries s on employees.emp_no = s.emp_no
join dept_emp de on employees.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
where dm.to_date > curdate() and s.to_date > curdate()
order by salary desc;

# Bonus Find the names of all current employees, their department name, and their current manager's name
select concat(e.first_name,' ', e.last_name) as "Employee Name", d.dept_name as "Department Name", concat(em.first_name,' ', em.last_name) as "Department Manager"
from departments as d
join dept_manager as dm on d.dept_no = dm.dept_no
join dept_emp as de on d.dept_no = de.dept_no
join employees as em on em.emp_no = dm.emp_no
join employees as e on e.emp_no = de.emp_no
where dm.to_date > curdate() and de.to_date > curdate()
order by d.dept_name asc;


show create table employees;
show create table salaries;