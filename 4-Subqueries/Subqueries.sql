SELECT * FROM users;
INSERT INTO users VALUES(NULL, 'Name', 'Example', 'example@email', '4321', CURDATE());
SELECT * FROM users WHERE id_user IN (SELECT user_id FROM enters);

SELECT * FROM users WHERE id_user NOT IN (SELECT user_id FROM enters);
