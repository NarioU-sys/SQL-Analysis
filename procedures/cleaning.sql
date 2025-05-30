ALTER TABLE cyber
change COLUMN `Attack Type`  Attacks_types text;

ALTER TABLE cyber
CHANGE COLUMN `Defense Mechanism Used` Defense_Mechanism_Used text;

ALTER TABLE cyber
CHANGE COLUMN `Target Industry` Target_Industry text;

ALTER TABLE cyber
CHANGE COLUMN `Financial Loss (in Million $)` Financial_loss double;

ALTER TABLE cyber
CHANGE COLUMN `Attack Source` Attack_Source text;

ALTER TABLE cyber
CHANGE COLUMN `Incident Resolution Time (in Hours)` IRT int;

ALTER TABLE cyber
change COLUMN `Number of Affected Users` Affected_Users int;


ALTER TABLE cyber
change COLUMN `Security Vulnerability Type` Vulnerability_Type text;

ALTER TABLE cyber
CHANGE COLUMN `Target Industry` Target_Industry text;


changing the table formate
SELECT FORMAT(Affected_Users,0) AS format_Users
FROM cyber;

ALTER TABLE cyber
CHANGE COLUMN `Attack Source` Attack_Source text

UPDATE cyber
SET Affected_Users = FORMAT(Affected_Users,0);