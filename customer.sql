CREATE TABLE customers (
	customer_id INT primary key,
	first_name VARCHAR(20) not null,
	last_name VARCHAR(30) not null,
	email VARCHAR(30) not null,
	phone VARCHAR(24) not null,
	created_at TIMESTAMP not null,
	updated_at TIMESTAMP null

)

--DROP TABLE customers