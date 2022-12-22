-- Example: Show the post with the name of the author and the name of the category.

/*
SELECT enters.title, users.name, categories.name_category 
FROM enters, users, categories;
This code can be reduced as follows: 
*/
SELECT e.id_enter, e.title, u.name AS 'Author', c.name_category AS 'Category'
FROM enters e, users u, categories c
WHERE e.user_id = u.id_user AND e.category_id=c.id_category
ORDER BY e.id_enter ASC;

-- Show the name of the categories and then how many entries they have.
SELECT c.name_category AS 'Category', COUNT(e.category_id) AS 'Enters'
FROM enters e, users u, categories c
WHERE e.category_id = c.id_category
GROUP BY e.category_id;

-- Show the emails and then how many entries they have.
SELECT u.email, COUNT(title) FROM users u, enters e
WHERE e.user_id=u.id_user GROUP BY e.user_id;

