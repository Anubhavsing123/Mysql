
SELECT * FROM movies WHERE star  IN (SELECT DISTINCT(star) FROM movies WHERE star LIKE 'A%' )