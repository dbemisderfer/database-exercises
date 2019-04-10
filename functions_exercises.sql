USE employees;
SELECT 'First names' AS 'Problem 2';
SELECT * FROM employees
WHERE ((first_name = 'Irena')
OR (first_name = 'Vidya')
OR (first_name = 'Maya'))
AND gender = 'M'
ORDER BY first_name;

SELECT 'First names' AS 'Problem 3';
SELECT * FROM employees
WHERE ((first_name = 'Irena')
OR (first_name = 'Vidya')
OR (first_name = 'Maya'))
AND gender = 'M'
ORDER BY first_name, last_name;

SELECT 'First names' AS 'Problem 4';
SELECT * FROM employees
WHERE ((first_name = 'Irena')
OR (first_name = 'Vidya')
OR (first_name = 'Maya'))
AND gender = 'M'
ORDER BY last_name, first_name;

SELECT 'Last name starts with E' AS 'Problem 5 & 6';
SELECT * FROM employees
WHERE (last_name like 'E%')
OR (last_name like '%e')
ORDER BY emp_no DESC;

SELECT 'Last name starts with E' AS 'Problem 5 & 6';
SELECT * FROM employees
WHERE (last_name like 'E%')
AND (last_name like '%e')
ORDER BY emp_no DESC;

SELECT 'Last name starts with E' AS 'Problem 5 & 6';
SELECT * FROM employees
WHERE last_name LIKE 'E%e'
ORDER BY emp_no DESC;

SELECT 'Hired in 90s and born on Christmas day' AS 'Problem 7';
SELECT * FROM employees
WHERE (hire_date LIKE '199%')
AND (birth_date LIKE '%12-25')
ORDER BY birth_date ASC, hire_date DESC;