CREATE OR REPLACE FUNCTION f_ac_sale_insert_trigger()
RETURNS TRIGGER AS $$
BEGIN
	IF (NEW.fact_date >= DATE '2016-01-01' 
		AND NEW.fact_date < DATE '2016-02-01') THEN
		INSERT INTO ac_sale_2016_01 VALUES (NEW.*);
	ELSEIF (NEW.fact_date >= DATE '2016-02-01' 
		AND NEW.fact_date < DATE '2016-03-01') THEN
		INSERT INTO ac_sale_2016_02 VALUES (NEW.*);
	ELSEIF (NEW.fact_date >= DATE '2016-03-01' 
		AND NEW.fact_date < DATE '2016-04-01') THEN
		INSERT INTO ac_sale_2016_03 VALUES (NEW.*);	
	ELSEIF (NEW.fact_date >= DATE '2016-04-01' 
		AND NEW.fact_date < DATE '2016-05-01') THEN
		INSERT INTO ac_sale_2016_04 VALUES (NEW.*);
	ELSEIF (NEW.fact_date >= DATE '2016-05-01' 
		AND NEW.fact_date < DATE '2016-06-01') THEN
		INSERT INTO ac_sale_2016_05 VALUES (NEW.*);
	ELSEIF (NEW.fact_date >= DATE '2016-06-01' 
		AND NEW.fact_date < DATE '2016-07-01') THEN
		INSERT INTO ac_sale_2016_06 VALUES (NEW.*);
	ELSEIF (NEW.fact_date >= DATE '2016-07-01' 
		AND NEW.fact_date < DATE '2016-08-01') THEN
		INSERT INTO ac_sale_2016_07 VALUES (NEW.*);
	ELSEIF (NEW.fact_date >= DATE '2016-08-01' 
		AND NEW.fact_date < DATE '2016-09-01') THEN
		INSERT INTO ac_sale_2016_08 VALUES (NEW.*);
	ELSEIF (NEW.fact_date >= DATE '2016-09-01' 
		AND NEW.fact_date < DATE '2016-10-01') THEN
		INSERT INTO ac_sale_2016_09 VALUES (NEW.*);
	ELSEIF (NEW.fact_date >= DATE '2016-10-01' 
		AND NEW.fact_date < DATE '2016-11-01') THEN
		INSERT INTO ac_sale_2016_10 VALUES (NEW.*);
	ELSEIF (NEW.fact_date >= DATE '2016-11-01' 
		AND NEW.fact_date < DATE '2016-12-01') THEN
		INSERT INTO ac_sale_2016_11 VALUES (NEW.*);
	ELSEIF (NEW.fact_date >= DATE '2016-12-01' 
		AND NEW.fact_date < DATE '2017-01-01') THEN
		INSERT INTO ac_sale_2016_12 VALUES (NEW.*);														
	ELSE
		RAISE EXCEPTION 'Date range is not defined. Check and apply the fix in f-ac_sale_insert_trigger() function';
END IF;
RETURN NULL;
END;
$$
LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS insert_ac_sale_trigger on ac_sale;

CREATE TRIGGER insert_ac_sale_trigger
BEFORE INSERT ON ac_sale
FOR EACH ROW EXECUTE PROCEDURE f_ac_sale_insert_trigger();

INSERT INTO ac_sale
	VALUES
		(1, DATE ' 2016-01-13', 35, 100)
;

SELECT * FROM ac_sale:
SELECT * FROM only ac_sale;
SELECT * FROM ac_sale_2016_01;