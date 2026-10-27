use datase;
--orderby
SELECT star ,Count(*) As no FROM movies GROUP BY star

--oderby and groupby 
SELECT star ,Count(*) As no FROM movie GROUP BY star ORDER BY no DESC;

SELECT genre , SUM(gross-bugdet) As no FROM movie GROUP BY genre ORDER BY no DESC;


SELECT director, star, SUM(gross- bugdet) AS PROFIT FROM movie GROUP BY director,star ORDER BY PROFIT DESC LIMIT 5;


SELECT  star,genre, SUM(gross- bugdet) AS PROFIT FROM movie GROUP BY star,genre ORDER BY PROFIT DESC LIMIT 5;

