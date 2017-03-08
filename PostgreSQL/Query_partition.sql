
EXPLAIN SELECT
	COUNT(*)
FROM ac_sale
WHERE 1=1
	AND fact_date >= DATE '2016-01-01' 
	AND fact_date < DATE '2016-03-01'
;

SHOW constraint_exclusion;

SET CONSTRAINT_EXCLUSION = OFF -- checks all partitioned  tables - parent and child; 
SET CONSTRAINT_EXCLUSION = ON; -- check for partitioned and non partitioned tables 
SET CONSTRAINT_EXCLUSION = PARTITION; -- default value