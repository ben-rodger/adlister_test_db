use dating_db;


DROP TABLE IF EXISTS users_interests;
DROP TABLE IF EXISTS interests;
DROP TABLE IF EXISTS media;
DROP TABLE IF EXISTS user_profiles;
DROP TABLE IF EXISTS user_matches;
DROP TABLE IF EXISTS user_attributes;
DROP TABLE IF EXISTS users;

-- DESCRIBE users;

# CREATE USERS
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(25) NOT NULL,
  email	VARCHAR(100) NOT NULL,
  user_password	VARCHAR(30) NOT NULL,
  phone	VARCHAR(11),
  loc_state	CHAR(2) NOT NULL,
  PRIMARY KEY (id)
);

# CREATE USER ATTRIBUTES
-- DESCRIBE user_attributes;
CREATE TABLE user_attributes (
  user_id	INT UNSIGNED NOT NULL,
  height VARCHAR(4) NOT NULL,
  weight	CHAR(4) NOT NULL,
  hair_color	VARCHAR(30) NOT NULL,
  eye_color	VARCHAR(30) NOT NULL,
  sex	VARCHAR(10) NOT NULL,
  sex_orientation	VARCHAR(15) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE user_matches (
  user1_id 	INT UNSIGNED NOT NULL,
  user2_id  INT UNSIGNED NOT NULL,
  FOREIGN KEY (user1_id) REFERENCES users(id),
  FOREIGN KEY (user2_id) REFERENCES users(id)
);

CREATE TABLE user_profiles (
  user_id	INT UNSIGNED NOT NULL,
  about	VARCHAR(150),
  looking_for	VARCHAR(150),
  loc_city	VARCHAR(30),
  education	VARCHAR(150),
  work	VARCHAR(150),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE media (
  id	INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id	INT UNSIGNED NOT NULL,
  media	TEXT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE interests (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  interest_name	VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users_interests(
  interest_id	INT UNSIGNED NOT NULL,
  user_id	INT UNSIGNED NOT NULL,
  FOREIGN KEY (interest_id) REFERENCES interests(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);
