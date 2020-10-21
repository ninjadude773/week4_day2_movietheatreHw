CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY, 
	rewards_number SERIAL
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_data VARCHAR(150)
);

CREATE TABLE concession(
	item_id SERIAL PRIMARY KEY,
	total_costs NUMERIC(5,2),
	item_name VARCHAR(100),
	customer_id SERIAL,
);
CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	transaction_number SERIAL
	order_date VARCHAR(50),
	subtotal NUMERIC(8,2),
	customer_id SERIAL FOREIGN KEY,
);	
CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_costs NUMERIC(5,2)
	movie_title VARCHAR(50),
	movie_genre VARCHAR (150)
	showing_date VARCHAR(50)
);