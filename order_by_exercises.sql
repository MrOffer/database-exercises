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