--SELECT QUERIES--
-- Sort product name (pname) by its price in ASC order
SELECT pname,unit_price FROM product 
	ORDER BY unit_price ASC;


-- How many orders in year 2017?
SELECT COUNT(id_order) AS total_order_2017 FROM oorder 
	WHERE DATE_PART('year',order_date)=2017;


--What is the most expensive product?
SELECT * FROM product 
	WHERE unit_price = (
	SELECT MAX (unit_price) FROM product);


-- List all employees information (name, family name,id_sale,salary) order by name in ASC
SELECT name, family_name, id_sale, salary FROM individual 
	NATURAL JOIN sale
	ORDER BY name ASC;


-- List name and family name of all clients from Lalaland company?
SELECT name, family_name FROM individual AS i 
	INNER JOIN client AS cl ON i.id_ind=cl.id_ind 
	AND company_name ='Lalaland';


-- What is total sum of all orders until today?
SELECT SUM( unit_price * quantity) AS total_sum 
	FROM product NATURAL JOIN contain; 


-- Who are the employee, that monthly salary is higher than our's average salary?
SELECT name, family_name,salary FROM individual AS i, sale AS s 
	WHERE i.id_ind = s.id_ind 
	AND s.salary >(
	SELECT AVG (salary) FROM sale)
	ORDER BY salary ASC;

-- What was sold in Octorber? show total Octorber's sale result?
SELECT DISTINCT pname, quantity,(unit_price*quantity)AS monthly_sum 
	FROM product AS p, contain AS c, oorder AS o
	WHERE p.id_product = c.id_product
	AND o.id_order = c.id_order
	AND DATE_PART('month',order_date)=10;	

--How many order we received from Paris company?
SELECT COUNT (o.id_order) AS total_order_transac
	FROM oorder AS o, manage AS m, client AS c
	WHERE o.id_order=m.id_order
	AND c.id_client =m.id_client
	AND company_name ='Paris'; 


--What is the earliest date of order from Paris company?
SELECT MIN (order_date) AS first_transac_date_w_paris 
	FROM oorder AS o,manage AS m, client AS c
	WHERE o.id_order=m.id_order
	AND c.id_client =m.id_client
	AND company_name ='Paris'; 

-- List number of order of all individual in the list
SELECT i.name, i.family_name, COUNT(m.id_order) AS number_of_order
	FROM individual AS i
	LEFT JOIN client AS cl
	ON i.id_ind = cl.id_ind
	LEFT JOIN manage AS m
	ON cl.id_client = m.id_client
	GROUP BY i.name, i.family_name
	ORDER BY number_of_order DESC;
 

--Who is the client have purchase all products from our company?
SELECT i.id_ind, name, family_name
	FROM individual AS i, client AS cl,manage AS m,contain AS c, product AS p
	WHERE i.id_ind = cl.id_ind
	AND cl.id_client = m.id_client
	AND m.id_order = c.id_order
        GROUP BY i.id_ind
	HAVING COUNT (DISTINCT c.id_product)=(
	SELECT COUNT (p.id_product) FROM product AS p);



-- VIEW --
--Create view to see all clients in Paris company?
CREATE VIEW paris_company_client AS
	(SELECT name, family_name,company_name FROM individual AS i, client AS cl 
	WHERE i.id_ind = cl.id_ind
	AND company_name = 'Paris');

SELECT * FROM paris_company_client;

--Create view of all client have purchase 'Voyage aux etats unis'
CREATE VIEW client_purchase_voyage_auxUSA AS 
	(SELECT name, family_name,company_name,pname FROM individual AS i, client AS cl,manage AS m, contain AS c, product AS p
	WHERE i.id_ind = cl.id_ind
	AND cl.id_client = m.id_client
	AND m.id_order = c.id_order
	AND c.id_product = p.id_product
	AND pname = 'Voyage aux etats unis');

SELECT * FROM client_purchase_voyage_auxUSA;

--Create view of all order in year of 2017.Use check option to avoid all updates, which not in year 2017. 

CREATE VIEW all_order_year_2017 AS
	(SELECT * FROM oorder 
	WHERE DATE_PART ('year',order_date) =2017)
	WITH CHECK OPTION;

SELECT * FROM  all_order_year_2017;



