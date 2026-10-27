use dataset;

--HAVING
SELECT star,SUM(gross- bugdet) AS PROFIT FROM movie GROUP BY star HAVING SUM(gross-bugdet)>3000;
