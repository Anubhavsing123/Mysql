use dataset;
--orderby ascending with limit
SELECT title,(gross-bugdet) as profit FROM movie ORDER BY profit ASC  LIMIT 5 ;

--orderby with descindg with limit
 SELECT title,(gross-bugdet) as profit FROM movie ORDER BY profit DESC  LIMIT 5 ;