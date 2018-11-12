DROP TABLE if EXISTS individual CASCADE;
DROP TABLE if EXISTS sale CASCADE;
DROP TABLE if EXISTS client CASCADE;
DROP TABLE if EXISTS oorder CASCADE;
DROP TABLE if EXISTS manage CASCADE;
DROP TABLE if EXISTS product CASCADE;
DROP TABLE if EXISTS contain CASCADE;

CREATE TABLE individual (
	id_ind NUMERIC PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	family_name VARCHAR(20) NOT NULL
	);

CREATE TABLE sale (
	id_sale NUMERIC PRIMARY KEY,
	id_ind NUMERIC references individual(id_ind) NOT NULL,
	salary NUMERIC
	);

CREATE TABLE client (
	id_client NUMERIC PRIMARY KEY,
	id_ind NUMERIC references individual(id_ind) NOT NULL,
	company_name VARCHAR(20) NOT NULL
	);

CREATE TABLE oorder (
	id_order NUMERIC PRIMARY KEY,
	order_date DATE NOT NULL 
	);
ALTER TABLE oorder ALTER column order_date SET DEFAULT current_date;

CREATE TABLE manage (
	id_order NUMERIC references oorder(id_order) NOT NULL,
	id_sale NUMERIC references sale(id_sale) NOT NULL,
	id_client NUMERIC references client(id_client) NOT NULL,
	PRIMARY KEY (id_order,id_sale,id_client)
	);

CREATE TABLE product (
	id_product NUMERIC PRIMARY KEY,
	pname VARCHAR(50) NOT NULL,
	unit_price NUMERIC NOT NULL
	);

CREATE TABLE contain (
	id_order NUMERIC references oorder(id_order) NOT NULL,
	id_product NUMERIC references product(id_product) NOT NULL,
	PRIMARY KEY (id_order,id_product),
	quantity INTEGER
	);











