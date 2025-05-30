-- getting the common attacks in the cyber table
-- Mosty used attack types 

SELECT Country,Attacks_types, count(*) as attack_number
FROM cyber
GROUP BY Country, Attacks_types
ORDER BY attack_number DESC; 

-- Attack source and the Attack types Used 
SELECT Attack_Source, Attacks_types, count(*) as ato
FROM cyber
GROUP BY Attack_Source, Attacks_types
ORDER BY ato DESC;

--  AttackSource Used by  Country
SELECT Attack_Source, Country, count(Attack_Source) as ato
FROM cyber
GROUP BY Attack_Source, Country
ORDER BY ato DESC;







