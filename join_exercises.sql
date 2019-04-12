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