-- Setting up to show that some transactions don't have customer ids and some customers haven't made purchases --
INSERT INTO transactions (amount, customer_id)
VALUES (1.00, NULL);

INSERT INTO customers (first_name, last_name)
VALUES ("Poppy", "Puff");

SELECT * FROM transactions;
SELECT * FROM customers;

-- INNER JOIN: Based on what these two tables have in common (aka matching customer_id) --
SELECT *
FROM transactions INNER JOIN customers -- FROM left_table JOINED BY right_table
ON transactions.customer_id = customers.customer_id;

-- INNER JOIN but selecting specifics --
SELECT transactions_id, amount, first_name, last_name
FROM transactions INNER JOIN customers
ON transactions.customer_id = customers.customer_id;

-- LEFT JOIN: Displays everything from the left --
SELECT *
FROM transactions LEFT JOIN customers
ON transactions.customer_id = customers.customer_id;
-- With this last one you can see entire information from the left but pulls in any matching data from the right --

-- RIGHT JOIN: Displays everything from the right --
SELECT *
FROM transactions RIGHT JOIN customers
ON transactions.customer_id = customers.customer_id;
-- Same as before but right to left --

-- INFORMATION SELECTED BUT DOESN'T MATCH CRITERIA WILL SHOW UP AS NULL --