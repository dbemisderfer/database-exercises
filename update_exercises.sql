SELECT 'All albums in table' AS 'Caption 1';
SELECT name FROM albums;
UPDATE albums SET sales * 10;
SELECT name FROM albums;
SELECT 'All albums released before 1980' AS 'Caption 2';
SELECT name FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date - 100 WHERE release_date < 1980;
SELECT name FROM albums WHERE release_date < 1980;
SELECT 'All albums by Michael Jackson' AS 'Caption 3';
SELECT name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET name = "Peter Jackson" WHERE name = "Michael Jackson";
SELECT name FROM albums WHERE artist = 'Michael Jackson';