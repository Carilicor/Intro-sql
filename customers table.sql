--SELECT customer_id, first_name, last_name, email, phone, created_at, updated_at
--	FROM public.customers;
	
--INSERT INTO customers
--	(customer_id, first_name, last_name, email, phone)
--VALUES
--	(2, 'Alice', 'Hammett', 'Alicelicor@gmail.com', '7868667444')
CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	first_name varchar(20) NOT NULL,
	last_name varchar(30) NOT NULL,
	email varchar(255) NOT NULL,
	phone varchar(10) NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMP NULL
)

--drop table customers