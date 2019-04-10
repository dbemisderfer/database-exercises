USE employees;
SELECT 'First names' AS 'Problem 2';
SELECT * FROM employees
WHERE (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
AND gender = 'M';
-- WHERE first_name
-- IN ('Irena', 'Vidya', 'Maya');

SELECT 'Last name starts with E' AS 'Problem 3';
SELECT * FROM employees
WHERE last_name like 'E%'
OR last_name like '%e';
-- WHERE last_name
-- LIKE ('E%');

SELECT 'Last name starts with E' AS 'Problem 3';
SELECT * FROM employees
WHERE last_name like 'E%'
AND last_name like '%e';

SELECT 'Last name starts with E' AS 'Problem 3';
SELECT * FROM employees
WHERE last_name LIKE 'E%e';

SELECT 'Hired in 90s and born on Christmas day' AS 'Problems 4 & 5';
SELECT * FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25';

-- SELECT 'Hired in 90s' AS 'Problem 4';
-- SELECT * FROM employees
-- WHERE hire_date
-- LIKE '199%';
-- BETWEEN '1990-01-01' AND '1999-12-31'; -- Alternate solution

-- SELECT 'Born on Christmas day' AS 'Problem 5';
-- SELECT * FROM employees
-- WHERE birth_date
-- LIKE '%12-25';

SELECT 'Last name with a q in it' AS 'Problem 6';
SELECT * FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';
-- WHERE last_name
-- LIKE ('%q%');