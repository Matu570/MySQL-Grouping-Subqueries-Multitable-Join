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

