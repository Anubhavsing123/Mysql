WITH ranked AS (
  SELECT *,
  ROW_NUMBER() OVER(PARTITION BY branch
  ORDER BY marks) AS rn,
  COUNT(*) OVER(PARTITION BY branch) AS Total_count
  FROM marks
)
SELECT branch, AVG(marks) AS percentile_50
 
FROM ranked
WHERE rn IN (
    FLOOR((total_count + 1) * 0.5),
    CEIL((total_count + 1) * 0.5)
)
  GROUP BY branch;



--cte
SE Students;

WITH ranked AS (
    SELECT *,
        ROW_NUMBER() OVER (
            PARTITION BY branch ORDER BY marks
        ) AS rn,
        COUNT(*) OVER (
            PARTITION BY branch
        ) AS total_count
    FROM marks
),

quartiles AS (
    SELECT
        branch,

        AVG(CASE
            WHEN rn IN (
                FLOOR((total_count + 1) * 0.25),
                CEIL((total_count + 1) * 0.25)
            ) THEN marks
        END) AS Q1,

        AVG(CASE
            WHEN rn IN (
                FLOOR((total_count + 1) * 0.50),
                CEIL((total_count + 1) * 0.50)
            ) THEN marks
        END) AS Q2,

        AVG(CASE
            WHEN rn IN (
                FLOOR((total_count + 1) * 0.75),
                CEIL((total_count + 1) * 0.75)
            ) THEN marks
        END) AS Q3

    FROM ranked
    GROUP BY branch
),

boundaries AS (
    SELECT *,
        Q3 - Q1 AS IQR,
        Q1 - 1.5 * (Q3 - Q1) AS lower_bound,
        Q3 + 1.5 * (Q3 - Q1) AS upper_bound
    FROM quartiles
)

SELECT
    m.*,
    b.Q1,
    b.Q2,
    b.Q3,
    b.IQR,
    b.lower_bound,
    b.upper_bound
FROM marks m
JOIN boundaries b
    ON m.branch = b.branch
WHERE m.marks > b.lower_bound
  AND m.marks < b.upper_bound;










  /* Enter "USE {database};" to start exploring your data. */
use Mobile;
SELECT brand,model,price,
CASE 
WHEN bucket=1 THEN 'budget'
WHEN bucket=2 THEN 'midd-range'
WHEN bucket=3 THEN 'premium phone'
END AS 'phone_type'
FROM (SELECT brand,model,price,
  NTILE(3) OVER(PARTITION BY brand ORDER BY price) AS 'bucket' FROM
  mobiles) t

