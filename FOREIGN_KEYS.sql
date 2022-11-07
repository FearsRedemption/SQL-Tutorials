-- Think of it as a primary key from one table that can be found in another table
-- Using a FOREIGN KEY you can establish a link between two tables

-- Create customers table with PRIMARY KEY --
CREATE TABLE customers (
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- Inserting info --
INSERT INTO customers (first_name, last_name)
VALUES 
	("Fred", "Fish"),
	("Larry", "Lobster"),
	("Bubble", "Bass");

-- Dropping transactions table for tutorial --
DROP TABLE transactions;

-- Creating transactions table with FOREIGN KEY --
CREATE TABLE transactions (
	transactions_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

-- DROP FOREIGN KEY --
ALTER TABLE transactions
DROP FOREIGN KEY transactions_ibfk_1; -- FOREIGN KEY name --

ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id -- this is to name the constraint --
FOREIGN KEY(customer_id) REFERENCES customers(customer_id);

-- Dropping rows to add information with FOREIGN KEY --
DELETE FROM transactions;

ALTER TABLE transactions
auto_increment = 1000;

INSERT INTO transactions (amount, customer_id)
VALUES (4.99, 3), (2.89, 2), (3.38, 3), (4.99, 1);

-- TRYING TO DELETE FROM customers TABLE WILL CAUSE ERRORS SINCE transactions AND customers ARE LINKED NOW --

SELECT * FROM customers;
SELECT * FROM transactions;