USE employees;
SELECT * FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
  );

SELECT t.title
FROM employees AS e
JOIN titles t on e.emp_no = t.emp_no
WHERE first_name IN (
  SELECT first_name
    FROM employees
      WHERE e.first_name IN ('Aamod'))
GROUP BY t.title;



SELECT first_name, last_name
FROM employees AS e
JOIN dept_manager dm on e.emp_no = dm.emp_no
WHERE gender = 'F'
AND e.emp_no IN (
  SELECT e.emp_no
  FROM dept_manager
  )
AND dm.to_date LIKE '9999-01-01';

SELECT d.dept_name
FROM employees as e
JOIN dept_manager dm on e.emp_no = dm.emp_no
JOIN departments d on dm.dept_no = d.dept_no
WHERE gender = 'F'
AND e.emp_no IN (
  SELECT e.emp_no
  FROM dept_manager
  )
AND dm.to_date LIKE '9999-01-01'
ORDER BY d.dept_name;

