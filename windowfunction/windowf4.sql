SELECT *,
LAG(marks) OVER(PARTITION BY branch ORDER BY student_id),
LEAD(marks) OVER( PARTITION BY branch ORDER BY student_id)
  FROM marks



  --cummulative sum 

  SE IPL_Analytics;
SELECT * FROM (SELECT CONCAT("Match-",CAST(ROW_NUMBER() OVER(ORDER BY id ) AS CHAR)) AS 'Match_no',
  SUM(runs) AS 'batsman_run',
  SUM(SUM(runs)) OVER(ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
  FROM data 
WHERE player_name='Virat Kohli'
GROUP BY id) t
WHERE Match_no="Match-15" or Match_no="Match-20" 


--acummulative avg
--running avg

USE IPL_Analytics;
SELECT * FROM (SELECT CONCAT("Match-",CAST(ROW_NUMBER() OVER(ORDER BY id ) AS CHAR)) AS 'Match_no',
  SUM(runs) AS 'batsman_run',
  SUM(SUM(runs)) OVER(ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
  AVG(SUM(runs)) OVER(ROWS BETWEEN 9 PRECEDING AND CURRENT ROW) AS "Rolling_avg_run",
  AVG(SUM(runs)) OVER (ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'AVG_RUN'
  FROM data 
WHERE player_name='Virat Kohli'
GROUP BY id) t




SELECT food_name,(total_price/SUM(total_price) OVER())*100 AS "percentage_of_total" FROM (SELECT t3.food_id, SUM(t1.total_amount)AS "total_price" FROM orders t1 
JOIN order_details t2 
ON t1.order_id=t2.order_id
JOIN menu t3 
  ON t2.menu_id=t3.menu_id
WHERE t1.restaurant_id=2
GROUP BY t3.food_id) t 
JOIN food t4 
ON t.food_id=t4.food_id
ORDER BY (total_price/SUM(total_price) OVER())*100  DESC;







use youtube_analytics;
SELECT
    year,
    month,
    total_views,
    previous_month_views,

    ROUND(
        ((total_views - previous_month_views)
        / NULLIF(previous_month_views, 0)) * 100,
        2
    ) AS percentage_change

FROM (
    SELECT
        year,
        month,
        month_number,
        total_views,

        LAG(total_views) OVER (
            ORDER BY year, month_number
        ) AS previous_month_views

    FROM (
        SELECT
            YEAR(stat_date) AS year,
            MONTHNAME(stat_date) AS month,
            MONTH(stat_date) AS month_number,
            SUM(views) AS total_views
        FROM daily_video_stats
        GROUP BY
            YEAR(stat_date),
            MONTH(stat_date),
            MONTHNAME(stat_date)
    ) AS monthly_data
) AS result

ORDER BY year, month_number;