


SELECT * FROM ( SELECT
    MONTHNAME(order_date) AS month_name,
    order_id,
    SUM(total_amount) AS total_price,
  RANK() OVER(PARTITION BY MONTHNAME(order_date) ORDER BY SUM(total_amount) DESC) AS 'month_rank'
FROM orders
GROUP BY
    MONTH(order_date),
    MONTHNAME(order_date),
    order_id
ORDER BY
    MONTH(order_date)) t
WHERE t.month_rank<3
ORDER BY month_name DESC,month_rank ASC
