SELECT CONCAT(
           'Teaching people to code for ',
           UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
           ' seconds'
         );

SELECT CONCAT(
  'Number of seconds I''ve been alive: ',
  UNIX_TIMESTAMP() - UNIX_TIMESTAMP('1970-08-29')
  -- ' ',
  -- UNIX_TIMESTAMP()
  );

USE employees;
SELECT CONCAT(first_name, " ", last_name) AS first_name FROM employees;

SELECT DATEDIFF(CURDATE(), '2019-03-10');