USE dataset;
--FUNCTION
--ABS
SELECT title, ABS((gross-bugdet)) AS Profit FROM movie;

--ROUND
SELECT title, ROUND((duration/60),0) AS TIME FROM movie


--CEIL
 SELECT title ,CEIL((duration/60)) AS TIMEDU FROM movie;
 --FLOOR

 SELECT title ,FLOOR((duration/60)) AS TIMEDU FROM movie;

 --UPPER

 SELECT UPPER(title) ,FLOOR((duration/60)) AS TIMEDU FROM movie;

 --LOWER
 SELECT LOWER(title) ,FLOOR((duration/60)) AS TIMEDU FROM movie;
 --length

 SELECT star,rating,LENGTH(CONCAT(director,star)) as Crew FROM movie;

 --substring(string,startfrom1,length)
 SELECT SUBSTRING(star,1,4),rating,LENGTH(CONCAT(director,star)) as Crew FROM movie;

 --MAX,MIN
 SELECT MAX(bugdet),MIN(gross) FROM movie;

 --SUM
 SELECT SUM(release_year) FROM movie;
 --Avg
 SELECT AVG(gross) as AV  FROM movie WHERE country="India";

 --COUNT
 SELECT COUNT(title) as TI  FROM movie WHERE country="India";

--COUNT DIST
SELECT COUNT(DISTINCT(star)) as STAR  FROM movie ;