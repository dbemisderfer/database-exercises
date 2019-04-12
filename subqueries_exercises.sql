USE employees;
SELECT * FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
  );

-- SELECT * FROM employees


SELECT first_name, last_name
FROM employees AS e
JOIN dept_manager dm on e.emp_no = dm.emp_no
WHERE gender = 'F'
AND e.emp_no IN (
  SELECT e.emp_no
  FROM dept_manager
  )
AND dm.to_date LIKE '9999-01-01';

