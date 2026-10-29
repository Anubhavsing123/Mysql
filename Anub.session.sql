SELECT name,genre,(gross-budget) AS Profit  FROM movies m1 WHERE (gross-budget)= (SELECT MAX(gross-budget) FROM movies m2 
  WHERE m2.genre=m1.genre);