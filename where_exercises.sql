USE employees;
SELECT 'First names' AS 'Problem 2';
SELECT * FROM employees
WHERE first_name
IN ('Irena', 'Vidya', 'Maya');

SELECT 'Last name starts with E' AS 'Problem 3';
SELECT * FROM employees
WHERE last_name
LIKE ('E%');

SELECT 'Hired in 90s' AS 'Problem 4';
SELECT * FROM employees
WHERE hire_date
LIKE ('199%');

SELECT 'Born on Christmas day' AS 'Problem 5';
SELECT * FROM employees
WHERE birth_date
LIKE ('%12-25');

SELECT 'Last name with a q in it' AS 'Problem 6';
SELECT * FROM employees
WHERE last_name
LIKE ('%q%');