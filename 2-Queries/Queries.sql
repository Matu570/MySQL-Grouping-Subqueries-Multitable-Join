/*
Grouping queries
SELECT title FROM enters;
SELECT COUNT(title) AS 'ENTERS NUMBER', category_id FROM enters GROUP BY category_id;

Grouping queries with conditions:
SELECT COUNT(title) AS 'ENTERS NUMBER', category_id FROM enters GROUP BY category_id HAVING COUNT(title)>=4;

