USE employees;
SELECT 'Unique titles from titles table' AS 'Problem 2';
SELECT DISTINCT title FROM titles;

SELECT 'Last name starts with E' AS 'Problem 3';
SELECT last_name FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name;

SELECT 'Last name starts with E' AS 'Problem 4';
SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY first_name, last_name;
-- NOTE: Any column(s) that appear in the SELECT should also be in the GROUP BY clause.

SELECT 'Last name with q but not with qu' AS 'Problem 5';
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT 'Last name with q but not with qu' AS 'Problem 6';
SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*) DESC;

SELECT 'First name Irena, Vidya, or Maya' as 'Problem 7';
SELECT COUNT(*), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER BY COUNT(*) DESC;