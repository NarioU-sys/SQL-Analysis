WITH CategoryCounts AS (
    SELECT Defense_Mechanism_Used, COUNT(*) AS category_count
    FROM cyber
    GROUP BY Defense_Mechanism_Used
)

SELECT Defense_Mechanism_Used, category_count
FROM CategoryCounts
WHERE category_count = (
    SELECT MIN(category_count) AS MO
    FROM CategoryCounts
);


ESTIMATING THE INCIDENT RESOULTION TIME(IRT) 

SELECT AVG(IRT) AS estimated_IRT
FROM cyber
WHERE IRT IS NOT NULL;

TOTAL IRT USED BY TARGETED INDUSTRY TO RECOVER
SELECT Target_Industry, count(IRT) as total_time
FROM cyber
GROUP BY Target_Industry
ORDER BY total_time DESC;



WITH CategoryCounts AS (
    SELECT Defense_Mechanism_Used, COUNT(*) AS category_count
    FROM cyber
    GROUP BY Defense_Mechanism_Used
 )

 SELECT Defense_Mechanism_Used, category_count
 FROM CategoryCounts
WHERE category_count =
(     SELECT MAX(category_count) AS MO
     FROM CategoryCounts
);


