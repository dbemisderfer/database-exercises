USE employees;

SELECT 'Last name starts with E' AS 'Problem 2';
-- SELECT * FROM employees
-- WHERE (last_name like 'E%')
-- OR (last_name like '%e')
-- ORDER BY emp_no DESC;
SELECT CONCAT(first_name, " ", last_name)
AS full_name FROM employees
WHERE (last_name like 'E%')
OR (last_name like '%e')
ORDER BY emp_no DESC;

SELECT 'Last name starts with E' AS 'Problem 2';
-- SELECT * FROM employees
SELECT CONCAT(first_name, " ", last_name)
AS full_name FROM employees
WHERE (last_name like 'E%')
AND (last_name like '%e')
ORDER BY emp_no DESC;

SELECT 'Last name starts with E' AS 'Problem 2';
-- SELECT * FROM employees
SELECT CONCAT(first_name, " ", last_name)
AS full_name FROM employees
WHERE last_name LIKE 'E%e'
ORDER BY emp_no DESC;

SELECT 'Hired in 90s and born on Christmas day' AS 'Problem 3';
-- SELECT * FROM employees
SELECT DATEDIFF(CURDATE(), hire_date)
AS total_days_at_company FROM employees
WHERE (hire_date LIKE '199%')
AND (birth_date LIKE '%12-25')
ORDER BY birth_date ASC, hire_date DESC;