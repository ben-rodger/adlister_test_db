USE dating_db;

# Add users
INSERT INTO users(username, email, user_password, phone, loc_state) VALUES
  ('bahodge', 'benji@gmail.com', 'razzles', '1234567890', 'TX'),
  ('karldingus', 'dingus@gmail.com', 'razzles', '1234567890', 'TX'),
  ('kerbable', 'kerbable@gmail.com', 'razzles', '1234567890', 'TX'),
  ('florence', 'florence@gmail.com', 'razzles', '1234567890', 'TX'),
  ('lorem', 'lorem@gmail.com', 'razzles', '1234567890', 'TX'),
  ('ipsec', 'ipse@gmail.com', 'razzles', '1234567890', 'TX'),
  ('geoff', 'geoff@gmail.com', 'razzles', '1234567890', 'TX'),
  ('sterven', 'sterven@gmail.com', 'razzles', '1234567890', 'TX'),
  ('roy', 'roye@gmail.com', 'razzles', '1234567890', 'TX'),
  ('martin', 'martin@gmail.com', 'razzles', '1234567890', 'TX');

# Add Attributes
INSERT INTO user_attributes (user_id, height, weight, hair_color, eye_color, sex, sex_orientation) VALUES
  (1, '5\'10', '167', 'brown','blue', 'Female', 'Gay' ),
  (2, '5\'10', '167', 'brown','grey', 'Female', 'Bi' ),
  (3, '5\'10', '167', 'brown','brown', 'Female', 'Gay' ),
  (4, '5\'10', '167', 'brown','blue', 'Trans', 'Straight' ),
  (5, '5\'10', '167', 'brown','blue', 'Female', 'Straight' ),
  (6, '5\'10', '167', 'brown','green', 'Male', 'Gay' ),
  (7, '5\'10', '167', 'brown','blue', 'Male', 'Straight' ),
  (8, '5\'10', '167', 'brown','hazel', 'Male', 'Straight' ),
  (9, '5\'10', '167', 'brown','brown', 'Male', 'Bi' ),
  (10, '5\'10', '167', 'brown','blue', 'Male', 'Straight' );


# Add PROFILES
INSERT INTO user_profiles(user_id, about, looking_for, loc_city, education, work) VALUES
  (1, 'I like birds and bird people', 'strong dudes', 'San Antonio', 'College', 'Developer'),
  (2, 'I look at the sun all day', 'hot humans', 'New York', 'HS', 'Painter'),
  (3, 'I literally am a ninja', 'I like ninjas, but you\'re not allowed to be one too', 'Dallas', 'College', 'Ninja'),
  (4, 'Down with the corporation! They don\'t care about us!', 'Need a fellow liberal to keep me from becoming a corporate shill', 'Austin', 'College', NULL),
  (5, 'I love pandas and panda milk makes you strong', 'Anyone', 'San Antonio', 'College', 'Panda Milker'),
  (6, 'I don\'t have any interests', 'A father to my dead rats', 'San Antonio', 'B.A.', 'Cookie Sampler'),
  (7, 'If you don\'t like the hood, the hood don\'t like you', 'Just a dude lookin for some love', 'Mojave Desert', 'HS', 'Life Vest Tester'),
  (8, 'I am a vampire, and I SPARKLE', 'ONLY SPARKLE VAMPIRES!', 'Transylvania', 'PHD', 'Cult Leader'),
  (9, 'Don\'t talk to me', 'Nothing and No OnE!!!', NULL, NULL, NULL),
  (10, 'I love being depressed', 'Depressed people only!', 'Austin', 'PHD', 'Doctor of Depression');

# ADD MEDIA


# ADD Matches
INSERT INTO user_matches(user1_id, user2_id) VALUES
  (1, 2),
  (1, 5),
  (2, 8),
  (2, 3),
  (2, 9),
  (3, 8),
  (3, 4),
  (4, 6),
  (4, 7),
  (4, 8),
  (4, 9),
  (4, 10),
  (5, 6),
  (5, 7),
  (7, 1),
  (7, 3),
  (8, 2),
  (8, 1),
  (8, 10),
  (9, 1),
  (10, 1),
  (10, 9);

# ADD interests
INSERT INTO interests(interest_name) VALUES
  ('Outdoors'),
  ('Sports'),
  ('Hiking'),
  ('Eating'),
  ('Cars'),
  ('Video Games'),
  ('Reading'),
  ('Yoga'),
  ('Fencing'),
  ('Horses'),
  ('Anime'),
  ('Animals'),
  ('Flying'),
  ('Crushing'),
  ('Fantasy');

# Add users-interests
INSERT INTO users_interests(interest_id, user_id) VALUES
  (1, 1),
  (5, 1),
  (6, 1),
  (3, 1),
  (10, 1),
  (15, 1),
  (4, 2),
  (3, 2),
  (7, 2),
  (10, 2),
  (10, 3),
  (11, 4),
  (12, 4),
  (5, 5),
  (6, 5),
  (10, 6),
  (11, 6),
  (8, 7),
  (7, 7),
  (12, 8),
  (11, 8),
  (15, 9),
  (14, 9),
  (1, 10),
  (2, 10),
  (4, 10),
  (5, 10);