USE employees;
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager AS dm
  ON dm.dept_no = d.dept_no
JOIN employees AS e
  ON dm.emp_no = e.emp_no
WHERE dm.to_date LIKE '9999-01-01'
ORDER BY `Department Name`;

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM departments AS d
       JOIN dept_manager AS dm
            ON dm.dept_no = d.dept_no
       JOIN employees AS e
            ON dm.emp_no = e.emp_no
WHERE dm.to_date LIKE '9999-01-01'
AND e.gender LIKE 'F'
ORDER BY `Department Name`;

SELECT t.title AS Title, COUNT(t.title)
FROM titles AS t
       JOIN dept_emp AS de
            ON de.emp_no = t.emp_no
       JOIN departments AS d
            ON d.dept_no = de.dept_no
WHERE t.to_date LIKE '9999-01-01'
AND d.dept_name = 'Customer Service'
GROUP BY Title
ORDER BY Title;

-- SELECT * FROM employees.titles
-- WHERE employees.titles.title LIKE '%Staff%';

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary AS Salary
FROM departments AS d
       JOIN dept_manager AS dm
            ON dm.dept_no = d.dept_no
       JOIN employees AS e
            ON dm.emp_no = e.emp_no
      JOIN salaries AS s
            ON s.emp_no = e.emp_no
WHERE dm.to_date LIKE '9999-01-01'
AND s.to_date LIKE '9999-01-01'
ORDER BY `Department Name`;

