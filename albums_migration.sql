-- DROP DATABASE IF EXISTS codeup_test_db;
CREATE DATABASE IF NOT EXISTS codeup_test_db;
USE codeup_test_db;

-- DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  release_date INT,
  sales DECIMAL(9,5),
  genre VARCHAR(64),
  PRIMARY KEY (id)
);