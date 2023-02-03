-- 1. Write an SQL statement to select all articles with their author’s email.
SELECT article.*, user.email FROM article JOIN user ON article.authorId=user.id;

-- 2. Write another SQL statement to select articles from 7th to 12th sorted by id.
SELECT * FROM article ORDER BY id LIMIT 6,6;
