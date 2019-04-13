USE adlister_db;
TRUNCATE users;
INSERT INTO users (name, email, password)
VALUES ('Dwight', 'dwight@codeup.com', 'pass'),
       ('Arash', 'arash@codeup.com', 'pass'),
       ('Mindy', 'mindy@codeup.com', 'macaroni');

TRUNCATE ads;
# DELETE * FROM ads
# WHERE id > 0;
INSERT INTO ads (name, descr, price, user_id)
VALUES ('Bike For Sale', '10-speed bike in good condition', 20.00, 1),
       ('F-150 Truck For Sale', 'Vehicle in decent shape. Good A/C.', 6000.00, 2),
       ('House For Sale', '5 bed/3 bath', 800000.00, 3),
       ('MARRY MY SON!!!', 'Arranged marriage desired', NULL, 3),
       ('Toys for Sick Children', 'Please donate toys to children with cancer.', NULL, 2),
       ('Lawn Needs Mowing', 'Need someone to mow my lawn.', 40.00, 1);

TRUNCATE categories;
INSERT INTO categories (name)
VALUES ('Personal'),
       ('Housing'),
       ('For Sale'),
       ('Vehicles'),
       ('Charity');

INSERT INTO cat_ad(ad_id, cat_id)
VALUES (1, 3), (2, 3), (2, 4), (3, 2), (3, 3), (4, 1), (5, 5), (6, 1);