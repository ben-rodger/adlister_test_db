USE adlister_test_db;

# For a given ad, what is the email address of the user that created it?
SELECT email, description
FROM users u
  JOIN ads a
    ON u.id = a.users_id
WHERE a.id = 4;


# For a given ad, what category, or categories, does it belong to?
SELECT title, c.cat_name
FROM ads a
  JOIN ads_categories a2 ON a.id = a2.ad_id
  JOIN categories c ON a2.cat_id = c.id
WHERE a.id = 5;

# For a given category, show all the ads that are in that category.
SELECT c.cat_name , a.title, a.description, a.price
FROM ads a
  JOIN ads_categories add_cat
    ON a.id = add_cat.ad_id
  JOIN categories c
    ON add_cat.cat_id = c.id
WHERE c.cat_name = 'personal';

# For a given user, show all the ads they have posted.
SELECT email, title
FROM users u
  JOIN ads a ON u.id = a.users_id
WHERE u.id = 5;
