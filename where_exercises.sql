USE employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).

SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

# Find all employees whose last name starts with 'E' — 7,330 rows.

# SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name Like '%e';

# Find all employees hired in the 90s — 135,214 rows.

# SELECT * FROM employees WHERE hire_date BETWEEN 1990-01-01 AND 1999-12-31;

# Find all employees born on Christmas — 842 rows.

# SELECT * FROM employees WHERE birth_date = 12-25;

# Find all employees with a 'q' in their last name — 1,873 rows.

# SELECT * FROM employees WHERE last_name LIKE '%q%' LIMIT last_name '%qu%';