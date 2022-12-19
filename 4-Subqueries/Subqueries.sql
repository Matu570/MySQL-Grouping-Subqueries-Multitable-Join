SELECT * FROM users;

-- Excersise 1:
-- Get to all users with and with out enters.

INSERT INTO users VALUES(NULL, 'Name', 'Example', 'example@email', '4321', CURDATE());
SELECT * FROM users WHERE id_user IN (SELECT user_id FROM enters);

SELECT * FROM users WHERE id_user NOT IN (SELECT user_id FROM enters);

-- Excersise 2:
-- Get to all users with enters about GTA.

SELECT * FROM enters;
INSERT INTO enters VALUES(NULL, 3, 1, "GTA Guide", "GTA", CURDATE());
SELECT name, last_name FROM users WHERE id_user IN (SELECT user_id FROM enters WHERE title LIKE "%GTA%");

-- Excersise 3:
SELECT name FROM users WHERE id_user IN (SELECT id_user FROM enters WHERE category_id=1);

SELECT category_id, title FROM enters WHERE category_id IN (SELECT id_category FROM categories WHERE name_category = 'action');
SELECT category_id, title FROM enters WHERE category_id IN (SELECT id_category FROM categories WHERE name_category = 'sport');

-- Excersise 4:
-- Display the categories with more of three enters:
SELECT name_category FROM categories WHERE id_category IN (SELECT category_id FROM enters GROUP BY category_id HAVING COUNT(category_id)>=3);

-- Excersise 5:
-- Display all the enters
