-- ESTIMATE LOSS FROM INDUSTRY

SELECT MAX(Financial_loss) AS max_loss,
       MIN(Financial_loss) AS min_loss,
       AVG(Financial_loss) AS avg_loss  
FROM cyber;  

industrial with the least and highest loss
SELECT Target_Industry, SUM(Financial_loss) as total_loss
FROM cyber
GROUP BY Target_Industry
ORDER BY total_loss DESC;

-- THE YEARlY INCIDENTS
SELECT `Year`, COUNT(*) as freq
from cyber
GROUP BY `Year`
ORDER BY freq DESC;

-- ATTACK SOURCES ON TARGETS
-- BASE ON THRE YEAR OF THE INCIDENT

SELECT `Year`,Attack_Source, Target_Industry, COUNT(Attack_Source) as Tagets
FROM cyber
GROUP BY `Year`,Attack_Source, Target_Industry
ORDER BY Tagets DESC;

-- ATTACK TYPES USED ON TAGET
SELECT DISTINCT `Year`,Attacks_types, Target_Industry, COUNT(Attack_Source) as Tagets
FROM cyber
GROUP BY `Year`,Attacks_types, Target_Industry
ORDER BY Tagets DESC;


-- GETTING THE NUMBER OF AFFECTES USERS
SELECT Target_Industry, COUNT(Affected_Users) AS us
from cyber
GROUP BY Target_Industry
ORDER BY us DESC;


-- INDUSTRY WITH THE LEAST AND HIGEST AFFECTED_USERS
SELECT Target_Industry, MAX(Affected_Users) as INDUSTRY_MAX,
        MIN(Affected_Users) as INDUSTRY_MIN
FROM cyber
GROUP BY Target_Industry

DEFENCE TYPE USED BY EACH INDUSTRY;

SELECT Target_Industry, Defense_Mechanism_Used, COUNT(Defense_Mechanism_Used)
FROM cyber
GROUP BY Target_Industry, Defense_Mechanism_Used 



-- GETTING THE MOST USED Defense_Mechanism_Used USING CTEs AND GROUPING
SELECT Defense_Mechanism_Used, COUNT(*) AS frequency
FROM cyber
GROUP BY Defense_Mechanism_Used
ORDER BY frequency DESC
LIMIT 1;

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

