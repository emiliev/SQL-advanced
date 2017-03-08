
/* RANGE PARTITION */
CREATE TABLE ac_sale(
	location_id INT NOT NULL,
	fact_date DATE NOT NULL,
	max_temperature INT,
	unit_sales INT
);

CREATE TABLE ac_sale_2016_01(
	CHECK (fact_date >= DATE '2016-01-01' 
		AND fact_date< DATE '2016-02-01')
) INHERITS (ac_sale);

CREATE INDEX i_ac_sale_2016_01_fact_date ON ac_sale_2016_01 (fact_date);

CREATE TABLE ac_sale_2016_02(
	CHECK (fact_date >= DATE '2016-02-01' 
		AND fact_date< DATE '2016-03-01')
) INHERITS (ac_sale);

CREATE INDEX i_ac_sale_2016_02_fact_date ON ac_sale_2016_02 (fact_date);

CREATE TABLE ac_sale_2016_03(
	CHECK (fact_date >= DATE '2016-03-01' 
		AND fact_date< DATE '2016-04-01')
) INHERITS (ac_sale);

CREATE INDEX i_ac_sale_2016_03_fact_date ON ac_sale_2016_03 (fact_date);

CREATE TABLE ac_sale_2016_04(
	CHECK (fact_date >= DATE '2016-04-01' 
		AND fact_date< DATE '2016-05-01')
) INHERITS (ac_sale);

CREATE INDEX i_ac_sale_2016_04_fact_date ON ac_sale_2016_04 (fact_date);

CREATE TABLE ac_sale_2016_05(
	CHECK (fact_date >= DATE '2016-04-01' 
		AND fact_date< DATE '2016-05-01')
) INHERITS (ac_sale);

CREATE INDEX i_ac_sale_2016_05_fact_date ON ac_sale_2016_05 (fact_date);

CREATE TABLE ac_sale_2016_06(
	CHECK (fact_date >= DATE '2016-06-01' 
		AND fact_date< DATE '2016-07-01')
) INHERITS (ac_sale);

CREATE INDEX i_ac_sale_2016_06_fact_date ON ac_sale_2016_06 (fact_date);

CREATE TABLE ac_sale_2016_07(
	CHECK (fact_date >= DATE '2016-07-01' 
		AND fact_date< DATE '2016-08-01')
) INHERITS (ac_sale);

CREATE INDEX i_ac_sale_2016_07_fact_date ON ac_sale_2016_07 (fact_date);

CREATE TABLE ac_sale_2016_08(
	CHECK (fact_date >= DATE '2016-08-01' 
		AND fact_date< DATE '2016-09-01')
) INHERITS (ac_sale);

CREATE INDEX i_ac_sale_2016_08_fact_date ON ac_sale_2016_08 (fact_date);

CREATE TABLE ac_sale_2016_09(
	CHECK (fact_date >= DATE '2016-09-01' 
		AND fact_date< DATE '2016-10-01')
) INHERITS (ac_sale);

CREATE INDEX i_ac_sale_2016_09_fact_date ON ac_sale_2016_09 (fact_date);

CREATE TABLE ac_sale_2016_10(
	CHECK (fact_date >= DATE '2016-10-01' 
		AND fact_date< DATE '2016-11-01')
) INHERITS (ac_sale);

CREATE INDEX i_ac_sale_2016_10_fact_date ON ac_sale_2016_10 (fact_date);

CREATE TABLE ac_sale_2016_11(
	CHECK (fact_date >= DATE '2016-11-01' 
		AND fact_date< DATE '2016-12-01')
) INHERITS (ac_sale);

CREATE INDEX i_ac_sale_2016_11_fact_date ON ac_sale_2016_11 (fact_date);

CREATE TABLE ac_sale_2016_12(
	CHECK (fact_date >= DATE '2016-12-01' 
		AND fact_date< DATE '2017-01-01')
) INHERITS (ac_sale);

CREATE INDEX i_ac_sale_2016_12_fact_date ON ac_sale_2016_12 (fact_date);












