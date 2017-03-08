DROP TRIGGER IF EXISTS insert_ac_sale_trigger on ac_sale;

CREATE RULE ac_sale_2016_01_insert_rule AS
	ON INSERT TO ac_sale WHERE
	(fact_date >= DATE '2016-01-01' AND fact_date < DATE '2016-02-01')
	DO 	
		INSTEAD
			INSERT INTO ac_sale_2016_01 VALUES (NEW.*);
			

INSERT INTO ac_sale VALUES (2, DATE '2016-01-22', 15, 25);

SELECT * FROM ac_sale;
SELECT * FROM ONLY ac_sale;
SELECT * FROM ac_sale_2016_01;