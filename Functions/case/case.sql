USE dataset;
SELECT title,(gross-bugdet) AS PROFIT ,
CASE WHEN 
  (gross-bugdet)>3000  THEN "HIT"
WHEN(gross-bugdet)>2000  AND (gross-bugdet)<3000 THEN "AVG"
ELSE
"Flop"

END  AS bscd

FROM movie