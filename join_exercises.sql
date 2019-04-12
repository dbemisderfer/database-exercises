USE employees;
-- PROBLEM 2
SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
       JOIN dept_manager AS dm
            ON dm.dept_no = d.dept_no
       JOIN employees AS e
            ON dm.emp_no = e.emp_no
WHERE dm.to_date > CURDATE()
      -- WHERE dm.to_date LIKE '9999-01-01'
ORDER BY `Department Name`;

-- PROBLEM 3
SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM departments AS d
       JOIN dept_manager AS dm
            ON dm.dept_no = d.dept_no
       JOIN employees AS e
            ON dm.emp_no = e.emp_no
WHERE dm.to_date > CURDATE()
  AND e.gender LIKE 'F'
ORDER BY `Department Name`;

-- PROBLEM 4
SELECT t.title AS Title, COUNT(t.title)
FROM titles AS t
       JOIN dept_emp AS de
            ON de.emp_no = t.emp_no
       JOIN departments AS d
            ON d.dept_no = de.dept_no
WHERE t.to_date > CURDATE()
  AND de.to_date > CURDATE()
  AND d.dept_no = 'd009'
GROUP BY Title
ORDER BY Title;

-- SELECT * FROM employees.titles
-- WHERE employees.titles.title LIKE '%Staff%';

-- PROBLEM 5
SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary                               AS Salary
FROM departments AS d
       JOIN dept_manager AS dm
            ON dm.dept_no = d.dept_no
       JOIN employees AS e
            ON dm.emp_no = e.emp_no
       JOIN salaries AS s
            ON s.emp_no = e.emp_no
WHERE dm.to_date > CURDATE()
  AND s.to_date > CURDATE()
ORDER BY `Department Name`;

-- BONUS EXERCISE
SELECT CONCAT(e.first_name, ' ', e.last_name)               AS 'Employee Name',
       d.dept_name                                          AS 'Department Name',
       CONCAT(managers.first_name, ' ', managers.last_name) AS 'Manager Name'
FROM employees AS e
       JOIN dept_emp AS de ON e.emp_no = de.emp_no
       JOIN departments AS d ON de.dept_no = d.dept_no
       JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
       JOIN employees AS managers ON managers.emp_no = dm.emp_no
WHERE dm.to_date > CURDATE()
  AND de.to_date > CURDATE()
  #    AND e.emp_no IN (
  #    SELECT e.emp_no
  #    FROM dept_manager -- use this, but in a JOIN format
  #  )
ORDER BY `Department Name`;

SELECT e.first_name, e.last_name AS 'Manager Name'
FROM employees AS e
       JOIN dept_manager dm ON e.emp_no = dm.emp_no
WHERE e.emp_no IN (
  SELECT e.emp_no
  FROM dept_manager
);




