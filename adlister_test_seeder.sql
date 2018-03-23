USE adlister_test_db;


# Seed some users
INSERT INTO users(email, password) VALUES
  ('benji@gmail.com', 'abc123'),
  ('albert@gmail.com', 'ally'),
  ('bobo@gmail.com', 'bobo12'),
  ('stanley@stan.com', 'pppeld'),
  ('goober@goobermail.com', 'abc123'),
  ('derp@aol.com', 'abc123'),
  ('derpington@aol.com', 'albertington'),
  ('aoili@aol.com', 'kakkd125'),
  ('pepper@gmail.com', 'salty'),
  ('monstare999@gmail.com', 'adaleid'),
  ('barf@barfmail.com', 'barfboi'),
  ('zipper@gmail.com', 'zippy zipp'),
  ('preston@gmail.com', 'keppler'),
  ('headphonemansire@hpms.com', 'soundy'),
  ('jasper@aol.com', 'jazzyjasp'),
  ('edgar@gmail.com', 'edgarino'),
  ('felix@yahoo.com', 'feelsgoodman'),
  ('evie@aol.com', 'evieroxsox'),
  ('bingobango@gmail.com', 'bingo'),
  ('bongo@yahoo.com', 'bongo');


SELECT * FROM users;

INSERT INTO categories (cat_name) VALUES
  ('Home'),
  ('Auto'),
  ('Personal'),
  ('Services'),
  ('Marketing'),
  ('Travel'),
  ('Jobs');

SELECT * FROM categories;

# ADS
INSERT INTO ads (users_id, title, description, price) VALUES
  (1, 'Cool Cookies', 'Some home baked cookies that taste good: Price by dozen', 30.00),
  (5, 'Laptop', 'Bad macbook 4 sale', 2000.00),
  (2, 'NEW CAR', 'Car from 2000 that is automatic transmission, see pic for details', 17000.23),
  (15, 'Muffler', 'Muffler go vroom vroom for cheap', 13.00),
  (7, 'Handy Man Available!!!!', 'Experienced handy man who is willing to work for as little as $5/hr', 15.00),
  (5, 'Travel to the bahamas!', 'Join us on our expedition into one of the worlds best kept secrets', 1500.00),
  (3, 'Mexico! CANCUN!', 'WE ARE YELLING AT YOU TO GO TO CANCUN!!!! VERY FUN! ALL EXPENSE PAID TRIP BY YOU!!!', 850.00),
  (5, 'Looking for Entry Level Lawyer', 'Looking for a brand new lawyer with 25 years experience in the legal sector $8/hr', NULL),
  (18, 'Make your business shine!', 'Here at Shiny Marketing, we will make your business look way better than it really is.', 300.29),
  (17, 'Looking 4 Furry Friends', 'Am human looking to be involved with furry friends, will pay for companion (inquire below)', NULL),
  (3, 'Banana Friends', 'We make banana posters that are all salmon colored', 147.78),
  (20, 'ASUS Laptop', 'Not actually an asus laptop, but that\'s cool right? It has an asus sticker', 700.99),
  (9, 'Welder Needed', 'Need experienced titanium welder fast. BOOKU Bucks to be made', NULL);


SELECT * FROM ads;

# ('Home'),
# ('Auto'),
# ('Personal'),
# ('Services'),
# ('Marketing'),
# ('Travel'),
# ('Jobs');

INSERT INTO ads_categories (ad_id, cat_id) VALUES
  (1, 3),
  (1, 4),
  (2, 3),
  (3, 2),
  (3, 3),
  (4, 2),
  (4, 3),
  (5, 4),
  (5, 7),
  (6, 6),
  (6, 3),
  (6, 4),
  (6, 5),
  (7, 6),
  (7, 4),
  (8, 7),
  (8, 4),
  (9, 5),
  (10, 3),
  (11, 5),
  (12, 3),
  (13, 7);

SELECT *
FROM ads_categories;

INSERT INTO media (ad_id, media) VALUES
  (1, '/cookies.jpeg'),
  (2, '/laptoppicture.jpeg'),
  (3, '/SICK_CAR_BRO.jpeg'),
  (3, '/OTHERANGLEOFCAR.jpeg'),
  (5, '/pic_of_donathan.png'),
  (6, '/stock_photo_bahama_1.png'),
  (6, '/stock_photo_bahama_2.png'),
  (6, '/stock_photo_bahama_3.png'),
  (6, '/stock_photo_bahama_4.png'),
  (7, '/cancun_before_nuclear_explosion.png'),
  (8, '/gavel.jpeg'),
  (9, '/sun_picture.jpeg'),
  (10, '/cat.jpeg'),
  (10, '/man_in_cat_costume.jpeg'),
  (10, '/man_in_cat_costume_holding_cat.jpeg'),
  (11, '/banana_logo_pic.png'),
  (12, '/laptop_asus.png');


SELECT * FROM media;