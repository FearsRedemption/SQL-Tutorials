CREATE TABLE income (
	income_name VARCHAR(50),
    amount DECIMAL
);

CREATE TABLE expenses (
	expense_name VARCHAR(50),
    amount DECIMAL
);

INSERT INTO income
VALUES ("orders", 1000000.00), ("merchandise", 50000.00), ("services", 125000.00);

INSERT INTO expenses
VALUES ("wages", -250000.00), ("tax", -50000.00), ("repairs", -15000.00);

SELECT * FROM income;
SELECT * FROM expenses;

-- UNION combines the results of two or more SELECT statements
SELECT * FROM income
UNION
SELECT * FROM expenses;

DROP TABLES income, expenses;

-- UNION --
SELECT * FROM employees -- 6 Columns
UNION						-- THIS WONT WORK BECAUSE THEY DON'T SHARE THE SAME NUMBER OF COLUMNS
SELECT * FROM customers; -- 3 Columns

SELECT first_name, last_name FROM employees
UNION											-- THIS WORKS BECAUSE WE LIMIT THE SEARCH TO THE SAME NUMBER OF COLUMNS PER TABLE
SELECT first_name, last_name FROM customers;

-- Temporarily add Plankton as customer
INSERT INTO customers
VALUES (5, "Sheldon", "Plankton");
SELECT * FROM customers;

SELECT first_name, last_name FROM employees
UNION ALL										-- Now that Plankton is a customer AND employee it will only show him once because by default UNION doesn't allow duplicates so you will want to use UNION ALL
SELECT first_name, last_name FROM customers;

-- REMOVING PLANKTON FROM CUSTOMERS --
DELETE FROM customers
WHERE customer_id = 5;
SELECT * FROM customers;