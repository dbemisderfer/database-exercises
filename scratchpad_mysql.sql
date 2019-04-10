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