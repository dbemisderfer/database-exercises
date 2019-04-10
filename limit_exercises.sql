USE employees;
SELECT '10 distinct last names' AS 'Problem 2';
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT 'First 5 employees born and hired' AS 'Problem 3 & 4';
SELECT * FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5
OFFSET 45;
-- LIMIT 45, 5;    -- Alternate to using limit & offset

-- LIMIT and OFFSET can be used to create multiple pages of data. What is the
-- relationship between OFFSET (number of results to skip), LIMIT (number of results
-- per page), and the page number?  LIMIT * (Page Num - 1) = OFFSET