-- getting the totatl number of rows and columns in the cyber table

SELECT count(1) as total_rows
FROM cyber;



-- getting the total number of columns in the cyber table

SELECT count(*) as total_columns
FROM information_schema.columns
WHERE table_name = 'cyber';

-- getting the total number of rows and columns in the country table
-- GETTING NUMBERS OF ATTACKS BY COUNTRY

SELECT Country, count(Attacks_types) as country_attacks
FROM cyber
GROUP BY Country
ORDER BY country_attacks ASC;

-- ATTACK_TYPE BY COUNTRY

SELECT Country, Attacks_types, count(*) as number_of_attack
FROM cyber  
GROUP BY Country, Attacks_types
ORDER BY number_of_attack DESC;

