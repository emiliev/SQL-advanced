CREATE TABLE ac_sale_by_energy_rating(
	location_id INT NOT NULL,
	energy_rating INT NOT NULL,
	year_month character varying(7) NOT NULL,
	unit_sales INT
);

/* Child partition tables - list partition , index on partition key (energy_rating) */

CREATE TABLE ac_sale_1_star(
	CHECK (energy_rating = 1)
) INHERITS (ac_sale_by_energy_rating);

CREATE INDEX i_ac_sale_by_energy_rating_1 ON ac_sale_1_star (energy_rating);

CREATE TABLE ac_sale_2_star(
	CHECK (energy_rating = 2)
) INHERITS (ac_sale_by_energy_rating);

CREATE INDEX i_ac_sale_by_energy_rating_2 ON ac_sale_2_star (energy_rating);

CREATE TABLE ac_sale_3_star(
	CHECK (energy_rating = 3)
) INHERITS (ac_sale_by_energy_rating);

CREATE INDEX i_ac_sale_by_energy_rating_3 ON ac_sale_3_star (energy_rating);

CREATE TABLE ac_sale_4_star(
	CHECK (energy_rating = 4)
) INHERITS (ac_sale_by_energy_rating);

CREATE INDEX i_ac_sale_by_energy_rating_4 ON ac_sale_4_star (energy_rating);

CREATE TABLE ac_sale_5_star(
	CHECK (energy_rating = 5)
) INHERITS (ac_sale_by_energy_rating);

CREATE INDEX i_ac_sale_by_energy_rating_5 ON ac_sale_5_star (energy_rating);

CREATE TABLE ac_sale_6_star(
	CHECK (energy_rating = 6)
) INHERITS (ac_sale_by_energy_rating);

CREATE INDEX i_ac_sale_by_energy_rating_6 ON ac_sale_6_star (energy_rating);

CREATE TABLE ac_sale_7_star(
	CHECK (energy_rating = 7)
) INHERITS (ac_sale_by_energy_rating);

CREATE INDEX i_ac_sale_by_energy_rating_7 ON ac_sale_7_star (energy_rating);

CREATE TABLE ac_sale_8_star(
	CHECK (energy_rating = 8)
) INHERITS (ac_sale_by_energy_rating);

CREATE INDEX i_ac_sale_by_energy_rating_8 ON ac_sale_8_star (energy_rating);

CREATE TABLE ac_sale_9_star(
	CHECK (energy_rating = 9)
) INHERITS (ac_sale_by_energy_rating);

CREATE INDEX i_ac_sale_by_energy_rating_9 ON ac_sale_9_star (energy_rating);

CREATE TABLE ac_sale_10_star(
	CHECK (energy_rating = 10)
) INHERITS (ac_sale_by_energy_rating);

CREATE INDEX i_ac_sale_by_energy_rating_10 ON ac_sale_10_star (energy_rating);

CREATE TABLE ac_sale_11_star(
	CHECK (energy_rating = 11)
) INHERITS (ac_sale_by_energy_rating);

CREATE INDEX i_ac_sale_by_energy_rating_11 ON ac_sale_11_star (energy_rating);

CREATE TABLE ac_sale_12_star(
	CHECK (energy_rating = 12)
) INHERITS (ac_sale_by_energy_rating);

CREATE INDEX i_ac_sale_by_energy_rating_12 ON ac_sale_12_star (energy_rating);

