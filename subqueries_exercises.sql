use employees;


# Find all the employees with the same hire date as employee 101010 using a sub-query. 69 Rows

select *
from employees
where hire_date = (
select hire_date
from employees
where emp_no = '101010'
);

# Find all the titles held by all employees with the first name Aamod 314 total titles, 6 unique titles

select distinct title
from titles
where emp_no IN (
select emp_no
from employees
where first_name = 'Aamod'
);

# Find all the current department managers that are female

select first_name, last_name
from employees
where gender = 'F' and emp_no IN (
select emp_no
from dept_manager
where to_date > curdate()
);

# Find all the department names that currently have female managers.

select distinct dept_name
from departments
join dept_manager dm on departments.dept_no = dm.dept_no
join employees e on dm.emp_no = e.emp_no
where dm.to_date > curdate() and gender = 'F'
order by dept_name asc;

select dept_name from departments
where dept_no in (
select dept_no from dept_manager
where to_date > curdate() and emp_no in (
select emp_no from employees
where gender='F'
)
);

# Find the first and last name of the employee with the highest salary

select first_name, last_name
from employees
where emp_no in (
select emp_no
from salaries
where salary = (
select max(salary)
from salaries
)
);


-- get current manager name of Sales department (use subqueries)

SELECT concat(first_name, ' ',last_name) as Sales_Manager
From employees
Where emp_no In (
    select emp_no
    From dept_manager
    WHERE to_date > curdate() and dept_no = (
        select dept_no
        From departments
        where dept_name = 'Sales'
        )
    );

-- get all senior engineers in customer service department

SELECT * From employees Where emp_no IN (
    SELECT emp_no FROM titles WHERE title = 'Senior Engineer'
     And emp_no IN (select emp_no from dept_emp
    WHERE dept_no IN (
        select dept_no
        From departments
        where dept_name = 'Customer Service'
        )
         )
    );

-- get all first and last names of current Sales department employees

select last_name from employees where emp_no in (select emp_no
from dept_emp Where dept_no In ( select dept_no from departments where dept_name = 'Sales'));



