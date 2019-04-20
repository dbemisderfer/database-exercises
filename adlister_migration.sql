CREATE DATABASE IF NOT EXISTS adlister_db;
USE adlister_db;

CREATE TABLE users
(
  id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username     VARCHAR(100) NOT NULL,
  email    VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY unique_username (username),
  UNIQUE KEY unique_email (email)
);

CREATE TABLE ads
(
  id      INT UNSIGNED   NOT NULL AUTO_INCREMENT,
  title    VARCHAR(100)   NOT NULL,
  description   VARCHAR(100)   NOT NULL,
  user_id INT UNSIGNED   NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE categories
(
  id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE cat_ad
(
  cat_id INT UNSIGNED NOT NULL,
  ad_id  INT UNSIGNED NOT NULL,
  FOREIGN KEY (cat_id) REFERENCES categories (id),
  FOREIGN KEY (ad_id) REFERENCES ads (id)
);