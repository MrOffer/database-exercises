USE employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya') ORDER BY first_name;


SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' ORDER BY emp_no;


# Now reverse the sort order for both queries.

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' ORDER BY emp_no DESC ;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.

SELECT emp_no, first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date
LIKE '199%'
AND birth_date
LIKE '%-12-25' ORDER BY birth_date ASC, hire_date DESC;


# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%e' ;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
SELECT first_name, last_name, hire_date, curdate() AS 'Current Date', datediff(curdate(), hire_date) AS 'Days worked at company'
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25' ORDER BY birth_date, hire_date DESC;