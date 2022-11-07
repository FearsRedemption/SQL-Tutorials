-- VIEWS
-- A virtual table based on the result-set of an SQL statement
-- The fields in a view are fileds from one or more real tables in the database
-- They're not real tables, but can be interacted with as if they were

SELECT * FROM employees;

-- CREATE A VIEW --
CREATE VIEW employee_attendance AS
SELECT first_name, last_name
FROM employees;

SELECT * FROM employee_attendance
ORDER BY last_name ASC;

-- DROP A VIEW --
DROP VIEW employee_attendance;

-- Another example
ALTER TABLE customers
ADD COLUMN email VARCHAR(50);

UPDATE customers
SET email = "FFish@gmail.com"
WHERE customer_id = 1;

UPDATE customers
SET email = "LLobster@gmail.com"
WHERE customer_id = 2;

UPDATE customers
SET email = "BBass@gmail.com"
WHERE customer_id = 3;

UPDATE customers
SET email = "PPuff@gmail.com"
WHERE customer_id = 4;

SELECT * FROM customers;

CREATE VIEW customer_emails AS
SELECT email
FROM customers;

SELECT * FROM customer_emails;

INSERT INTO customers
VALUES (5, "Pearl", "Krabs", NULL, "PKrabs@gmail.com");

SELECT * FROM customer_emails; -- The view was updated automatically when the new customer was added
SELECT * FROM customers;