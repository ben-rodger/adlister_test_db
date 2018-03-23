USE dating_db;

# Select all username
SELECT username
FROM users;

# Select orientation of bahodge
SELECT u.username,a.sex, a.sex_orientation
FROM users u
JOIN user_attributes a
    ON u.id = a.user_id
WHERE u.username LIKE 'ba%';

# SELECT MATCHED USERS
SELECT u.username AS 'User 1', mu.username AS 'User 2'
FROM users u
JOIN user_matches um ON u.id = um.user2_id
JOIN users mu ON um.user1_id = mu.id;

# COUNT NUMBER OF MATCHER PER USER
SELECT u.username, COUNT(*) AS 'Total Matches'
FROM users u
  LEFT JOIN user_matches um ON u.id = um.user2_id
GROUP BY u.username;